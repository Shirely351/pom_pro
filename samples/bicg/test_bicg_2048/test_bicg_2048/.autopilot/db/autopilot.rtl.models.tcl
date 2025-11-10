set SynModuleInfo {
  {SRCNAME test_bicg_2048 MODELNAME test_bicg_2048 RTLNAME test_bicg_2048 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_bicg_2048_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_bicg_2048_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_bicg_2048_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_bicg_2048_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_bicg_2048_mux_325_32_1_1 RTLNAME test_bicg_2048_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_bicg_2048_mux_164_32_1_1 RTLNAME test_bicg_2048_mux_164_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_bicg_2048_ctrl_s_axi RTLNAME test_bicg_2048_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME test_bicg_2048_flow_control_loop_pipe RTLNAME test_bicg_2048_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_bicg_2048_flow_control_loop_pipe_U}
    }
  }
}
