#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "hw_mixer.h"
#include <cstdio>

/* ---------- configure the two input streams here ---------- */

/* stream A goes on switch 0, stream B goes on switch 1 */
static const short stream_a[] = {
    1000,  2000,  3000,  4000,  5000,  6000,  7000,  8000,
    7000,  6000,  5000,  4000,  3000,  2000,  1000,     0,
   -1000, -2000, -3000, -4000, -5000, -6000, -7000, -8000,
   -7000, -6000, -5000, -4000, -3000, -2000, -1000,     0
};

static const short stream_b[] = {
     500,   500,   500,   500,   500,   500,   500,   500,
     500,   500,   500,   500,   500,   500,   500,   500,
    -500,  -500,  -500,  -500,  -500,  -500,  -500,  -500,
    -500,  -500,  -500,  -500,  -500,  -500,  -500,  -500
};

static const int NUM_SAMPLES = sizeof(stream_a) / sizeof(short);

/* which switches to enable — 0x03 = both streams on */
static const ap_uint<8> SWITCHES = 0x03;

/* ---------- helpers ---------- */

/* pack 8 int16 samples into a 128-bit AXI word */
static audio_stream pack_word(short s0, short s1, short s2, short s3,
                              short s4, short s5, short s6, short s7,
                              bool last)
{
    audio_stream w;
    ap_uint<128> data = 0;
    short lanes[8] = {s0, s1, s2, s3, s4, s5, s6, s7};
    for (int i = 0; i < 8; i++) {
        ap_uint<16> u = (ap_uint<16>)(ap_int<16>)lanes[i];
        data.range(16*i + 15, 16*i) = u;
    }
    w.data = data;
    w.keep = -1;
    w.strb = -1;
    w.last = last ? 1 : 0;
    return w;
}

/* extract the mono mix from an output word (bits 15:0) */
static int unpack_sample(const audio_out& w)
{
    ap_int<16> s = w.data.range(15, 0);
    return (int)s;
}

/* ---------- main ---------- */

int main()
{
    hls::stream<audio_stream> in_stream;
    hls::stream<audio_out>    out_stream;

    /* build the input stream: stream_a on lane 0, stream_b on lane 1, rest 0 */
    for (int n = 0; n < NUM_SAMPLES; n++) {
        bool last = (n == NUM_SAMPLES - 1);
        in_stream.write(pack_word(stream_a[n], stream_b[n],
                                  0, 0, 0, 0, 0, 0, last));
    }

    /* run the DUT */
    mixer(in_stream, SWITCHES, out_stream);

    /* print a clean table: inputs on the left, output on the right */
    printf("switches = 0x%02X\n", (unsigned)SWITCHES);
    printf("\n");
    printf("   n  |  stream_a  stream_b  |   output\n");
    printf("------+----------------------+---------\n");

    int errors = 0;
    for (int n = 0; n < NUM_SAMPLES; n++) {
        if (out_stream.empty()) {
            printf("%4d  |  missing output packet\n", n);
            errors++;
            continue;
        }
        audio_out w = out_stream.read();
        int out = unpack_sample(w);
        printf("%4d  |  %7d   %7d   |  %7d", n, stream_a[n], stream_b[n], out);
        if (n == NUM_SAMPLES - 1) {
            printf("   <-- TLAST %s", (w.last == 1) ? "OK" : "MISSING!");
            if (w.last != 1) errors++;
        }
        printf("\n");
    }

    if (!out_stream.empty()) {
        printf("\nWARNING: extra packets left in output stream\n");
        errors++;
    }

    printf("\n%s\n", errors == 0 ? "done." : "errors detected.");
    return errors;
}
