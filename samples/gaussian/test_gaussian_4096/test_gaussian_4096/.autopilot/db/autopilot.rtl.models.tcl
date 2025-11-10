set SynModuleInfo {
  {SRCNAME test_gaussian_4096_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2 MODELNAME test_gaussian_4096_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2 RTLNAME test_gaussian_4096_test_gaussian_4096_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2
    SUBMODULES {
      {MODELNAME test_gaussian_4096_mac_muladd_11ns_11ns_11ns_21_4_1 RTLNAME test_gaussian_4096_mac_muladd_11ns_11ns_11ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_flow_control_loop_pipe_sequential_init RTLNAME test_gaussian_4096_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_gaussian_4096_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_gaussian_4096_Pipeline_VITIS_LOOP_117_3_VITIS_LOOP_118_4_VITIS_LOOP_119_5 MODELNAME test_gaussian_4096_Pipeline_VITIS_LOOP_117_3_VITIS_LOOP_118_4_VITIS_LOOP_119_5 RTLNAME test_gaussian_4096_test_gaussian_4096_Pipeline_VITIS_LOOP_117_3_VITIS_LOOP_118_4_VITIS_LOOP_119_5
    SUBMODULES {
      {MODELNAME test_gaussian_4096_urem_3ns_3ns_2_7_1 RTLNAME test_gaussian_4096_urem_3ns_3ns_2_7_1 BINDTYPE op TYPE urem IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_mul_3ns_5ns_7_1_1 RTLNAME test_gaussian_4096_mul_3ns_5ns_7_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_mul_64ns_66ns_129_5_1 RTLNAME test_gaussian_4096_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_mul_4ns_6ns_9_1_1 RTLNAME test_gaussian_4096_mul_4ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_mux_32_32_1_1 RTLNAME test_gaussian_4096_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_mac_muladd_21s_11ns_11ns_21_4_1 RTLNAME test_gaussian_4096_mac_muladd_21s_11ns_11ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_gaussian_4096_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_261_7_VITIS_LOOP_262_8 MODELNAME test_gaussian_4096_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_261_7_VITIS_LOOP_262_8 RTLNAME test_gaussian_4096_test_gaussian_4096_Pipeline_VITIS_LOOP_260_6_VITIS_LOOP_261_7_VITIS_LOOP_262_8
    SUBMODULES {
      {MODELNAME test_gaussian_4096_mul_mul_11ns_11ns_21_4_1 RTLNAME test_gaussian_4096_mul_mul_11ns_11ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_gaussian_4096 MODELNAME test_gaussian_4096 RTLNAME test_gaussian_4096 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_gaussian_4096_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_gaussian_4096_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_gaussian_4096_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_gaussian_4096_ctrl_s_axi RTLNAME test_gaussian_4096_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
