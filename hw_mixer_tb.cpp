#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "hw_mixer.h"
#include <cstdio>
#include <cstdlib>
#include <cmath>

/* helper: pack 8 int16 samples into a 128-bit AXI word */
static audio_stream pack_word(short s[8], bool last)
{
    audio_stream w;
    ap_uint<128> data = 0;
    for (int i = 0; i < 8; i++) {
        ap_uint<16> u = (ap_uint<16>)(ap_int<16>)s[i];  // sign-preserving cast
        data.range(16*i + 15, 16*i) = u;
    }
    w.data = data;
    w.keep = -1;
    w.strb = -1;
    w.last = last ? 1 : 0;
    //w.id   = 0;
    //w.dest = 0;
    //w.user = 0;
    return w;
}

/* helper: extract the mono mix from an output word (bits 15:0) */
static int unpack_sample(const audio_out& w)
{
    ap_int<16> s = w.data.range(15, 0);
    return (int)s;
}

/* run a single test and report pass/fail */
static int run_test(const char* name,
                    const short stems[][8],       // [num_samples][8 stems]
                    int num_samples,
                    ap_uint<8> switches,
                    int expected[],                // expected output samples (or NULL)
                    int tolerance,
                    int peak_limit)                // max |output|, -1 to skip
{
    hls::stream<audio_stream> in_stream;
    hls::stream<audio_out>    out_stream;

    /* build input stream */
    for (int n = 0; n < num_samples; n++) {
        short packed[8];
        for (int k = 0; k < 8; k++) packed[k] = stems[n][k];
        in_stream.write(pack_word(packed, n == num_samples - 1));
    }

    /* run the DUT */
    mixer(in_stream, switches, out_stream);

    /* check output */
    int errors = 0;
    int max_abs = 0;
    int last_seen_on_final = 0;

    for (int n = 0; n < num_samples; n++) {
        if (out_stream.empty()) {
            printf("  [FAIL] sample %d: output stream empty\n", n);
            errors++;
            continue;
        }
        audio_out w = out_stream.read();
        int got = unpack_sample(w);
        int a = (got < 0) ? -got : got;
        if (a > max_abs) max_abs = a;

        if (n == num_samples - 1) last_seen_on_final = (w.last == 1);

        if (expected != NULL) {
            int diff = got - expected[n];
            if (diff < 0) diff = -diff;
            if (diff > tolerance) {
                if (errors < 5) {  // only print first few
                    printf("  [FAIL] sample %d: got %d, expected %d (diff %d)\n",
                           n, got, expected[n], diff);
                }
                errors++;
            }
        }
    }

    if (peak_limit >= 0 && max_abs > peak_limit) {
        printf("  [FAIL] peak output %d exceeds limit %d\n", max_abs, peak_limit);
        errors++;
    }

    if (!last_seen_on_final) {
        printf("  [FAIL] TLAST not set on final output packet\n");
        errors++;
    }

    printf("%s: %s  (peak=%d, errors=%d)\n",
           name, errors == 0 ? "PASS" : "FAIL", max_abs, errors);
    return errors;
}

/* ---------- Test 1: single quiet stem should pass through unchanged ---------- */
static int test_passthrough()
{
    const int N = 64;
    short stems[N][8];
    int expected[N];
    for (int n = 0; n < N; n++) {
        short v = (short)(4000 * sin(2.0 * M_PI * n / 32.0));  // quiet sine
        for (int k = 0; k < 8; k++) stems[n][k] = 0;
        stems[n][0] = v;
        expected[n] = v;  // 1 stem, 1/sqrt(1)=1, well below threshold -> unchanged
    }
    /* tolerance 2 allows for Q8 rounding */
    return run_test("Test 1 (passthrough)", stems, N, 0x01, expected, 2, -1);
}

/* ---------- Test 2: 4 identical quiet stems -> ~2x amplitude ---------- */
static int test_sqrt_mixing()
{
    const int N = 64;
    short stems[N][8];
    int expected[N];
    for (int n = 0; n < N; n++) {
        short v = (short)(3000 * sin(2.0 * M_PI * n / 32.0));
        for (int k = 0; k < 8; k++) stems[n][k] = 0;
        stems[n][0] = stems[n][1] = stems[n][2] = stems[n][3] = v;
        /* sum = 4v; 4v * (256/sqrt(4)) >> 8 = 4v * 128 >> 8 = 2v, still below knee */
        expected[n] = 2 * v;
    }
    return run_test("Test 2 (sqrt mixing)", stems, N, 0x0F, expected, 4, -1);
}

/* ---------- Test 3: overload should never exceed 0dBFS ---------- */
static int test_limiter()
{
    const int N = 128;
    short stems[N][8];
    /* 8 loud correlated stems -> would massively exceed int16 without the chain */
    for (int n = 0; n < N; n++) {
        short v = (short)(30000 * sin(2.0 * M_PI * n / 16.0));
        for (int k = 0; k < 8; k++) stems[n][k] = v;
    }
    /* don't check exact values, just verify nothing escapes 0dBFS */
    return run_test("Test 3 (limiter ceiling)", stems, N, 0xFF, NULL, 0, 32767);
}

/* ---------- Test 4: step response - verify attack and release shape ---------- */
static int test_envelope()
{
    const int N = 4410;  // ~100ms at 44.1kHz
    short stems[N][8];
    for (int n = 0; n < N; n++) {
        for (int k = 0; k < 8; k++) stems[n][k] = 0;
        /* loud burst for first half, silence for second half */
        if (n < N/2) {
            stems[n][0] = 25000;  // loud DC to exercise attack
        } else {
            stems[n][0] = 0;
        }
    }
    /* no expected[] - we print the envelope for visual inspection */
    hls::stream<audio_stream> in_stream;
    hls::stream<audio_out>    out_stream;
    for (int n = 0; n < N; n++) {
        short packed[8];
        for (int k = 0; k < 8; k++) packed[k] = stems[n][k];
        in_stream.write(pack_word(packed, n == N - 1));
    }
    mixer(in_stream, 0x01, out_stream);

    printf("Test 4 (envelope) — output samples at key points:\n");
    int checkpoints[] = {0, 10, 50, 200, 1000, 2200, 2205, 2250, 2500, 3000, N-1};
    int n_check = sizeof(checkpoints)/sizeof(int);
    int ci = 0;
    for (int n = 0; n < N; n++) {
        audio_out w = out_stream.read();
        if (ci < n_check && n == checkpoints[ci]) {
            printf("  n=%5d  out=%6d\n", n, unpack_sample(w));
            ci++;
        }
    }
    printf("  (expect: gain pulls down over first ~500 samples,\n"
           "   recovers over ~5000 samples after burst ends at n=2205)\n");
    return 0;
}

int main()
{
    int fails = 0;
    fails += test_passthrough();
    fails += test_sqrt_mixing();
    fails += test_limiter();
    test_envelope();

    printf("\n==================\n");
    printf("%s  (%d failures)\n", fails == 0 ? "ALL TESTS PASSED" : "TESTS FAILED", fails);
    printf("==================\n");
    return fails;
}
