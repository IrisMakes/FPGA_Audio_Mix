#ifndef HW_MIXER_H
#define HW_MIXER_H

#include "ap_axi_sdata.h"

typedef ap_axiu<32, 2, 5, 6> audio_stream;

// 256/sqrt(0-8) this is used so we can later use multiplication intead of division and shift the bits by 8
static const int recip_sqrt_lut[9] = {
    0, 256, 181, 148, 128, 114, 105, 97, 91
};

void mixer(
    hls::stream<audio_stream>& stream_in_0,
    hls::stream<audio_stream>& stream_in_1,
    hls::stream<audio_stream>& stream_in_2,
    hls::stream<audio_stream>& stream_in_3,
    hls::stream<audio_stream>& stream_in_4,
    hls::stream<audio_stream>& stream_in_5,
    hls::stream<audio_stream>& stream_in_6,
    hls::stream<audio_stream>& stream_in_7,
    ap_uint<8> switches,
    hls::stream<audio_stream>& mix_out
);

#endif