set SynModuleInfo {
  {SRCNAME mixer_Pipeline_VITIS_LOOP_30_1 MODELNAME mixer_Pipeline_VITIS_LOOP_30_1 RTLNAME mixer_mixer_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME mixer_mul_9ns_32s_40_1_1 RTLNAME mixer_mul_9ns_32s_40_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mixer_sparsemux_17_4_9_1_1 RTLNAME mixer_sparsemux_17_4_9_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME mixer_flow_control_loop_pipe_sequential_init RTLNAME mixer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mixer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mixer MODELNAME mixer RTLNAME mixer IS_TOP 1
    SUBMODULES {
      {MODELNAME mixer_control_s_axi RTLNAME mixer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mixer_regslice_both RTLNAME mixer_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
