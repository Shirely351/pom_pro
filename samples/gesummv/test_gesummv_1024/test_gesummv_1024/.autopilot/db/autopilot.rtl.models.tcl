set SynModuleInfo {
  {SRCNAME test_gesummv_1024_Pipeline_VITIS_LOOP_55_1_VITIS_LOOP_56_2 MODELNAME test_gesummv_1024_Pipeline_VITIS_LOOP_55_1_VITIS_LOOP_56_2 RTLNAME test_gesummv_1024_test_gesummv_1024_Pipeline_VITIS_LOOP_55_1_VITIS_LOOP_56_2
    SUBMODULES {
      {MODELNAME test_gesummv_1024_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_gesummv_1024_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_gesummv_1024_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_gesummv_1024_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_gesummv_1024_flow_control_loop_pipe_sequential_init RTLNAME test_gesummv_1024_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_gesummv_1024_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_gesummv_1024_Pipeline_VITIS_LOOP_221_3 MODELNAME test_gesummv_1024_Pipeline_VITIS_LOOP_221_3 RTLNAME test_gesummv_1024_test_gesummv_1024_Pipeline_VITIS_LOOP_221_3
    SUBMODULES {
      {MODELNAME test_gesummv_1024_mux_164_32_1_1 RTLNAME test_gesummv_1024_mux_164_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_gesummv_1024 MODELNAME test_gesummv_1024 RTLNAME test_gesummv_1024 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_gesummv_1024_ctrl_s_axi RTLNAME test_gesummv_1024_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
