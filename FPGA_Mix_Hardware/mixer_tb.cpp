#include <iostream>
#include <stdlib.h>
#include <time.h>
#include "hw_mixer.h"

#ifdef __SDSCC__
#include "sds_lib.h"
#else
#define sds_alloc malloc
#define sds_free free
#endif

#define DATA_SIZE

void sw_mixer(int *in1, int *in2, int *in3, int *in4, int *in5, int *in6, int *in7, int *in8, int *out, uint8_t switches, int dim)
{
    for(int i = 0; i < dim; i++)
    {
        int active = 0;
        out[i] = 0;
        if((switches & 1) != 0) { out[i] += in1[i]; active++;}
        if((switches & (1 << 1)) != 0) { out[i] += in2[i]; active++;}
        if((switches & (1 << 2)) != 0) { out[i] += in3[i]; active++;}
        if((switches & (1 << 3)) != 0) { out[i] += in4[i]; active++;}
        if((switches & (1 << 4)) != 0) { out[i] += in5[i]; active++;}
        if((switches & (1 << 5)) != 0) { out[i] += in6[i]; active++;}
        if((switches & (1 << 6)) != 0) { out[i] += in7[i]; active++;}
        if((switches & (1 << 7)) != 0) { out[i] += in8[i]; active++;}
        out[i] = out[i] * recip_sqrt_lut[active] >> 8;
    }
}

int main(int argc, char** argv)
{
    size_t N = 2000;
    int *in1 = (int *) sds_alloc(N);
    int *in2 = (int *) sds_alloc(N);
    int *in3 = (int *) sds_alloc(N);
    int *in4 = (int *) sds_alloc(N);
    int *in5 = (int *) sds_alloc(N);
    int *in6 = (int *) sds_alloc(N);
    int *in7 = (int *) sds_alloc(N);
    int *in8 = (int *) sds_alloc(N);
    int *sw_result = (int *) malloc(N);
    hls::stream<audio_stream> in_stream1;
    hls::stream<audio_stream> in_stream2;
    hls::stream<audio_stream> in_stream3;
    hls::stream<audio_stream> in_stream4;
    hls::stream<audio_stream> in_stream5;
    hls::stream<audio_stream> in_stream6;
    hls::stream<audio_stream> in_stream7;
    hls::stream<audio_stream> in_stream8;
    hls::stream<audio_stream> out_stream;
    audio_stream hw_result;

    if( (in1 == NULL) || (in2 == NULL) || (in3 == NULL) || (in4 == NULL) || (in5 == NULL) || (in6 == NULL) || (in7 == NULL) || (in8 == NULL) || (sw_result == NULL) || (hw_result == NULL) )
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
        hw_result[i] = 0;
    }

    sw_mixer(in1, in2, in3, in4, in5, in6, in7, in8, sw_result, 0x7, N);
    
    for(int i = 0; i < N; i++) {
        audio_stream sample1;
        audio_stream sample2;
        audio_stream sample3;
        audio_stream sample4;
        audio_stream sample5;
        audio_stream sample6;
        audio_stream sample7;
        audio_stream sample8;
        sample1.data = in1[i];
        sample1.keep = -1;
        sample1.strb = -1;
        sample1.user = 0;
        sample1.id = 0;
        sample1.dest = 0;
        sample1.last = (i = N - 1) ? 1 : 0;
        
        sample2.data = in2[i];
        sample2.keep = -1;
        sample2.strb = -1;
        sample2.user = 0;
        sample2.id = 0;
        sample2.dest = 0;
        sample2.last = (i = N - 1) ? 1 : 0;
        
        sample3.data = in3[i];
        sample3.keep = -1;
        sample3.strb = -1;
        sample3.user = 0;
        sample3.id = 0;
        sample3.dest = 0;
        sample3.last = (i = N - 1) ? 1 : 0;
        
        sample4.data = in4[i];
        sample4.keep = -1;
        sample4.strb = -1;
        sample4.user = 0;
        sample4.id = 0;
        sample4.dest = 0;
        sample4.last = (i = N - 1) ? 1 : 0;
        
        sample5.data = in5[i];
        sample5.keep = -1;
        sample5.strb = -1;
        sample5.user = 0;
        sample5.id = 0;
        sample5.dest = 0;
        sample5.last = (i = N - 1) ? 1 : 0;
        
        sample6.data = in6[i];
        sample6.keep = -1;
        sample6.strb = -1;
        sample6.user = 0;
        sample6.id = 0;
        sample6.dest = 0;
        sample6.last = (i = N - 1) ? 1 : 0;
        
        sample7.data = in7[i];
        sample7.keep = -1;
        sample7.strb = -1;
        sample7.user = 0;
        sample7.id = 0;
        sample7.dest = 0;
        sample7.last = (i = N - 1) ? 1 : 0;
        
        sample8.data = in8[i];
        sample8.keep = -1;
        sample8.strb = -1;
        sample8.user = 0;
        sample8.id = 0;
        sample8.dest = 0;
        sample8.last = (i = N - 1) ? 1 : 0;
        
        in_stream1.write(sample1);
        in_stream2.write(sample2);
        in_stream3.write(sample3);
        in_stream4.write(sample4);
        in_stream5.write(sample5);
        in_stream6.write(sample6);
        in_stream7.write(sample7);
        in_stream8.write(sample8);

    }

    mixer(in_stream1, in_stream1, in_stream3, in_stream4, in_stream5, in_stream6, in_stream7, in_stream8, 0x7, out_stream);

    int errors = 0;
    for (int i = 0; i < N; i++) {
        hw_result = out_stream.read();
        if (hw_result.data != sw_result[i]) {
            std::cout << "MISMATCH at beat " << i
                      << ": got " << hw_result.data
                      << ", expected " << sw_result[i] << "\n";
            errors++;
        }
    }

    if (errors == 0)
        std::cout << "TEST PASSED\n";
    else
        std::cout << "TEST FAILED: " << errors << " error(s)\n";

    return errors;  // Non-zero = failure signals to Vitis
}