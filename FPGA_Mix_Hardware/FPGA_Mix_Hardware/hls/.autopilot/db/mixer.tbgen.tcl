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
	{ stream_in_V_data_V int 128 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 16 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 16 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ switches int 8 regular  }
	{ mix_out_V_data_V int 32 regular {axi_s 1 volatile  { mix_out Data } }  }
	{ mix_out_V_keep_V int 4 regular {axi_s 1 volatile  { mix_out Keep } }  }
	{ mix_out_V_strb_V int 4 regular {axi_s 1 volatile  { mix_out Strb } }  }
	{ mix_out_V_last_V int 1 regular {axi_s 1 volatile  { mix_out Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "switches", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mix_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mix_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_TDATA sc_in sc_lv 128 signal 0 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ stream_in_TKEEP sc_in sc_lv 16 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 16 signal 2 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ switches sc_in sc_lv 8 signal 4 } 
	{ mix_out_TDATA sc_out sc_lv 32 signal 5 } 
	{ mix_out_TVALID sc_out sc_logic 1 outvld 8 } 
	{ mix_out_TREADY sc_in sc_logic 1 outacc 8 } 
	{ mix_out_TKEEP sc_out sc_lv 4 signal 6 } 
	{ mix_out_TSTRB sc_out sc_lv 4 signal 7 } 
	{ mix_out_TLAST sc_out sc_lv 1 signal 8 } 
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
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "switches", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "switches", "role": "default" }} , 
 	{ "name": "mix_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mix_out_V_data_V", "role": "default" }} , 
 	{ "name": "mix_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mix_out_V_last_V", "role": "default" }} , 
 	{ "name": "mix_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mix_out_V_last_V", "role": "default" }} , 
 	{ "name": "mix_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_out_V_keep_V", "role": "default" }} , 
 	{ "name": "mix_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_out_V_strb_V", "role": "default" }} , 
 	{ "name": "mix_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_out_V_last_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	mixer {
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		switches {Type I LastRead 0 FirstWrite -1}
		mix_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		current_gain_q16 {Type IO LastRead -1 FirstWrite -1}
		comp_gain_lut {Type I LastRead -1 FirstWrite -1}}
	mixer_Pipeline_VITIS_LOOP_27_1 {
		current_gain_q16_load {Type I LastRead 0 FirstWrite -1}
		mix_out_V_data_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_keep_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_strb_V {Type O LastRead -1 FirstWrite 5}
		mix_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		empty_9 {Type I LastRead 0 FirstWrite -1}
		empty_10 {Type I LastRead 0 FirstWrite -1}
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		empty_13 {Type I LastRead 0 FirstWrite -1}
		empty_14 {Type I LastRead 0 FirstWrite -1}
		empty_15 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		active_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln49 {Type I LastRead 0 FirstWrite -1}
		add_ln68_out {Type O LastRead -1 FirstWrite 5}
		comp_gain_lut {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 128 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 16 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 16 } } }
	stream_in_V_last_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 }  { stream_in_TLAST in_data 0 1 } } }
	switches { ap_none {  { switches in_data 0 8 } } }
	mix_out_V_data_V { axis {  { mix_out_TDATA out_data 1 32 } } }
	mix_out_V_keep_V { axis {  { mix_out_TKEEP out_data 1 4 } } }
	mix_out_V_strb_V { axis {  { mix_out_TSTRB out_data 1 4 } } }
	mix_out_V_last_V { axis {  { mix_out_TVALID out_vld 1 1 }  { mix_out_TREADY out_acc 0 1 }  { mix_out_TLAST out_data 1 1 } } }
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
