set moduleName mixer
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 3
set C_modelName {mixer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ stream_in_0_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_0 Data } }  }
	{ stream_in_0_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_0 Keep } }  }
	{ stream_in_0_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_0 Strb } }  }
	{ stream_in_0_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_0 User } }  }
	{ stream_in_0_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_0 Last } }  }
	{ stream_in_0_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_0 ID } }  }
	{ stream_in_0_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_0 Dest } }  }
	{ stream_in_1_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_1 Data } }  }
	{ stream_in_1_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_1 Keep } }  }
	{ stream_in_1_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_1 Strb } }  }
	{ stream_in_1_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_1 User } }  }
	{ stream_in_1_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_1 Last } }  }
	{ stream_in_1_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_1 ID } }  }
	{ stream_in_1_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_1 Dest } }  }
	{ stream_in_2_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_2 Data } }  }
	{ stream_in_2_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_2 Keep } }  }
	{ stream_in_2_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_2 Strb } }  }
	{ stream_in_2_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_2 User } }  }
	{ stream_in_2_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_2 Last } }  }
	{ stream_in_2_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_2 ID } }  }
	{ stream_in_2_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_2 Dest } }  }
	{ stream_in_3_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_3 Data } }  }
	{ stream_in_3_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_3 Keep } }  }
	{ stream_in_3_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_3 Strb } }  }
	{ stream_in_3_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_3 User } }  }
	{ stream_in_3_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_3 Last } }  }
	{ stream_in_3_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_3 ID } }  }
	{ stream_in_3_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_3 Dest } }  }
	{ stream_in_4_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_4 Data } }  }
	{ stream_in_4_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_4 Keep } }  }
	{ stream_in_4_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_4 Strb } }  }
	{ stream_in_4_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_4 User } }  }
	{ stream_in_4_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_4 Last } }  }
	{ stream_in_4_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_4 ID } }  }
	{ stream_in_4_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_4 Dest } }  }
	{ stream_in_5_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_5 Data } }  }
	{ stream_in_5_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_5 Keep } }  }
	{ stream_in_5_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_5 Strb } }  }
	{ stream_in_5_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_5 User } }  }
	{ stream_in_5_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_5 Last } }  }
	{ stream_in_5_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_5 ID } }  }
	{ stream_in_5_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_5 Dest } }  }
	{ stream_in_6_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_6 Data } }  }
	{ stream_in_6_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_6 Keep } }  }
	{ stream_in_6_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_6 Strb } }  }
	{ stream_in_6_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_6 User } }  }
	{ stream_in_6_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_6 Last } }  }
	{ stream_in_6_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_6 ID } }  }
	{ stream_in_6_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_6 Dest } }  }
	{ stream_in_7_V_data_V int 32 regular {axi_s 0 volatile  { stream_in_7 Data } }  }
	{ stream_in_7_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in_7 Keep } }  }
	{ stream_in_7_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in_7 Strb } }  }
	{ stream_in_7_V_user_V int 2 regular {axi_s 0 volatile  { stream_in_7 User } }  }
	{ stream_in_7_V_last_V int 1 regular {axi_s 0 volatile  { stream_in_7 Last } }  }
	{ stream_in_7_V_id_V int 5 regular {axi_s 0 volatile  { stream_in_7 ID } }  }
	{ stream_in_7_V_dest_V int 6 regular {axi_s 0 volatile  { stream_in_7 Dest } }  }
	{ switches int 8 regular  }
	{ mix_out_V_data_V int 32 regular {axi_s 1 volatile  { mix_out Data } }  }
	{ mix_out_V_keep_V int 4 regular {axi_s 1 volatile  { mix_out Keep } }  }
	{ mix_out_V_strb_V int 4 regular {axi_s 1 volatile  { mix_out Strb } }  }
	{ mix_out_V_user_V int 2 regular {axi_s 1 volatile  { mix_out User } }  }
	{ mix_out_V_last_V int 1 regular {axi_s 1 volatile  { mix_out Last } }  }
	{ mix_out_V_id_V int 5 regular {axi_s 1 volatile  { mix_out ID } }  }
	{ mix_out_V_dest_V int 6 regular {axi_s 1 volatile  { mix_out Dest } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_0_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_1_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_2_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_3_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_4_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_5_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_6_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_7_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "switches", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mix_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 102
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_0_TDATA sc_in sc_lv 32 signal 0 } 
	{ stream_in_0_TVALID sc_in sc_logic 1 invld 6 } 
	{ stream_in_0_TREADY sc_out sc_logic 1 inacc 6 } 
	{ stream_in_0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ stream_in_0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ stream_in_0_TUSER sc_in sc_lv 2 signal 3 } 
	{ stream_in_0_TLAST sc_in sc_lv 1 signal 4 } 
	{ stream_in_0_TID sc_in sc_lv 5 signal 5 } 
	{ stream_in_0_TDEST sc_in sc_lv 6 signal 6 } 
	{ stream_in_1_TDATA sc_in sc_lv 32 signal 7 } 
	{ stream_in_1_TVALID sc_in sc_logic 1 invld 13 } 
	{ stream_in_1_TREADY sc_out sc_logic 1 inacc 13 } 
	{ stream_in_1_TKEEP sc_in sc_lv 4 signal 8 } 
	{ stream_in_1_TSTRB sc_in sc_lv 4 signal 9 } 
	{ stream_in_1_TUSER sc_in sc_lv 2 signal 10 } 
	{ stream_in_1_TLAST sc_in sc_lv 1 signal 11 } 
	{ stream_in_1_TID sc_in sc_lv 5 signal 12 } 
	{ stream_in_1_TDEST sc_in sc_lv 6 signal 13 } 
	{ stream_in_2_TDATA sc_in sc_lv 32 signal 14 } 
	{ stream_in_2_TVALID sc_in sc_logic 1 invld 20 } 
	{ stream_in_2_TREADY sc_out sc_logic 1 inacc 20 } 
	{ stream_in_2_TKEEP sc_in sc_lv 4 signal 15 } 
	{ stream_in_2_TSTRB sc_in sc_lv 4 signal 16 } 
	{ stream_in_2_TUSER sc_in sc_lv 2 signal 17 } 
	{ stream_in_2_TLAST sc_in sc_lv 1 signal 18 } 
	{ stream_in_2_TID sc_in sc_lv 5 signal 19 } 
	{ stream_in_2_TDEST sc_in sc_lv 6 signal 20 } 
	{ stream_in_3_TDATA sc_in sc_lv 32 signal 21 } 
	{ stream_in_3_TVALID sc_in sc_logic 1 invld 27 } 
	{ stream_in_3_TREADY sc_out sc_logic 1 inacc 27 } 
	{ stream_in_3_TKEEP sc_in sc_lv 4 signal 22 } 
	{ stream_in_3_TSTRB sc_in sc_lv 4 signal 23 } 
	{ stream_in_3_TUSER sc_in sc_lv 2 signal 24 } 
	{ stream_in_3_TLAST sc_in sc_lv 1 signal 25 } 
	{ stream_in_3_TID sc_in sc_lv 5 signal 26 } 
	{ stream_in_3_TDEST sc_in sc_lv 6 signal 27 } 
	{ stream_in_4_TDATA sc_in sc_lv 32 signal 28 } 
	{ stream_in_4_TVALID sc_in sc_logic 1 invld 34 } 
	{ stream_in_4_TREADY sc_out sc_logic 1 inacc 34 } 
	{ stream_in_4_TKEEP sc_in sc_lv 4 signal 29 } 
	{ stream_in_4_TSTRB sc_in sc_lv 4 signal 30 } 
	{ stream_in_4_TUSER sc_in sc_lv 2 signal 31 } 
	{ stream_in_4_TLAST sc_in sc_lv 1 signal 32 } 
	{ stream_in_4_TID sc_in sc_lv 5 signal 33 } 
	{ stream_in_4_TDEST sc_in sc_lv 6 signal 34 } 
	{ stream_in_5_TDATA sc_in sc_lv 32 signal 35 } 
	{ stream_in_5_TVALID sc_in sc_logic 1 invld 41 } 
	{ stream_in_5_TREADY sc_out sc_logic 1 inacc 41 } 
	{ stream_in_5_TKEEP sc_in sc_lv 4 signal 36 } 
	{ stream_in_5_TSTRB sc_in sc_lv 4 signal 37 } 
	{ stream_in_5_TUSER sc_in sc_lv 2 signal 38 } 
	{ stream_in_5_TLAST sc_in sc_lv 1 signal 39 } 
	{ stream_in_5_TID sc_in sc_lv 5 signal 40 } 
	{ stream_in_5_TDEST sc_in sc_lv 6 signal 41 } 
	{ stream_in_6_TDATA sc_in sc_lv 32 signal 42 } 
	{ stream_in_6_TVALID sc_in sc_logic 1 invld 48 } 
	{ stream_in_6_TREADY sc_out sc_logic 1 inacc 48 } 
	{ stream_in_6_TKEEP sc_in sc_lv 4 signal 43 } 
	{ stream_in_6_TSTRB sc_in sc_lv 4 signal 44 } 
	{ stream_in_6_TUSER sc_in sc_lv 2 signal 45 } 
	{ stream_in_6_TLAST sc_in sc_lv 1 signal 46 } 
	{ stream_in_6_TID sc_in sc_lv 5 signal 47 } 
	{ stream_in_6_TDEST sc_in sc_lv 6 signal 48 } 
	{ stream_in_7_TDATA sc_in sc_lv 32 signal 49 } 
	{ stream_in_7_TVALID sc_in sc_logic 1 invld 55 } 
	{ stream_in_7_TREADY sc_out sc_logic 1 inacc 55 } 
	{ stream_in_7_TKEEP sc_in sc_lv 4 signal 50 } 
	{ stream_in_7_TSTRB sc_in sc_lv 4 signal 51 } 
	{ stream_in_7_TUSER sc_in sc_lv 2 signal 52 } 
	{ stream_in_7_TLAST sc_in sc_lv 1 signal 53 } 
	{ stream_in_7_TID sc_in sc_lv 5 signal 54 } 
	{ stream_in_7_TDEST sc_in sc_lv 6 signal 55 } 
	{ switches sc_in sc_lv 8 signal 56 } 
	{ mix_out_TDATA sc_out sc_lv 32 signal 57 } 
	{ mix_out_TVALID sc_out sc_logic 1 outvld 63 } 
	{ mix_out_TREADY sc_in sc_logic 1 outacc 63 } 
	{ mix_out_TKEEP sc_out sc_lv 4 signal 58 } 
	{ mix_out_TSTRB sc_out sc_lv 4 signal 59 } 
	{ mix_out_TUSER sc_out sc_lv 2 signal 60 } 
	{ mix_out_TLAST sc_out sc_lv 1 signal 61 } 
	{ mix_out_TID sc_out sc_lv 5 signal 62 } 
	{ mix_out_TDEST sc_out sc_lv 6 signal 63 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mixer","role":"start","value":"0","valid_bit":"0"},{"name":"mixer","role":"continue","value":"0","valid_bit":"4"},{"name":"mixer","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"mixer","role":"start","value":"0","valid_bit":"0"},{"name":"mixer","role":"done","value":"0","valid_bit":"1"},{"name":"mixer","role":"idle","value":"0","valid_bit":"2"},{"name":"mixer","role":"ready","value":"0","valid_bit":"3"},{"name":"mixer","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "stream_in_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_0_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_0_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_0_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_0_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_0_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_0_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_0_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_0_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_1_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_1_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_1_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_1_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_1_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_1_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_1_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_1_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_2_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_2_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_2_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_2_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_2_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_2_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_2_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_2_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_2_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_3_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_3_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_3_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_3_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_3_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_3_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_3_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_3_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_3_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_3_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_4_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_4_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_4_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_4_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_4_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_4_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_4_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_4_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_4_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_4_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_5_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_5_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_5_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_5_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_5_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_5_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_5_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_5_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_5_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_5_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_6_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_6_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_6_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_6_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_6_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_6_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_6_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_6_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_6_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_6_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_7_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_7_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_7_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_7_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_7_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stream_in_7_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_7_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_7_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_7_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stream_in_7_V_dest_V", "role": "default" }} , 
 	{ "name": "switches", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "switches", "role": "default" }} , 
 	{ "name": "mix_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mix_out_V_data_V", "role": "default" }} , 
 	{ "name": "mix_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mix_out_V_dest_V", "role": "default" }} , 
 	{ "name": "mix_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mix_out_V_dest_V", "role": "default" }} , 
 	{ "name": "mix_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_out_V_keep_V", "role": "default" }} , 
 	{ "name": "mix_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_out_V_strb_V", "role": "default" }} , 
 	{ "name": "mix_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mix_out_V_user_V", "role": "default" }} , 
 	{ "name": "mix_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_out_V_last_V", "role": "default" }} , 
 	{ "name": "mix_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mix_out_V_id_V", "role": "default" }} , 
 	{ "name": "mix_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mix_out_V_dest_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	mixer {
		stream_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_dest_V {Type I LastRead 0 FirstWrite -1}
		switches {Type I LastRead 0 FirstWrite -1}
		mix_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}
	mixer_Pipeline_VITIS_LOOP_30_1 {
		active_14 {Type I LastRead 0 FirstWrite -1}
		mix_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		mix_out_V_dest_V {Type O LastRead -1 FirstWrite 2}
		stream_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_0_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_3_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_4_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_5_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_6_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_in_7_V_dest_V {Type I LastRead 0 FirstWrite -1}
		empty_16 {Type I LastRead 0 FirstWrite -1}
		empty_17 {Type I LastRead 0 FirstWrite -1}
		empty_18 {Type I LastRead 0 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		out_pkt_data_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "208", "Max" : "20008"}
	, {"Name" : "Interval", "Min" : "209", "Max" : "20009"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_0_V_data_V { axis {  { stream_in_0_TDATA in_data 0 32 } } }
	stream_in_0_V_keep_V { axis {  { stream_in_0_TKEEP in_data 0 4 } } }
	stream_in_0_V_strb_V { axis {  { stream_in_0_TSTRB in_data 0 4 } } }
	stream_in_0_V_user_V { axis {  { stream_in_0_TUSER in_data 0 2 } } }
	stream_in_0_V_last_V { axis {  { stream_in_0_TLAST in_data 0 1 } } }
	stream_in_0_V_id_V { axis {  { stream_in_0_TID in_data 0 5 } } }
	stream_in_0_V_dest_V { axis {  { stream_in_0_TVALID in_vld 0 1 }  { stream_in_0_TREADY in_acc 1 1 }  { stream_in_0_TDEST in_data 0 6 } } }
	stream_in_1_V_data_V { axis {  { stream_in_1_TDATA in_data 0 32 } } }
	stream_in_1_V_keep_V { axis {  { stream_in_1_TKEEP in_data 0 4 } } }
	stream_in_1_V_strb_V { axis {  { stream_in_1_TSTRB in_data 0 4 } } }
	stream_in_1_V_user_V { axis {  { stream_in_1_TUSER in_data 0 2 } } }
	stream_in_1_V_last_V { axis {  { stream_in_1_TLAST in_data 0 1 } } }
	stream_in_1_V_id_V { axis {  { stream_in_1_TID in_data 0 5 } } }
	stream_in_1_V_dest_V { axis {  { stream_in_1_TVALID in_vld 0 1 }  { stream_in_1_TREADY in_acc 1 1 }  { stream_in_1_TDEST in_data 0 6 } } }
	stream_in_2_V_data_V { axis {  { stream_in_2_TDATA in_data 0 32 } } }
	stream_in_2_V_keep_V { axis {  { stream_in_2_TKEEP in_data 0 4 } } }
	stream_in_2_V_strb_V { axis {  { stream_in_2_TSTRB in_data 0 4 } } }
	stream_in_2_V_user_V { axis {  { stream_in_2_TUSER in_data 0 2 } } }
	stream_in_2_V_last_V { axis {  { stream_in_2_TLAST in_data 0 1 } } }
	stream_in_2_V_id_V { axis {  { stream_in_2_TID in_data 0 5 } } }
	stream_in_2_V_dest_V { axis {  { stream_in_2_TVALID in_vld 0 1 }  { stream_in_2_TREADY in_acc 1 1 }  { stream_in_2_TDEST in_data 0 6 } } }
	stream_in_3_V_data_V { axis {  { stream_in_3_TDATA in_data 0 32 } } }
	stream_in_3_V_keep_V { axis {  { stream_in_3_TKEEP in_data 0 4 } } }
	stream_in_3_V_strb_V { axis {  { stream_in_3_TSTRB in_data 0 4 } } }
	stream_in_3_V_user_V { axis {  { stream_in_3_TUSER in_data 0 2 } } }
	stream_in_3_V_last_V { axis {  { stream_in_3_TLAST in_data 0 1 } } }
	stream_in_3_V_id_V { axis {  { stream_in_3_TID in_data 0 5 } } }
	stream_in_3_V_dest_V { axis {  { stream_in_3_TVALID in_vld 0 1 }  { stream_in_3_TREADY in_acc 1 1 }  { stream_in_3_TDEST in_data 0 6 } } }
	stream_in_4_V_data_V { axis {  { stream_in_4_TDATA in_data 0 32 } } }
	stream_in_4_V_keep_V { axis {  { stream_in_4_TKEEP in_data 0 4 } } }
	stream_in_4_V_strb_V { axis {  { stream_in_4_TSTRB in_data 0 4 } } }
	stream_in_4_V_user_V { axis {  { stream_in_4_TUSER in_data 0 2 } } }
	stream_in_4_V_last_V { axis {  { stream_in_4_TLAST in_data 0 1 } } }
	stream_in_4_V_id_V { axis {  { stream_in_4_TID in_data 0 5 } } }
	stream_in_4_V_dest_V { axis {  { stream_in_4_TVALID in_vld 0 1 }  { stream_in_4_TREADY in_acc 1 1 }  { stream_in_4_TDEST in_data 0 6 } } }
	stream_in_5_V_data_V { axis {  { stream_in_5_TDATA in_data 0 32 } } }
	stream_in_5_V_keep_V { axis {  { stream_in_5_TKEEP in_data 0 4 } } }
	stream_in_5_V_strb_V { axis {  { stream_in_5_TSTRB in_data 0 4 } } }
	stream_in_5_V_user_V { axis {  { stream_in_5_TUSER in_data 0 2 } } }
	stream_in_5_V_last_V { axis {  { stream_in_5_TLAST in_data 0 1 } } }
	stream_in_5_V_id_V { axis {  { stream_in_5_TID in_data 0 5 } } }
	stream_in_5_V_dest_V { axis {  { stream_in_5_TVALID in_vld 0 1 }  { stream_in_5_TREADY in_acc 1 1 }  { stream_in_5_TDEST in_data 0 6 } } }
	stream_in_6_V_data_V { axis {  { stream_in_6_TDATA in_data 0 32 } } }
	stream_in_6_V_keep_V { axis {  { stream_in_6_TKEEP in_data 0 4 } } }
	stream_in_6_V_strb_V { axis {  { stream_in_6_TSTRB in_data 0 4 } } }
	stream_in_6_V_user_V { axis {  { stream_in_6_TUSER in_data 0 2 } } }
	stream_in_6_V_last_V { axis {  { stream_in_6_TLAST in_data 0 1 } } }
	stream_in_6_V_id_V { axis {  { stream_in_6_TID in_data 0 5 } } }
	stream_in_6_V_dest_V { axis {  { stream_in_6_TVALID in_vld 0 1 }  { stream_in_6_TREADY in_acc 1 1 }  { stream_in_6_TDEST in_data 0 6 } } }
	stream_in_7_V_data_V { axis {  { stream_in_7_TDATA in_data 0 32 } } }
	stream_in_7_V_keep_V { axis {  { stream_in_7_TKEEP in_data 0 4 } } }
	stream_in_7_V_strb_V { axis {  { stream_in_7_TSTRB in_data 0 4 } } }
	stream_in_7_V_user_V { axis {  { stream_in_7_TUSER in_data 0 2 } } }
	stream_in_7_V_last_V { axis {  { stream_in_7_TLAST in_data 0 1 } } }
	stream_in_7_V_id_V { axis {  { stream_in_7_TID in_data 0 5 } } }
	stream_in_7_V_dest_V { axis {  { stream_in_7_TVALID in_vld 0 1 }  { stream_in_7_TREADY in_acc 1 1 }  { stream_in_7_TDEST in_data 0 6 } } }
	switches { ap_none {  { switches in_data 0 8 } } }
	mix_out_V_data_V { axis {  { mix_out_TDATA out_data 1 32 } } }
	mix_out_V_keep_V { axis {  { mix_out_TKEEP out_data 1 4 } } }
	mix_out_V_strb_V { axis {  { mix_out_TSTRB out_data 1 4 } } }
	mix_out_V_user_V { axis {  { mix_out_TUSER out_data 1 2 } } }
	mix_out_V_last_V { axis {  { mix_out_TLAST out_data 1 1 } } }
	mix_out_V_id_V { axis {  { mix_out_TID out_data 1 5 } } }
	mix_out_V_dest_V { axis {  { mix_out_TVALID out_vld 1 1 }  { mix_out_TREADY out_acc 0 1 }  { mix_out_TDEST out_data 1 6 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
