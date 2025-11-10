set SynModuleInfo {
  {SRCNAME test_edgeDetect_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2 MODELNAME test_edgeDetect_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2 RTLNAME test_edgeDetect_4096_test_edgeDetect_4096_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2
    SUBMODULES {
      {MODELNAME test_edgeDetect_4096_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_edgeDetect_4096_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME test_edgeDetect_4096_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_urem_11ns_3ns_2_15_1 RTLNAME test_edgeDetect_4096_urem_11ns_3ns_2_15_1 BINDTYPE op TYPE urem IMPL auto LATENCY 14 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_mux_21_32_1_1 RTLNAME test_edgeDetect_4096_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_mul_mul_12ns_13ns_25_4_1 RTLNAME test_edgeDetect_4096_mul_mul_12ns_13ns_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_mul_mul_11ns_11ns_21_4_1 RTLNAME test_edgeDetect_4096_mul_mul_11ns_11ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_flow_control_loop_pipe_sequential_init RTLNAME test_edgeDetect_4096_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_edgeDetect_4096_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4 MODELNAME test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4 RTLNAME test_edgeDetect_4096_test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4
    SUBMODULES {
      {MODELNAME test_edgeDetect_4096_mux_32_32_1_1 RTLNAME test_edgeDetect_4096_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_edgeDetect_4096 MODELNAME test_edgeDetect_4096 RTLNAME test_edgeDetect_4096 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_edgeDetect_4096_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME test_edgeDetect_4096_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_edgeDetect_4096_ctrl_s_axi RTLNAME test_edgeDetect_4096_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
