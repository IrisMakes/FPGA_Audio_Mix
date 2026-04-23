#include "ap_axi_sdata.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include "hw_mixer.h"
#include "comp_lut.h"   // gain_t + comp_gain_lut now ap_fixed

// --- fixed-point types ---
typedef ap_fixed<18, 2> coeff_t;   // same shape as gain_t
typedef ap_int<32>      sample_t;  // wide signed accumulator for stem sums

// attack/release time constants at 44.1kHz, written as decimals
static const coeff_t ATTACK_COEFF  = 0.00226;   // ~10ms
static const coeff_t RELEASE_COEFF = 0.000151;  // ~150ms

// sqrt LUT: 1/sqrt(n) for n = 0..8, stored as gain_t
static const gain_t recip_sqrt_lut_fx[9] = {
    0.0,       1.0,       0.707107,  0.577350,
    0.500000,  0.447214,  0.408248,  0.377964,
    0.353553
};

void mixer(
    hls::stream<audio_stream>& stream_in,
    ap_uint<8> switches,
    hls::stream<audio_out>& mix_out
) {
    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE ap_none port=switches
    #pragma HLS INTERFACE axis port=mix_out
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS ARRAY_PARTITION variable=recip_sqrt_lut_fx complete

    static gain_t         current_gain = 1.0;
    static const sample_t T_LIM        = 32767;

    audio_stream sample;
    sample_t mix_int = 0;
    int active = 0;

    while(1)
    {
        #pragma HLS LOOP_TRIPCOUNT min=44100 max=26460000 avg=7938000
        mix_int = 0;
        active = 0;
        sample = stream_in.read();
        ap_int<16> s0 = sample.data(15,0);
        ap_int<16> s1 = sample.data(31,16);
        ap_int<16> s2 = sample.data(47,32);
        ap_int<16> s3 = sample.data(63,48);
        ap_int<16> s4 = sample.data(79,64);
        ap_int<16> s5 = sample.data(95,80);
        ap_int<16> s6 = sample.data(111,96);
        ap_int<16> s7 = sample.data(127,112);

        if (switches[0]) { mix_int += s0; active++; }
        if (switches[1]) { mix_int += s1; active++; }
        if (switches[2]) { mix_int += s2; active++; }
        if (switches[3]) { mix_int += s3; active++; }
        if (switches[4]) { mix_int += s4; active++; }
        if (switches[5]) { mix_int += s5; active++; }
        if (switches[6]) { mix_int += s6; active++; }
        if (switches[7]) { mix_int += s7; active++; }

        // attenuate by 1/sqrt(active)
        if (active > 0)
        {
            mix_int = (sample_t)(mix_int * recip_sqrt_lut_fx[active]);
        }

        // compressor: soft-knee gain LUT + attack/release smoothing
        sample_t mag = (mix_int < 0) ? (sample_t)-mix_int : mix_int;
        int idx = (int)(mag >> COMP_MAG_SHIFT);
        if (idx >= COMP_LUT_SIZE) idx = COMP_LUT_SIZE - 1;
        gain_t target = comp_gain_lut[idx];   // direct read, no conversion

        // one-pole smoothing
        gain_t  diff  = target - current_gain;
        coeff_t coeff = (diff < 0) ? ATTACK_COEFF : RELEASE_COEFF;
        current_gain += diff * coeff;

        mix_int = (sample_t)(mix_int * current_gain);

        // brick-wall limiter at 0dBFS
        if (mix_int >  T_LIM) mix_int =  T_LIM;
        if (mix_int < -T_LIM) mix_int = -T_LIM;

        audio_out out_pkt;
        out_pkt.data(15, 0)  = (ap_int<16>)mix_int;
        out_pkt.data(31, 16) = 0;
        out_pkt.last = sample.last;
        out_pkt.id   = 0;
        mix_out.write(out_pkt);

        if(out_pkt.last)
        {
            break;
        }
    }
}
