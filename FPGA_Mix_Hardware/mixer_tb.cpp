#include <iostream>
#include <iterator>
#include <stdlib.h>
#include <time.h>
#include "hw_mixer.h"

#ifdef __SDSCC__
#include "sds_lib.h"
#else
#define sds_alloc malloc
#define sds_free free
#endif

void sw_mixer(int *in1, int *in2, int *in3, int *in4, int *in5, int *in6, int *in7, int *in8, int *out, ap_uint<8> switches, int dim)
{
    for(int i = 0; i < dim; i++)
    {
        int active = 0;
        out[i] = 0;
        if(switches[0]) { out[i] += in1[i]; active++;}
        if(switches[1]) { out[i] += in2[i]; active++;}
        if(switches[2]) { out[i] += in3[i]; active++;}
        if(switches[3]) { out[i] += in4[i]; active++;}
        if(switches[4]) { out[i] += in5[i]; active++;}
        if(switches[5]) { out[i] += in6[i]; active++;}
        if(switches[6]) { out[i] += in7[i]; active++;}
        if(switches[7]) { out[i] += in8[i]; active++;}
        out[i] = out[i] * recip_sqrt_lut[active] >> 8;
    }
}

int main(int argc, char** argv)
{
    size_t N = 2000;
    int *in1 = (int *) sds_alloc(sizeof(int) * N);
    int *in2 = (int *) sds_alloc(sizeof(int) * N);
    int *in3 = (int *) sds_alloc(sizeof(int) * N);
    int *in4 = (int *) sds_alloc(sizeof(int) * N);
    int *in5 = (int *) sds_alloc(sizeof(int) * N);
    int *in6 = (int *) sds_alloc(sizeof(int) * N);
    int *in7 = (int *) sds_alloc(sizeof(int) * N);
    int *in8 = (int *) sds_alloc(sizeof(int) * N);
    int *sw_result = (int *) malloc(sizeof(int) * N);
    hls::stream<audio_stream> in_stream1;
    hls::stream<audio_out> out_stream;
    audio_out hw_result;

    if( (in1 == NULL) || (in2 == NULL) || (in3 == NULL) || (in4 == NULL) || (in5 == NULL) || (in6 == NULL) || (in7 == NULL) || (in8 == NULL) || (sw_result == NULL))
        {
            std::cout << "TEST FAILED : Failed to allocate memory" << std::endl;
            return -1;
        }
    
    bool match = true;

    for (int i = 0; i < N; i++) {
        in1[i] = rand() % 1000;
        in2[i] = rand() % 1000;
        in3[i] = rand() % 1000;
        in4[i] = rand() % 1000;
        in5[i] = rand() % 1000;
        in6[i] = rand() % 1000;
        in7[i] = rand() % 1000;
        in8[i] = rand() % 1000;
        sw_result[i] = 0;
    }

    sw_mixer(in1, in2, in3, in4, in5, in6, in7, in8, sw_result, 0x7, N);
    
    for(int i = 0; i < N; i++) {
        audio_stream sample1;
        sample1.data = in1[i] + (in2[i] << 16) + ((ap_int<128>)in3[i] << 32) + ((ap_int<128>)in4[i] << 48) + ((ap_int<128>)in5[i] << 64) + (((ap_int<128>)in6[i] << 80)) + ((ap_int<128>)in7[i] << 96) + ((ap_int<128>)in8[i] << 112);
        sample1.keep = -1;
        sample1.strb = 1;
        sample1.last = (i == N - 1) ? 1 : 0;

        in_stream1.write(sample1);
    }

    ap_uint<7> placeholder = 0x7;
    mixer(in_stream1, placeholder, out_stream);

    int errors = 0;
    int i = 0;
    do {
    {
        out_stream.read(hw_result);
        if (hw_result.data != sw_result[i]) {
            std::cout << "MISMATCH at beat " << i
                      << ": got " << hw_result.data
                      << ", expected " << sw_result[i] << "\n";
            errors++;
        }
        i++;
    }
    }while (!hw_result.last);

    if (errors == 0)
        std::cout << "TEST PASSED\n";
    else
        std::cout << "TEST FAILED: " << errors << " error(s)\n";

    return errors;  // Non-zero = failure signals to Vitis
}