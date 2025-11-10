set SynModuleInfo {
  {SRCNAME test_heat_4096_Pipeline_VITIS_LOOP_42_2 MODELNAME test_heat_4096_Pipeline_VITIS_LOOP_42_2 RTLNAME test_heat_4096_test_heat_4096_Pipeline_VITIS_LOOP_42_2
    SUBMODULES {
      {MODELNAME test_heat_4096_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME test_heat_4096_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_heat_4096_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_heat_4096_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_heat_4096_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_heat_4096_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_heat_4096_mux_21_32_1_1 RTLNAME test_heat_4096_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_heat_4096_flow_control_loop_pipe_sequential_init RTLNAME test_heat_4096_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_heat_4096_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_heat_4096_Pipeline_VITIS_LOOP_59_3 MODELNAME test_heat_4096_Pipeline_VITIS_LOOP_59_3 RTLNAME test_heat_4096_test_heat_4096_Pipeline_VITIS_LOOP_59_3}
  {SRCNAME test_heat_4096 MODELNAME test_heat_4096 RTLNAME test_heat_4096 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_heat_4096_ctrl_s_axi RTLNAME test_heat_4096_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
