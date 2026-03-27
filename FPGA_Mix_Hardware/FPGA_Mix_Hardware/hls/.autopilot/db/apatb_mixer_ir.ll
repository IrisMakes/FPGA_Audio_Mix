; ModuleID = '/home/MakerIris/Documents/FPGA_Audio_Mix/FPGA_Mix_Hardware/FPGA_Mix_Hardware/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<32>, 2, 5, 6>" }
%"struct.hls::axis<ap_uint<32>, 2, 5, 6>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<5>", %"struct.ap_uint<6>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<5>" = type { %"struct.ap_int_base<5, false>" }
%"struct.ap_int_base<5, false>" = type { %"struct.ssdm_int<5, false>" }
%"struct.ssdm_int<5, false>" = type { i5 }
%"struct.ap_uint<6>" = type { %"struct.ap_int_base<6, false>" }
%"struct.ap_int_base<6, false>" = type { %"struct.ssdm_int<6, false>" }
%"struct.ssdm_int<6, false>" = type { i6 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_mixer_ir(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_0, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_1, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_2, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_3, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_4, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_5, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_6, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %stream_in_7, %"struct.ap_uint<8>"* nocapture readonly %switches, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull align 4 dereferenceable(12) %mix_out) local_unnamed_addr #0 {
entry:
  %stream_in_0_copy.data = alloca i32, align 512
  %stream_in_0_copy.keep = alloca i4, align 512
  %stream_in_0_copy.strb = alloca i4, align 512
  %stream_in_0_copy.user = alloca i2, align 512
  %stream_in_0_copy.last = alloca i1, align 512
  %stream_in_0_copy.id = alloca i5, align 512
  %stream_in_0_copy.dest = alloca i6, align 512
  %stream_in_1_copy.data = alloca i32, align 512
  %stream_in_1_copy.keep = alloca i4, align 512
  %stream_in_1_copy.strb = alloca i4, align 512
  %stream_in_1_copy.user = alloca i2, align 512
  %stream_in_1_copy.last = alloca i1, align 512
  %stream_in_1_copy.id = alloca i5, align 512
  %stream_in_1_copy.dest = alloca i6, align 512
  %stream_in_2_copy.data = alloca i32, align 512
  %stream_in_2_copy.keep = alloca i4, align 512
  %stream_in_2_copy.strb = alloca i4, align 512
  %stream_in_2_copy.user = alloca i2, align 512
  %stream_in_2_copy.last = alloca i1, align 512
  %stream_in_2_copy.id = alloca i5, align 512
  %stream_in_2_copy.dest = alloca i6, align 512
  %stream_in_3_copy.data = alloca i32, align 512
  %stream_in_3_copy.keep = alloca i4, align 512
  %stream_in_3_copy.strb = alloca i4, align 512
  %stream_in_3_copy.user = alloca i2, align 512
  %stream_in_3_copy.last = alloca i1, align 512
  %stream_in_3_copy.id = alloca i5, align 512
  %stream_in_3_copy.dest = alloca i6, align 512
  %stream_in_4_copy.data = alloca i32, align 512
  %stream_in_4_copy.keep = alloca i4, align 512
  %stream_in_4_copy.strb = alloca i4, align 512
  %stream_in_4_copy.user = alloca i2, align 512
  %stream_in_4_copy.last = alloca i1, align 512
  %stream_in_4_copy.id = alloca i5, align 512
  %stream_in_4_copy.dest = alloca i6, align 512
  %stream_in_5_copy.data = alloca i32, align 512
  %stream_in_5_copy.keep = alloca i4, align 512
  %stream_in_5_copy.strb = alloca i4, align 512
  %stream_in_5_copy.user = alloca i2, align 512
  %stream_in_5_copy.last = alloca i1, align 512
  %stream_in_5_copy.id = alloca i5, align 512
  %stream_in_5_copy.dest = alloca i6, align 512
  %stream_in_6_copy.data = alloca i32, align 512
  %stream_in_6_copy.keep = alloca i4, align 512
  %stream_in_6_copy.strb = alloca i4, align 512
  %stream_in_6_copy.user = alloca i2, align 512
  %stream_in_6_copy.last = alloca i1, align 512
  %stream_in_6_copy.id = alloca i5, align 512
  %stream_in_6_copy.dest = alloca i6, align 512
  %stream_in_7_copy.data = alloca i32, align 512
  %stream_in_7_copy.keep = alloca i4, align 512
  %stream_in_7_copy.strb = alloca i4, align 512
  %stream_in_7_copy.user = alloca i2, align 512
  %stream_in_7_copy.last = alloca i1, align 512
  %stream_in_7_copy.id = alloca i5, align 512
  %stream_in_7_copy.dest = alloca i6, align 512
  %mix_out_copy.data = alloca i32, align 512
  %mix_out_copy.keep = alloca i4, align 512
  %mix_out_copy.strb = alloca i4, align 512
  %mix_out_copy.user = alloca i2, align 512
  %mix_out_copy.last = alloca i1, align 512
  %mix_out_copy.id = alloca i5, align 512
  %mix_out_copy.dest = alloca i6, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_0, i32* nonnull align 512 %stream_in_0_copy.data, i4* nonnull align 512 %stream_in_0_copy.keep, i4* nonnull align 512 %stream_in_0_copy.strb, i2* nonnull align 512 %stream_in_0_copy.user, i1* nonnull align 512 %stream_in_0_copy.last, i5* nonnull align 512 %stream_in_0_copy.id, i6* nonnull align 512 %stream_in_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_1, i32* nonnull align 512 %stream_in_1_copy.data, i4* nonnull align 512 %stream_in_1_copy.keep, i4* nonnull align 512 %stream_in_1_copy.strb, i2* nonnull align 512 %stream_in_1_copy.user, i1* nonnull align 512 %stream_in_1_copy.last, i5* nonnull align 512 %stream_in_1_copy.id, i6* nonnull align 512 %stream_in_1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_2, i32* nonnull align 512 %stream_in_2_copy.data, i4* nonnull align 512 %stream_in_2_copy.keep, i4* nonnull align 512 %stream_in_2_copy.strb, i2* nonnull align 512 %stream_in_2_copy.user, i1* nonnull align 512 %stream_in_2_copy.last, i5* nonnull align 512 %stream_in_2_copy.id, i6* nonnull align 512 %stream_in_2_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_3, i32* nonnull align 512 %stream_in_3_copy.data, i4* nonnull align 512 %stream_in_3_copy.keep, i4* nonnull align 512 %stream_in_3_copy.strb, i2* nonnull align 512 %stream_in_3_copy.user, i1* nonnull align 512 %stream_in_3_copy.last, i5* nonnull align 512 %stream_in_3_copy.id, i6* nonnull align 512 %stream_in_3_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_4, i32* nonnull align 512 %stream_in_4_copy.data, i4* nonnull align 512 %stream_in_4_copy.keep, i4* nonnull align 512 %stream_in_4_copy.strb, i2* nonnull align 512 %stream_in_4_copy.user, i1* nonnull align 512 %stream_in_4_copy.last, i5* nonnull align 512 %stream_in_4_copy.id, i6* nonnull align 512 %stream_in_4_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_5, i32* nonnull align 512 %stream_in_5_copy.data, i4* nonnull align 512 %stream_in_5_copy.keep, i4* nonnull align 512 %stream_in_5_copy.strb, i2* nonnull align 512 %stream_in_5_copy.user, i1* nonnull align 512 %stream_in_5_copy.last, i5* nonnull align 512 %stream_in_5_copy.id, i6* nonnull align 512 %stream_in_5_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_6, i32* nonnull align 512 %stream_in_6_copy.data, i4* nonnull align 512 %stream_in_6_copy.keep, i4* nonnull align 512 %stream_in_6_copy.strb, i2* nonnull align 512 %stream_in_6_copy.user, i1* nonnull align 512 %stream_in_6_copy.last, i5* nonnull align 512 %stream_in_6_copy.id, i6* nonnull align 512 %stream_in_6_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %stream_in_7, i32* nonnull align 512 %stream_in_7_copy.data, i4* nonnull align 512 %stream_in_7_copy.keep, i4* nonnull align 512 %stream_in_7_copy.strb, i2* nonnull align 512 %stream_in_7_copy.user, i1* nonnull align 512 %stream_in_7_copy.last, i5* nonnull align 512 %stream_in_7_copy.id, i6* nonnull align 512 %stream_in_7_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %mix_out, i32* nonnull align 512 %mix_out_copy.data, i4* nonnull align 512 %mix_out_copy.keep, i4* nonnull align 512 %mix_out_copy.strb, i2* nonnull align 512 %mix_out_copy.user, i1* nonnull align 512 %mix_out_copy.last, i5* nonnull align 512 %mix_out_copy.id, i6* nonnull align 512 %mix_out_copy.dest)
  call void @apatb_mixer_hw(i32* %stream_in_0_copy.data, i4* %stream_in_0_copy.keep, i4* %stream_in_0_copy.strb, i2* %stream_in_0_copy.user, i1* %stream_in_0_copy.last, i5* %stream_in_0_copy.id, i6* %stream_in_0_copy.dest, i32* %stream_in_1_copy.data, i4* %stream_in_1_copy.keep, i4* %stream_in_1_copy.strb, i2* %stream_in_1_copy.user, i1* %stream_in_1_copy.last, i5* %stream_in_1_copy.id, i6* %stream_in_1_copy.dest, i32* %stream_in_2_copy.data, i4* %stream_in_2_copy.keep, i4* %stream_in_2_copy.strb, i2* %stream_in_2_copy.user, i1* %stream_in_2_copy.last, i5* %stream_in_2_copy.id, i6* %stream_in_2_copy.dest, i32* %stream_in_3_copy.data, i4* %stream_in_3_copy.keep, i4* %stream_in_3_copy.strb, i2* %stream_in_3_copy.user, i1* %stream_in_3_copy.last, i5* %stream_in_3_copy.id, i6* %stream_in_3_copy.dest, i32* %stream_in_4_copy.data, i4* %stream_in_4_copy.keep, i4* %stream_in_4_copy.strb, i2* %stream_in_4_copy.user, i1* %stream_in_4_copy.last, i5* %stream_in_4_copy.id, i6* %stream_in_4_copy.dest, i32* %stream_in_5_copy.data, i4* %stream_in_5_copy.keep, i4* %stream_in_5_copy.strb, i2* %stream_in_5_copy.user, i1* %stream_in_5_copy.last, i5* %stream_in_5_copy.id, i6* %stream_in_5_copy.dest, i32* %stream_in_6_copy.data, i4* %stream_in_6_copy.keep, i4* %stream_in_6_copy.strb, i2* %stream_in_6_copy.user, i1* %stream_in_6_copy.last, i5* %stream_in_6_copy.id, i6* %stream_in_6_copy.dest, i32* %stream_in_7_copy.data, i4* %stream_in_7_copy.keep, i4* %stream_in_7_copy.strb, i2* %stream_in_7_copy.user, i1* %stream_in_7_copy.last, i5* %stream_in_7_copy.id, i6* %stream_in_7_copy.dest, %"struct.ap_uint<8>"* %switches, i32* %mix_out_copy.data, i4* %mix_out_copy.keep, i4* %mix_out_copy.strb, i2* %mix_out_copy.user, i1* %mix_out_copy.last, i5* %mix_out_copy.id, i6* %mix_out_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_0, i32* %stream_in_0_copy.data, i4* %stream_in_0_copy.keep, i4* %stream_in_0_copy.strb, i2* %stream_in_0_copy.user, i1* %stream_in_0_copy.last, i5* %stream_in_0_copy.id, i6* %stream_in_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_1, i32* %stream_in_1_copy.data, i4* %stream_in_1_copy.keep, i4* %stream_in_1_copy.strb, i2* %stream_in_1_copy.user, i1* %stream_in_1_copy.last, i5* %stream_in_1_copy.id, i6* %stream_in_1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_2, i32* %stream_in_2_copy.data, i4* %stream_in_2_copy.keep, i4* %stream_in_2_copy.strb, i2* %stream_in_2_copy.user, i1* %stream_in_2_copy.last, i5* %stream_in_2_copy.id, i6* %stream_in_2_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_3, i32* %stream_in_3_copy.data, i4* %stream_in_3_copy.keep, i4* %stream_in_3_copy.strb, i2* %stream_in_3_copy.user, i1* %stream_in_3_copy.last, i5* %stream_in_3_copy.id, i6* %stream_in_3_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_4, i32* %stream_in_4_copy.data, i4* %stream_in_4_copy.keep, i4* %stream_in_4_copy.strb, i2* %stream_in_4_copy.user, i1* %stream_in_4_copy.last, i5* %stream_in_4_copy.id, i6* %stream_in_4_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_5, i32* %stream_in_5_copy.data, i4* %stream_in_5_copy.keep, i4* %stream_in_5_copy.strb, i2* %stream_in_5_copy.user, i1* %stream_in_5_copy.last, i5* %stream_in_5_copy.id, i6* %stream_in_5_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_6, i32* %stream_in_6_copy.data, i4* %stream_in_6_copy.keep, i4* %stream_in_6_copy.strb, i2* %stream_in_6_copy.user, i1* %stream_in_6_copy.last, i5* %stream_in_6_copy.id, i6* %stream_in_6_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %stream_in_7, i32* %stream_in_7_copy.data, i4* %stream_in_7_copy.keep, i4* %stream_in_7_copy.strb, i2* %stream_in_7_copy.user, i1* %stream_in_7_copy.last, i5* %stream_in_7_copy.id, i6* %stream_in_7_copy.dest, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %mix_out, i32* %mix_out_copy.data, i4* %mix_out_copy.keep, i4* %mix_out_copy.strb, i2* %mix_out_copy.user, i1* %mix_out_copy.last, i5* %mix_out_copy.id, i6* %mix_out_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i2* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i5* noalias align 512 "unpacked"="1.5" %_V_id_V, i6* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i2* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i5* noalias align 512 "unpacked"="3.5" %_V_id_V6, i6* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V18, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V29, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V310, i2* noalias align 512 "unpacked"="5.3" %_V_user_V411, i1* noalias align 512 "unpacked"="5.4" %_V_last_V512, i5* noalias align 512 "unpacked"="5.5" %_V_id_V613, i6* noalias align 512 "unpacked"="5.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="7.0" %_V_data_V1815, i4* noalias align 512 "unpacked"="7.1" %_V_keep_V2916, i4* noalias align 512 "unpacked"="7.2" %_V_strb_V31017, i2* noalias align 512 "unpacked"="7.3" %_V_user_V41118, i1* noalias align 512 "unpacked"="7.4" %_V_last_V51219, i5* noalias align 512 "unpacked"="7.5" %_V_id_V61320, i6* noalias align 512 "unpacked"="7.6" %_V_dest_V71421, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="9.0" %_V_data_V181522, i4* noalias align 512 "unpacked"="9.1" %_V_keep_V291623, i4* noalias align 512 "unpacked"="9.2" %_V_strb_V3101724, i2* noalias align 512 "unpacked"="9.3" %_V_user_V4111825, i1* noalias align 512 "unpacked"="9.4" %_V_last_V5121926, i5* noalias align 512 "unpacked"="9.5" %_V_id_V6132027, i6* noalias align 512 "unpacked"="9.6" %_V_dest_V7142128, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="11.0" %_V_data_V18152229, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V29162330, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V310172431, i2* noalias align 512 "unpacked"="11.3" %_V_user_V411182532, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512192633, i5* noalias align 512 "unpacked"="11.5" %_V_id_V613202734, i6* noalias align 512 "unpacked"="11.6" %_V_dest_V714212835, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="13.0" %_V_data_V1815222936, i4* noalias align 512 "unpacked"="13.1" %_V_keep_V2916233037, i4* noalias align 512 "unpacked"="13.2" %_V_strb_V31017243138, i2* noalias align 512 "unpacked"="13.3" %_V_user_V41118253239, i1* noalias align 512 "unpacked"="13.4" %_V_last_V51219263340, i5* noalias align 512 "unpacked"="13.5" %_V_id_V61320273441, i6* noalias align 512 "unpacked"="13.6" %_V_dest_V71421283542, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="15.0" %_V_data_V181522293643, i4* noalias align 512 "unpacked"="15.1" %_V_keep_V291623303744, i4* noalias align 512 "unpacked"="15.2" %_V_strb_V3101724313845, i2* noalias align 512 "unpacked"="15.3" %_V_user_V4111825323946, i1* noalias align 512 "unpacked"="15.4" %_V_last_V5121926334047, i5* noalias align 512 "unpacked"="15.5" %_V_id_V6132027344148, i6* noalias align 512 "unpacked"="15.6" %_V_dest_V7142128354249, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="17.0" %_V_data_V18152229364350, i4* noalias align 512 "unpacked"="17.1" %_V_keep_V29162330374451, i4* noalias align 512 "unpacked"="17.2" %_V_strb_V310172431384552, i2* noalias align 512 "unpacked"="17.3" %_V_user_V411182532394653, i1* noalias align 512 "unpacked"="17.4" %_V_last_V512192633404754, i5* noalias align 512 "unpacked"="17.5" %_V_id_V613202734414855, i6* noalias align 512 "unpacked"="17.6" %_V_dest_V714212835424956) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i2* align 512 %_V_user_V, i1* align 512 %_V_last_V, i5* align 512 %_V_id_V, i6* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i2* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i5* align 512 %_V_id_V6, i6* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V18, i4* align 512 %_V_keep_V29, i4* align 512 %_V_strb_V310, i2* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i5* align 512 %_V_id_V613, i6* align 512 %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V1815, i4* align 512 %_V_keep_V2916, i4* align 512 %_V_strb_V31017, i2* align 512 %_V_user_V41118, i1* align 512 %_V_last_V51219, i5* align 512 %_V_id_V61320, i6* align 512 %_V_dest_V71421, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V181522, i4* align 512 %_V_keep_V291623, i4* align 512 %_V_strb_V3101724, i2* align 512 %_V_user_V4111825, i1* align 512 %_V_last_V5121926, i5* align 512 %_V_id_V6132027, i6* align 512 %_V_dest_V7142128, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V18152229, i4* align 512 %_V_keep_V29162330, i4* align 512 %_V_strb_V310172431, i2* align 512 %_V_user_V411182532, i1* align 512 %_V_last_V512192633, i5* align 512 %_V_id_V613202734, i6* align 512 %_V_dest_V714212835, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V1815222936, i4* align 512 %_V_keep_V2916233037, i4* align 512 %_V_strb_V31017243138, i2* align 512 %_V_user_V41118253239, i1* align 512 %_V_last_V51219263340, i5* align 512 %_V_id_V61320273441, i6* align 512 %_V_dest_V71421283542, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V181522293643, i4* align 512 %_V_keep_V291623303744, i4* align 512 %_V_strb_V3101724313845, i2* align 512 %_V_user_V4111825323946, i1* align 512 %_V_last_V5121926334047, i5* align 512 %_V_id_V6132027344148, i6* align 512 %_V_dest_V7142128354249, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* align 512 %_V_data_V18152229364350, i4* align 512 %_V_keep_V29162330374451, i4* align 512 %_V_strb_V310172431384552, i2* align 512 %_V_user_V411182532394653, i1* align 512 %_V_last_V512192633404754, i5* align 512 %_V_id_V613202734414855, i6* align 512 %_V_dest_V714212835424956, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i2* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i5* noalias align 512 "unpacked"="1.5" %_V_id_V, i6* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i2* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i5* noalias align 512 "unpacked"="3.5" %_V_id_V6, i6* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V18, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V29, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V310, i2* noalias align 512 "unpacked"="5.3" %_V_user_V411, i1* noalias align 512 "unpacked"="5.4" %_V_last_V512, i5* noalias align 512 "unpacked"="5.5" %_V_id_V613, i6* noalias align 512 "unpacked"="5.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="7.0" %_V_data_V1815, i4* noalias align 512 "unpacked"="7.1" %_V_keep_V2916, i4* noalias align 512 "unpacked"="7.2" %_V_strb_V31017, i2* noalias align 512 "unpacked"="7.3" %_V_user_V41118, i1* noalias align 512 "unpacked"="7.4" %_V_last_V51219, i5* noalias align 512 "unpacked"="7.5" %_V_id_V61320, i6* noalias align 512 "unpacked"="7.6" %_V_dest_V71421, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="9.0" %_V_data_V181522, i4* noalias align 512 "unpacked"="9.1" %_V_keep_V291623, i4* noalias align 512 "unpacked"="9.2" %_V_strb_V3101724, i2* noalias align 512 "unpacked"="9.3" %_V_user_V4111825, i1* noalias align 512 "unpacked"="9.4" %_V_last_V5121926, i5* noalias align 512 "unpacked"="9.5" %_V_id_V6132027, i6* noalias align 512 "unpacked"="9.6" %_V_dest_V7142128, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="11.0" %_V_data_V18152229, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V29162330, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V310172431, i2* noalias align 512 "unpacked"="11.3" %_V_user_V411182532, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512192633, i5* noalias align 512 "unpacked"="11.5" %_V_id_V613202734, i6* noalias align 512 "unpacked"="11.6" %_V_dest_V714212835, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="13.0" %_V_data_V1815222936, i4* noalias align 512 "unpacked"="13.1" %_V_keep_V2916233037, i4* noalias align 512 "unpacked"="13.2" %_V_strb_V31017243138, i2* noalias align 512 "unpacked"="13.3" %_V_user_V41118253239, i1* noalias align 512 "unpacked"="13.4" %_V_last_V51219263340, i5* noalias align 512 "unpacked"="13.5" %_V_id_V61320273441, i6* noalias align 512 "unpacked"="13.6" %_V_dest_V71421283542, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="15.0" %_V_data_V181522293643, i4* noalias align 512 "unpacked"="15.1" %_V_keep_V291623303744, i4* noalias align 512 "unpacked"="15.2" %_V_strb_V3101724313845, i2* noalias align 512 "unpacked"="15.3" %_V_user_V4111825323946, i1* noalias align 512 "unpacked"="15.4" %_V_last_V5121926334047, i5* noalias align 512 "unpacked"="15.5" %_V_id_V6132027344148, i6* noalias align 512 "unpacked"="15.6" %_V_dest_V7142128354249, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="17.0" %_V_data_V18152229364350, i4* noalias align 512 "unpacked"="17.1" %_V_keep_V29162330374451, i4* noalias align 512 "unpacked"="17.2" %_V_strb_V310172431384552, i2* noalias align 512 "unpacked"="17.3" %_V_user_V411182532394653, i1* noalias align 512 "unpacked"="17.4" %_V_last_V512192633404754, i5* noalias align 512 "unpacked"="17.5" %_V_id_V613202734414855, i6* noalias align 512 "unpacked"="17.6" %_V_dest_V714212835424956) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i2* align 512 %_V_user_V, i1* align 512 %_V_last_V, i5* align 512 %_V_id_V, i6* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i2* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i5* align 512 %_V_id_V6, i6* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %2, i32* align 512 %_V_data_V18, i4* align 512 %_V_keep_V29, i4* align 512 %_V_strb_V310, i2* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i5* align 512 %_V_id_V613, i6* align 512 %_V_dest_V714)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %3, i32* align 512 %_V_data_V1815, i4* align 512 %_V_keep_V2916, i4* align 512 %_V_strb_V31017, i2* align 512 %_V_user_V41118, i1* align 512 %_V_last_V51219, i5* align 512 %_V_id_V61320, i6* align 512 %_V_dest_V71421)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %4, i32* align 512 %_V_data_V181522, i4* align 512 %_V_keep_V291623, i4* align 512 %_V_strb_V3101724, i2* align 512 %_V_user_V4111825, i1* align 512 %_V_last_V5121926, i5* align 512 %_V_id_V6132027, i6* align 512 %_V_dest_V7142128)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %5, i32* align 512 %_V_data_V18152229, i4* align 512 %_V_keep_V29162330, i4* align 512 %_V_strb_V310172431, i2* align 512 %_V_user_V411182532, i1* align 512 %_V_last_V512192633, i5* align 512 %_V_id_V613202734, i6* align 512 %_V_dest_V714212835)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %6, i32* align 512 %_V_data_V1815222936, i4* align 512 %_V_keep_V2916233037, i4* align 512 %_V_strb_V31017243138, i2* align 512 %_V_user_V41118253239, i1* align 512 %_V_last_V51219263340, i5* align 512 %_V_id_V61320273441, i6* align 512 %_V_dest_V71421283542)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %7, i32* align 512 %_V_data_V181522293643, i4* align 512 %_V_keep_V291623303744, i4* align 512 %_V_strb_V3101724313845, i2* align 512 %_V_user_V4111825323946, i1* align 512 %_V_last_V5121926334047, i5* align 512 %_V_id_V6132027344148, i6* align 512 %_V_dest_V7142128354249)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %8, i32* align 512 %_V_data_V18152229364350, i4* align 512 %_V_keep_V29162330374451, i4* align 512 %_V_strb_V310172431384552, i2* align 512 %_V_user_V411182532394653, i1* align 512 %_V_last_V512192633404754, i5* align 512 %_V_id_V613202734414855, i6* align 512 %_V_dest_V714212835424956)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i2* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i5* noalias align 512 "unpacked"="1.5" %src_V_id_V, i6* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.144"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i2* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i5* align 512 %src_V_id_V, i6* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.144"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i2* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i5* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i6* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca i32
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i2
  %5 = alloca i1
  %6 = alloca i5
  %7 = alloca i6
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i32* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i32* %1 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i32, i32* %1
  %14 = bitcast i4* %3 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i4* %3 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i4
  %19 = bitcast i4* %2 to i8*
  %20 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i4* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i4
  %24 = bitcast i2* %4 to i8*
  %25 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i2* %4 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i2
  %29 = bitcast i1* %5 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %5 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = bitcast i5* %6 to i8*
  %35 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i5* %6 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i5
  %39 = bitcast i6* %7 to i8*
  %40 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i6* %7 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i6
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" undef, i32 %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %18, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %23, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i2 %28, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %33, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i5 %38, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i6 %43, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %8
  %44 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %8 to i8*
  %45 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %44, i8* %45)
  br label %empty, !llvm.loop !6

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i2* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i5* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i6* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.152"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i2* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i5* align 512 %dst_V_id_V, i6* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.152"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i2* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i5* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i6* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i2
  %6 = alloca i1
  %7 = alloca i5
  %8 = alloca i6
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_12(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i32 %.fca.0.0.0.0.0.extract, i32* %2
  %14 = bitcast i32* %2 to i8*
  %15 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %16 = bitcast i4* %4 to i8*
  %17 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %18 = bitcast i4* %3 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i2 %.fca.0.3.0.0.0.extract, i2* %5
  %20 = bitcast i2* %5 to i8*
  %21 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %6
  %22 = bitcast i1* %6 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i5 %.fca.0.5.0.0.0.extract, i5* %7
  %24 = bitcast i5* %7 to i8*
  %25 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i6 %.fca.0.6.0.0.0.extract, i6* %8
  %26 = bitcast i6* %8 to i8*
  %27 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !6

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_mixer_hw(i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, %"struct.ap_uint<8>"*, i32*, i4*, i4*, i2*, i1*, i5*, i6*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i2* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i5* noalias align 512 "unpacked"="1.5" %_V_id_V, i6* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i2* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i5* noalias align 512 "unpacked"="3.5" %_V_id_V6, i6* noalias align 512 "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V18, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V29, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V310, i2* noalias align 512 "unpacked"="5.3" %_V_user_V411, i1* noalias align 512 "unpacked"="5.4" %_V_last_V512, i5* noalias align 512 "unpacked"="5.5" %_V_id_V613, i6* noalias align 512 "unpacked"="5.6" %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="7.0" %_V_data_V1815, i4* noalias align 512 "unpacked"="7.1" %_V_keep_V2916, i4* noalias align 512 "unpacked"="7.2" %_V_strb_V31017, i2* noalias align 512 "unpacked"="7.3" %_V_user_V41118, i1* noalias align 512 "unpacked"="7.4" %_V_last_V51219, i5* noalias align 512 "unpacked"="7.5" %_V_id_V61320, i6* noalias align 512 "unpacked"="7.6" %_V_dest_V71421, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="9.0" %_V_data_V181522, i4* noalias align 512 "unpacked"="9.1" %_V_keep_V291623, i4* noalias align 512 "unpacked"="9.2" %_V_strb_V3101724, i2* noalias align 512 "unpacked"="9.3" %_V_user_V4111825, i1* noalias align 512 "unpacked"="9.4" %_V_last_V5121926, i5* noalias align 512 "unpacked"="9.5" %_V_id_V6132027, i6* noalias align 512 "unpacked"="9.6" %_V_dest_V7142128, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="11.0" %_V_data_V18152229, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V29162330, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V310172431, i2* noalias align 512 "unpacked"="11.3" %_V_user_V411182532, i1* noalias align 512 "unpacked"="11.4" %_V_last_V512192633, i5* noalias align 512 "unpacked"="11.5" %_V_id_V613202734, i6* noalias align 512 "unpacked"="11.6" %_V_dest_V714212835, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="13.0" %_V_data_V1815222936, i4* noalias align 512 "unpacked"="13.1" %_V_keep_V2916233037, i4* noalias align 512 "unpacked"="13.2" %_V_strb_V31017243138, i2* noalias align 512 "unpacked"="13.3" %_V_user_V41118253239, i1* noalias align 512 "unpacked"="13.4" %_V_last_V51219263340, i5* noalias align 512 "unpacked"="13.5" %_V_id_V61320273441, i6* noalias align 512 "unpacked"="13.6" %_V_dest_V71421283542, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="15.0" %_V_data_V181522293643, i4* noalias align 512 "unpacked"="15.1" %_V_keep_V291623303744, i4* noalias align 512 "unpacked"="15.2" %_V_strb_V3101724313845, i2* noalias align 512 "unpacked"="15.3" %_V_user_V4111825323946, i1* noalias align 512 "unpacked"="15.4" %_V_last_V5121926334047, i5* noalias align 512 "unpacked"="15.5" %_V_id_V6132027344148, i6* noalias align 512 "unpacked"="15.6" %_V_dest_V7142128354249, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="17.0" %_V_data_V18152229364350, i4* noalias align 512 "unpacked"="17.1" %_V_keep_V29162330374451, i4* noalias align 512 "unpacked"="17.2" %_V_strb_V310172431384552, i2* noalias align 512 "unpacked"="17.3" %_V_user_V411182532394653, i1* noalias align 512 "unpacked"="17.4" %_V_last_V512192633404754, i5* noalias align 512 "unpacked"="17.5" %_V_id_V613202734414855, i6* noalias align 512 "unpacked"="17.6" %_V_dest_V714212835424956) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i2* align 512 %_V_user_V, i1* align 512 %_V_last_V, i5* align 512 %_V_id_V, i6* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i2* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i5* align 512 %_V_id_V6, i6* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %2, i32* align 512 %_V_data_V18, i4* align 512 %_V_keep_V29, i4* align 512 %_V_strb_V310, i2* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i5* align 512 %_V_id_V613, i6* align 512 %_V_dest_V714)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %3, i32* align 512 %_V_data_V1815, i4* align 512 %_V_keep_V2916, i4* align 512 %_V_strb_V31017, i2* align 512 %_V_user_V41118, i1* align 512 %_V_last_V51219, i5* align 512 %_V_id_V61320, i6* align 512 %_V_dest_V71421)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %4, i32* align 512 %_V_data_V181522, i4* align 512 %_V_keep_V291623, i4* align 512 %_V_strb_V3101724, i2* align 512 %_V_user_V4111825, i1* align 512 %_V_last_V5121926, i5* align 512 %_V_id_V6132027, i6* align 512 %_V_dest_V7142128)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %5, i32* align 512 %_V_data_V18152229, i4* align 512 %_V_keep_V29162330, i4* align 512 %_V_strb_V310172431, i2* align 512 %_V_user_V411182532, i1* align 512 %_V_last_V512192633, i5* align 512 %_V_id_V613202734, i6* align 512 %_V_dest_V714212835)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %6, i32* align 512 %_V_data_V1815222936, i4* align 512 %_V_keep_V2916233037, i4* align 512 %_V_strb_V31017243138, i2* align 512 %_V_user_V41118253239, i1* align 512 %_V_last_V51219263340, i5* align 512 %_V_id_V61320273441, i6* align 512 %_V_dest_V71421283542)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %7, i32* align 512 %_V_data_V181522293643, i4* align 512 %_V_keep_V291623303744, i4* align 512 %_V_strb_V3101724313845, i2* align 512 %_V_user_V4111825323946, i1* align 512 %_V_last_V5121926334047, i5* align 512 %_V_id_V6132027344148, i6* align 512 %_V_dest_V7142128354249)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>.141"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %8, i32* align 512 %_V_data_V18152229364350, i4* align 512 %_V_keep_V29162330374451, i4* align 512 %_V_strb_V310172431384552, i2* align 512 %_V_user_V411182532394653, i1* align 512 %_V_last_V512192633404754, i5* align 512 %_V_id_V613202734414855, i6* align 512 %_V_dest_V714212835424956)
  ret void
}

declare void @mixer_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull, %"struct.ap_uint<8>"* nocapture readonly, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* noalias nonnull)

define void @mixer_hw_stub_wrapper(i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32*, i4*, i4*, i2*, i1*, i5*, i6*, %"struct.ap_uint<8>"*, i32*, i4*, i4*, i2*, i1*, i5*, i6*) #5 {
entry:
  %64 = call i8* @malloc(i64 12)
  %65 = bitcast i8* %64 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %66 = call i8* @malloc(i64 12)
  %67 = bitcast i8* %66 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %68 = call i8* @malloc(i64 12)
  %69 = bitcast i8* %68 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %70 = call i8* @malloc(i64 12)
  %71 = bitcast i8* %70 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %72 = call i8* @malloc(i64 12)
  %73 = bitcast i8* %72 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %74 = call i8* @malloc(i64 12)
  %75 = bitcast i8* %74 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %76 = call i8* @malloc(i64 12)
  %77 = bitcast i8* %76 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %78 = call i8* @malloc(i64 12)
  %79 = bitcast i8* %78 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  %80 = call i8* @malloc(i64 12)
  %81 = bitcast i8* %80 to %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %65, i32* %0, i4* %1, i4* %2, i2* %3, i1* %4, i5* %5, i6* %6, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %67, i32* %7, i4* %8, i4* %9, i2* %10, i1* %11, i5* %12, i6* %13, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %69, i32* %14, i4* %15, i4* %16, i2* %17, i1* %18, i5* %19, i6* %20, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %71, i32* %21, i4* %22, i4* %23, i2* %24, i1* %25, i5* %26, i6* %27, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %73, i32* %28, i4* %29, i4* %30, i2* %31, i1* %32, i5* %33, i6* %34, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %75, i32* %35, i4* %36, i4* %37, i2* %38, i1* %39, i5* %40, i6* %41, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %77, i32* %42, i4* %43, i4* %44, i2* %45, i1* %46, i5* %47, i6* %48, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %79, i32* %49, i4* %50, i4* %51, i2* %52, i1* %53, i5* %54, i6* %55, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %81, i32* %57, i4* %58, i4* %59, i2* %60, i1* %61, i5* %62, i6* %63)
  call void @mixer_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %65, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %67, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %69, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %71, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %73, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %75, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %77, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %79, %"struct.ap_uint<8>"* %56, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %81)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %65, i32* %0, i4* %1, i4* %2, i2* %3, i1* %4, i5* %5, i6* %6, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %67, i32* %7, i4* %8, i4* %9, i2* %10, i1* %11, i5* %12, i6* %13, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %69, i32* %14, i4* %15, i4* %16, i2* %17, i1* %18, i5* %19, i6* %20, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %71, i32* %21, i4* %22, i4* %23, i2* %24, i1* %25, i5* %26, i6* %27, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %73, i32* %28, i4* %29, i4* %30, i2* %31, i1* %32, i5* %33, i6* %34, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %75, i32* %35, i4* %36, i4* %37, i2* %38, i1* %39, i5* %40, i6* %41, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %77, i32* %42, i4* %43, i4* %44, i2* %45, i1* %46, i5* %47, i6* %48, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %79, i32* %49, i4* %50, i4* %51, i2* %52, i1* %53, i5* %54, i6* %55, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 5, 6, '8', false>, 0>"* %81, i32* %57, i4* %58, i4* %59, i2* %60, i1* %61, i5* %62, i6* %63)
  call void @free(i8* %64)
  call void @free(i8* %66)
  call void @free(i8* %68)
  call void @free(i8* %70)
  call void @free(i8* %72)
  call void @free(i8* %74)
  call void @free(i8* %76)
  call void @free(i8* %78)
  call void @free(i8* %80)
  ret void
}

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.rotate.disable"}
