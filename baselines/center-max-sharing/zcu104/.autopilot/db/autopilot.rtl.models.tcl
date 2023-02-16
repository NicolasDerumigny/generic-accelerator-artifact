set SynModuleInfo {
  {SRCNAME recv_data_burst MODELNAME recv_data_burst RTLNAME corr_accel_recv_data_burst
    SUBMODULES {
      {MODELNAME corr_accel_flow_control_loop_pipe_sequential_init RTLNAME corr_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME corr_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_134_1 MODELNAME compute_Pipeline_VITIS_LOOP_134_1 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_134_1}
  {SRCNAME compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3 MODELNAME compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3
    SUBMODULES {
      {MODELNAME corr_accel_mux_21_16_1_1 RTLNAME corr_accel_mux_21_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_154_4 MODELNAME compute_Pipeline_VITIS_LOOP_154_4 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_154_4
    SUBMODULES {
      {MODELNAME corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1 RTLNAME corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1 BINDTYPE op TYPE hdiv IMPL fabric LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_162_5_VITIS_LOOP_163_6 MODELNAME compute_Pipeline_VITIS_LOOP_162_5_VITIS_LOOP_163_6 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_162_5_VITIS_LOOP_163_6}
  {SRCNAME compute MODELNAME compute RTLNAME corr_accel_compute
    SUBMODULES {
      {MODELNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 RTLNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 BINDTYPE op TYPE hadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
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
