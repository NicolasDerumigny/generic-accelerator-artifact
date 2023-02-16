set SynModuleInfo {
  {SRCNAME recv_data_burst_Pipeline_VITIS_LOOP_40_1 MODELNAME recv_data_burst_Pipeline_VITIS_LOOP_40_1 RTLNAME corr_accel_recv_data_burst_Pipeline_VITIS_LOOP_40_1
    SUBMODULES {
      {MODELNAME corr_accel_flow_control_loop_pipe_sequential_init RTLNAME corr_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME corr_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME recv_data_burst MODELNAME recv_data_burst RTLNAME corr_accel_recv_data_burst}
  {SRCNAME compute_Pipeline_VITIS_LOOP_132_2 MODELNAME compute_Pipeline_VITIS_LOOP_132_2 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_132_2}
  {SRCNAME compute_Pipeline_VITIS_LOOP_138_3_VITIS_LOOP_141_4 MODELNAME compute_Pipeline_VITIS_LOOP_138_3_VITIS_LOOP_141_4 RTLNAME corr_accel_compute_Pipeline_VITIS_LOOP_138_3_VITIS_LOOP_141_4
    SUBMODULES {
      {MODELNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 RTLNAME corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 BINDTYPE op TYPE hadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 RTLNAME corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 BINDTYPE op TYPE hmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_mux_21_16_1_1 RTLNAME corr_accel_mux_21_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute MODELNAME compute RTLNAME corr_accel_compute}
  {SRCNAME send_data_burst_Pipeline_VITIS_LOOP_85_1 MODELNAME send_data_burst_Pipeline_VITIS_LOOP_85_1 RTLNAME corr_accel_send_data_burst_Pipeline_VITIS_LOOP_85_1
    SUBMODULES {
      {MODELNAME corr_accel_mux_83_16_1_1 RTLNAME corr_accel_mux_83_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send_data_burst MODELNAME send_data_burst RTLNAME corr_accel_send_data_burst}
  {SRCNAME corr_accel MODELNAME corr_accel RTLNAME corr_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME corr_accel_reg_file_RAM_T2P_BRAM_1R1W RTLNAME corr_accel_reg_file_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME corr_accel_data_m_axi RTLNAME corr_accel_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME corr_accel_control_s_axi RTLNAME corr_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
