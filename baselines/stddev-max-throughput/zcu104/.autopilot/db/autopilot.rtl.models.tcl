set SynModuleInfo {
  {SRCNAME recv_data_burst MODELNAME recv_data_burst RTLNAME corr_accel_recv_data_burst
    SUBMODULES {
      {MODELNAME corr_accel_flow_control_loop_pipe_sequential_init RTLNAME corr_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME corr_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_134_1 MODELNAME compute_Pipeline_VITIS_LOOP_134_1 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_134_1}
  {SRCNAME compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3 MODELNAME compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3}
  {SRCNAME compute_Pipeline_VITIS_LOOP_150_4 MODELNAME compute_Pipeline_VITIS_LOOP_150_4 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_150_4}
  {SRCNAME compute_Pipeline_VITIS_LOOP_156_5 MODELNAME compute_Pipeline_VITIS_LOOP_156_5 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_156_5}
  {SRCNAME compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7 MODELNAME compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7}
  {SRCNAME compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9 MODELNAME compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9
    SUBMODULES {
      {MODELNAME corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 RTLNAME corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 BINDTYPE op TYPE hmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_mux_21_16_1_1 RTLNAME corr_accel_mux_21_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11 MODELNAME compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11}
  {SRCNAME compute_Pipeline_VITIS_LOOP_190_12 MODELNAME compute_Pipeline_VITIS_LOOP_190_12 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_190_12}
  {SRCNAME compute_Pipeline_VITIS_LOOP_199_13 MODELNAME compute_Pipeline_VITIS_LOOP_199_13 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_199_13
    SUBMODULES {
      {MODELNAME corr_accel_hsqrt_16ns_16_4_no_dsp_1 RTLNAME corr_accel_hsqrt_16ns_16_4_no_dsp_1 BINDTYPE op TYPE hsqrt IMPL fabric LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute MODELNAME compute RTLNAME corr_accel_compute
    SUBMODULES {
      {MODELNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 RTLNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 BINDTYPE op TYPE hadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1 RTLNAME corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1 BINDTYPE op TYPE hdiv IMPL fabric LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send_data_burst MODELNAME send_data_burst RTLNAME corr_accel_send_data_burst
    SUBMODULES {
      {MODELNAME corr_accel_mux_164_16_1_1 RTLNAME corr_accel_mux_164_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME corr_accel MODELNAME corr_accel RTLNAME corr_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME corr_accel_reg_file_RAM_T2P_BRAM_1R1W RTLNAME corr_accel_reg_file_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_control_s_axi RTLNAME corr_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
