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
    ap_uint<8>& switches,
    hls::stream<audio_stream>& mix_out
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
    #pragma HLS INTERFACE axis port=mix_out
    #pragma HLS INTERFACE s_axilite port=return
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

    // initialize before accumulating
    int mix_int = 0;
    int active = 0;

    if (switches[0]) { mix_int += s0.data.to_int(); active++; }
    if (switches[1]) { mix_int += s1.data.to_int(); active++; }
    if (switches[2]) { mix_int += s2.data.to_int(); active++; }
    if (switches[3]) { mix_int += s3.data.to_int(); active++; }
    if (switches[4]) { mix_int += s4.data.to_int(); active++; }
    if (switches[5]) { mix_int += s5.data.to_int(); active++; }
    if (switches[6]) { mix_int += s6.data.to_int(); active++; }
    if (switches[7]) { mix_int += s7.data.to_int(); active++; }

    // Build output packet and write to stream
    audio_stream out_pkt;
    out_pkt.data = (active > 0) ? (int64_t)mix_int * recip_sqrt_lut[active] >> 8 : 0;
    out_pkt.keep = -1;
    out_pkt.strb = -1;
    out_pkt.last = 1;
    mix_out.write(out_pkt);
}
