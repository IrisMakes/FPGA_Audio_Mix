#ifndef HW_MIXER_H
#define HW_MIXER_H

#include "ap_axi_sdata.h"

typedef ap_axis<128, 1, 1, 1> audio_stream;
typedef ap_axis<32, 1, 1, 1> audio_out;

// 256/sqrt(0-8) this is used so we can later use multiplication intead of division and shift the bits by 8
static const short recip_sqrt_lut[9] = {
    0, 256, 181, 148, 128, 114, 105, 97, 91
};

void mixer(
    hls::stream<audio_stream>& stream_in,
    ap_uint<8> switches,
    hls::stream<audio_stream>& mix_out
);

#endif