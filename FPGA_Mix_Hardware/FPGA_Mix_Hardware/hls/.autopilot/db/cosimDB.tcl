

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
		"CDFG" : "mixer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "208", "EstimateLatencyMax" : "20008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_0_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_0_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_2_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_3_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_3_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_4_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_4_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_5_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_5_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_6_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_6_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_7_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "stream_in_7_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "switches", "Type" : "None", "Direction" : "I"},
			{"Name" : "mix_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"BlockSignal" : [
					{"Name" : "mix_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mix_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Port" : "mix_out_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "mixer_Pipeline_VITIS_LOOP_30_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "204", "EstimateLatencyMax" : "20004",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "active_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "mix_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out",
				"BlockSignal" : [
					{"Name" : "mix_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mix_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "mix_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "mix_out_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "mix_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "mix_out_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "mix_out_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mix_out"},
			{"Name" : "stream_in_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0",
				"BlockSignal" : [
					{"Name" : "stream_in_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_0_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_0_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_0_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_0"},
			{"Name" : "stream_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1",
				"BlockSignal" : [
					{"Name" : "stream_in_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_1"},
			{"Name" : "stream_in_2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2",
				"BlockSignal" : [
					{"Name" : "stream_in_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_2"},
			{"Name" : "stream_in_3_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3",
				"BlockSignal" : [
					{"Name" : "stream_in_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_3_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_3_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_3_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_3_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_3_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_3_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_3"},
			{"Name" : "stream_in_4_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4",
				"BlockSignal" : [
					{"Name" : "stream_in_4_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_4_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_4_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_4_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_4_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_4_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_4_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_4"},
			{"Name" : "stream_in_5_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5",
				"BlockSignal" : [
					{"Name" : "stream_in_5_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_5_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_5_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_5_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_5_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_5_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_5_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_5"},
			{"Name" : "stream_in_6_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6",
				"BlockSignal" : [
					{"Name" : "stream_in_6_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_6_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_6_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_6_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_6_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_6_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_6_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_6"},
			{"Name" : "stream_in_7_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7",
				"BlockSignal" : [
					{"Name" : "stream_in_7_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_7_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "stream_in_7_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "stream_in_7_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "stream_in_7_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "stream_in_7_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "stream_in_7_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in_7"},
			{"Name" : "empty_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pkt_data_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255.mul_9ns_32s_40_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255.sparsemux_17_4_9_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mixer_Pipeline_VITIS_LOOP_30_1_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_user_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_id_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_0_V_dest_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_user_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_id_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_1_V_dest_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_keep_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_strb_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_user_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_last_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_id_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_2_V_dest_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_keep_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_strb_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_user_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_last_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_id_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_3_V_dest_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_data_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_keep_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_strb_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_user_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_last_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_id_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_4_V_dest_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_data_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_keep_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_strb_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_user_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_last_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_id_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_5_V_dest_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_data_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_keep_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_strb_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_user_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_last_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_id_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_6_V_dest_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_data_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_keep_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_strb_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_user_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_last_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_id_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_7_V_dest_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mix_out_V_dest_V_U", "Parent" : "0"}]}
