#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "hw_mixer.h"
#include "comp_lut.h"

#define ATTACK_COEFF   74       // ~10ms  at 44.1kHz, Q15
#define RELEASE_COEFF   5       // ~150ms at 44.1kHz, Q15

void mixer(
    hls::stream<audio_stream>& stream_in,
    ap_uint<8> switches,
    hls::stream<audio_out>& mix_out
) {
    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE ap_none port=switches
    #pragma HLS INTERFACE axis port=mix_out
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS ARRAY_PARTITION variable=recip_sqrt_lut complete

    static int current_gain_q16 = 65536;   // Q16, unity gain
    static const int T_LIM = 32767;        // brick-wall limiter threshold (0dBFS)

    audio_stream sample;
    int mix_int = 0;
    int active = 0;

    while(1)
    {
        #pragma HLS PIPELINE
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

        // attenuate by 1/sqrt(active) to keep perceived loudness consistent
        if (active > 0)
        {
            mix_int = (mix_int * (int)recip_sqrt_lut[active]) >> 8;
        }

        // compressor: soft-knee gain LUT + attack/release smoothing
        int mag = (mix_int < 0) ? -mix_int : mix_int;
        int idx = mag >> COMP_MAG_SHIFT;
        if (idx >= COMP_LUT_SIZE) idx = COMP_LUT_SIZE - 1;
        int target_q16 = (int)comp_gain_lut[idx] << 8;    // promote Q8 LUT to Q16

        // one-pole smoothing: fast toward lower gain (attack), slow toward higher (release)
        int diff  = target_q16 - current_gain_q16;
        int coeff = (diff < 0) ? ATTACK_COEFF : RELEASE_COEFF;
        current_gain_q16 += (diff * coeff) >> 15;

        int gain_q8 = current_gain_q16 >> 8;              // back to Q8 for the apply
        mix_int = (mix_int * gain_q8) >> 8;

        // brick-wall limiter at 0dBFS
        if (mix_int >  T_LIM) mix_int =  T_LIM;
        if (mix_int < -T_LIM) mix_int = -T_LIM;

        // build and send output packet
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