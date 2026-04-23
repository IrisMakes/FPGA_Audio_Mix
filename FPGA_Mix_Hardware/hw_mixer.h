#ifndef HW_MIXER_H
#define HW_MIXER_H

#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef ap_axis<128, 0, 0, 0> audio_stream;
typedef ap_axis<32, 0, 1, 0>  audio_out;

void mixer(
    hls::stream<audio_stream>& stream_in,
    ap_uint<8> switches,
    hls::stream<audio_out>& mix_out
);

#endif
