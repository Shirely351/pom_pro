set SynModuleInfo {
  {SRCNAME test_blur_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2 MODELNAME test_blur_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2 RTLNAME test_blur_4096_test_blur_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2
    SUBMODULES {
      {MODELNAME test_blur_4096_mux_21_32_1_1 RTLNAME test_blur_4096_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_blur_4096_flow_control_loop_pipe_sequential_init RTLNAME test_blur_4096_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_blur_4096_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_blur_4096_Pipeline_VITIS_LOOP_127_3_VITIS_LOOP_128_4 MODELNAME test_blur_4096_Pipeline_VITIS_LOOP_127_3_VITIS_LOOP_128_4 RTLNAME test_blur_4096_test_blur_4096_Pipeline_VITIS_LOOP_127_3_VITIS_LOOP_128_4}
  {SRCNAME test_blur_4096 MODELNAME test_blur_4096 RTLNAME test_blur_4096 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_blur_4096_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_blur_4096_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_blur_4096_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME test_blur_4096_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME test_blur_4096_ctrl_s_axi RTLNAME test_blur_4096_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
