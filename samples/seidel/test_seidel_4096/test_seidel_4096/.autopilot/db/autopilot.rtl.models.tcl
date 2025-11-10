set SynModuleInfo {
  {SRCNAME test_seidel_4096_Pipeline_VITIS_LOOP_40_3 MODELNAME test_seidel_4096_Pipeline_VITIS_LOOP_40_3 RTLNAME test_seidel_4096_test_seidel_4096_Pipeline_VITIS_LOOP_40_3
    SUBMODULES {
      {MODELNAME test_seidel_4096_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_seidel_4096_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME test_seidel_4096_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_urem_64ns_3ns_2_68_1 RTLNAME test_seidel_4096_urem_64ns_3ns_2_68_1 BINDTYPE op TYPE urem IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_mul_64ns_66ns_129_5_1 RTLNAME test_seidel_4096_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_mux_32_32_1_1 RTLNAME test_seidel_4096_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_mul_mul_21s_11ns_21_4_1 RTLNAME test_seidel_4096_mul_mul_21s_11ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_seidel_4096_flow_control_loop_pipe_sequential_init RTLNAME test_seidel_4096_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_seidel_4096_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_seidel_4096 MODELNAME test_seidel_4096 RTLNAME test_seidel_4096 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_seidel_4096_ctrl_s_axi RTLNAME test_seidel_4096_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
