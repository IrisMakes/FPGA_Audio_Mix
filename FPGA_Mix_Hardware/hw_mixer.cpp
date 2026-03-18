#include "ap_axi_sdata.h"
#include "hls_stream.h"

/* python implementation
target_size = max(len(dataA),len(dataB), len(dataC))
dataA = np.resize(dataA, target_size)
dataB = np.resize(dataB, target_size)
dataC = np.resize(dataC, target_size)
mix = (dataA + dataB + dataC)
mix = (mix - np.min(mix)) / (np.max(mix) - np.min(mix))
print(np.max(mix)) */

/* axi tutorial
void example(hls::stream< ap_axis<32,2,5,6> > &A,
	     hls::stream< ap_axis<32,2,5,6> > &B)
{
#pragma HLS INTERFACE axis port=A
#pragma HLS INTERFACE axis port=B
#pragma HLS INTERFACE s_axilite port=return

	ap_axis<32,2,5,6> tmp;
    while(1)
    {
	A.read(tmp);
	tmp.data = tmp.data.to_int() + 5;
	B.write(tmp);
     if(tmp.last)
     {
         break;
     }
    }
    

}*/

typedef ap_axiu<32, 0, 0, 0> audio_stream;

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
    ap_uint<8>& switches,
    int& mix_out
) {
    #pragma HLS INTERFACE axis port=stream_in_0
    #pragma HLS INTERFACE axis port=stream_in_1
    #pragma HLS INTERFACE axis port=stream_in_2
    #pragma HLS INTERFACE axis port=stream_in_3
    #pragma HLS INTERFACE axis port=stream_in_4
    #pragma HLS INTERFACE axis port=stream_in_5
    #pragma HLS INTERFACE axis port=stream_in_6
    #pragma HLS INTERFACE axis port=stream_in_7
    #pragma HLS INTERFACE ap_stable port=switches
    #pragma HLS INTERFACE ap_vld    port=mix_out
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS ARRAY_PARTITION variable=recip_sqrt_lut complete

    // Read all 8 streams
    audio_stream s0 = stream_in_0.read();
    audio_stream s1 = stream_in_1.read();
    audio_stream s2 = stream_in_2.read();
    audio_stream s3 = stream_in_3.read();
    audio_stream s4 = stream_in_4.read();
    audio_stream s5 = stream_in_5.read();
    audio_stream s6 = stream_in_6.read();
    audio_stream s7 = stream_in_7.read();

    // Count active switches and accumulate mix
    int active = 0;
    int mix = 0;

    #pragma HLS UNROLL
    if (switches[0]) { mix += s0.data.to_int(); active++; }
    if (switches[1]) { mix += s1.data.to_int(); active++; }
    if (switches[2]) { mix += s2.data.to_int(); active++; }
    if (switches[3]) { mix += s3.data.to_int(); active++; }
    if (switches[4]) { mix += s4.data.to_int(); active++; }
    if (switches[5]) { mix += s5.data.to_int(); active++; }
    if (switches[6]) { mix += s6.data.to_int(); active++; }
    if (switches[7]) { mix += s7.data.to_int(); active++; }

    // Multiply by reciprocal, shift back down
    mix_out = (active > 0) ? (mix * recip_sqrt_lut[active]) >> 8 : 0;
}