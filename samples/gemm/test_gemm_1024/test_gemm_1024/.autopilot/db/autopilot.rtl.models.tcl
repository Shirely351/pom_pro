set SynModuleInfo {
  {SRCNAME test_gemm_1024_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 MODELNAME test_gemm_1024_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 RTLNAME test_gemm_1024_test_gemm_1024_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2
    SUBMODULES {
      {MODELNAME test_gemm_1024_flow_control_loop_pipe_sequential_init RTLNAME test_gemm_1024_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_gemm_1024_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_gemm_1024_Pipeline_VITIS_LOOP_148_3_VITIS_LOOP_149_4_VITIS_LOOP_150_5 MODELNAME test_gemm_1024_Pipeline_VITIS_LOOP_148_3_VITIS_LOOP_149_4_VITIS_LOOP_150_5 RTLNAME test_gemm_1024_test_gemm_1024_Pipeline_VITIS_LOOP_148_3_VITIS_LOOP_149_4_VITIS_LOOP_150_5
    SUBMODULES {
      {MODELNAME test_gemm_1024_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME test_gemm_1024_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_gemm_1024 MODELNAME test_gemm_1024 RTLNAME test_gemm_1024 IS_TOP 1
    SUBMODULES {
      {MODELNAME test_gemm_1024_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME test_gemm_1024_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME test_gemm_1024_ctrl_s_axi RTLNAME test_gemm_1024_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
