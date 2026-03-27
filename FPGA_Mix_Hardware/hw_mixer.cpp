#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "hw_mixer.h"

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
) {
    #pragma HLS INTERFACE axis port=stream_in_0
    #pragma HLS INTERFACE axis port=stream_in_1
    #pragma HLS INTERFACE axis port=stream_in_2
    #pragma HLS INTERFACE axis port=stream_in_3
    #pragma HLS INTERFACE axis port=stream_in_4
    #pragma HLS INTERFACE axis port=stream_in_5
    #pragma HLS INTERFACE axis port=stream_in_6
    #pragma HLS INTERFACE axis port=stream_in_7
    #pragma HLS INTERFACE ap_none port=switches
    #pragma HLS INTERFACE axis port=mix_out
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS ARRAY_PARTITION variable=recip_sqrt_lut complete

    while(1) {

    // Read all 8 streams
    audio_stream s0;
    audio_stream s1;
    audio_stream s2;
    audio_stream s3;
    audio_stream s4;
    audio_stream s5;
    audio_stream s6;
    audio_stream s7;
    stream_in_0.read(s0);
    stream_in_1.read(s1);
    stream_in_2.read(s2);
    stream_in_3.read(s3);
    stream_in_4.read(s4);
    stream_in_5.read(s5);
    stream_in_6.read(s6);
    stream_in_7.read(s7);

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
    out_pkt.last = 0;
    if (s0.last == 1 || s1.last == 1 || s2.last == 1 || s3.last == 1 || s4.last == 1 || s5.last == 1 || s6.last == 1 || s7.last == 1) {
            out_pkt.last = 1;
            mix_out.write(out_pkt);
            break;
        }
    mix_out.write(out_pkt);
    }
}
