set SynModuleInfo {
  {SRCNAME test_2mm_2048_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2 MODELNAME test_2mm_2048_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2 RTLNAME test_2mm_2048_test_2mm_2048_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2
    SUBMODULES {
      {MODELNAME test_2mm_2048_flow_control_loop_pipe_sequential_init RTLNAME test_2mm_2048_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_2mm_2048_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_2mm_2048_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_194_4_VITIS_LOOP_195_5 MODELNAME test_2mm_2048_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_194_4_VITIS_LOOP_195_5 RTLNAME test_2mm_2048_test_2mm_2048_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_194_4_VITIS_LOOP_195_5
    SUBMODULES {
      {MODELNAME test_2mm_2048_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_2mm_2048_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_2mm_2048_Pipeline_VITIS_LOOP_744_6_VITIS_LOOP_745_7 MODELNAME test_2mm_2048_Pipeline_VITIS_LOOP_744_6_VITIS_LOOP_745_7 RTLNAME test_2mm_2048_test_2mm_2048_Pipeline_VITIS_LOOP_744_6_VITIS_LOOP_745_7}
  {SRCNAME test_2mm_2048_Pipeline_VITIS_LOOP_1133_8_VITIS_LOOP_1134_9_VITIS_LOOP_1135_10 MODELNAME test_2mm_2048_Pipeline_VITIS_LOOP_1133_8_VITIS_LOOP_1134_9_VITIS_LOOP_1135_10 RTLNAME test_2mm_2048_test_2mm_2048_Pipeline_VITIS_LOOP_1133_8_VITIS_LOOP_1134_9_VITIS_LOOP_1135_10
    SUBMODULES {
      {MODELNAME test_2mm_2048_mux_164_32_1_1 RTLNAME test_2mm_2048_mux_164_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_2mm_2048 MODELNAME test_2mm_2048 RTLNAME test_2mm_2048 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_2mm_2048_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_2mm_2048_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_2mm_2048_ctrl_s_axi RTLNAME test_2mm_2048_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
