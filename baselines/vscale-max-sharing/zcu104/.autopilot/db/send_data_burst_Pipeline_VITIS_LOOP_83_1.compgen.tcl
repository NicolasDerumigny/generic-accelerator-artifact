# This script segment is generated automatically by AutoPilot

set id 73
set name corr_accel_mux_83_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 3
set din8_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name reg_file_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_0_0 \
    op interface \
    ports { reg_file_0_0_address0 { O 11 vector } reg_file_0_0_ce0 { O 1 bit } reg_file_0_0_q0 { I 16 vector } reg_file_0_0_address1 { O 11 vector } reg_file_0_0_ce1 { O 1 bit } reg_file_0_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name reg_file_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_0_1 \
    op interface \
    ports { reg_file_0_1_address0 { O 11 vector } reg_file_0_1_ce0 { O 1 bit } reg_file_0_1_q0 { I 16 vector } reg_file_0_1_address1 { O 11 vector } reg_file_0_1_ce1 { O 1 bit } reg_file_0_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name reg_file_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_1_0 \
    op interface \
    ports { reg_file_1_0_address0 { O 11 vector } reg_file_1_0_ce0 { O 1 bit } reg_file_1_0_q0 { I 16 vector } reg_file_1_0_address1 { O 11 vector } reg_file_1_0_ce1 { O 1 bit } reg_file_1_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name reg_file_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_1_1 \
    op interface \
    ports { reg_file_1_1_address0 { O 11 vector } reg_file_1_1_ce0 { O 1 bit } reg_file_1_1_q0 { I 16 vector } reg_file_1_1_address1 { O 11 vector } reg_file_1_1_ce1 { O 1 bit } reg_file_1_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name reg_file_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_2_0 \
    op interface \
    ports { reg_file_2_0_address0 { O 11 vector } reg_file_2_0_ce0 { O 1 bit } reg_file_2_0_q0 { I 16 vector } reg_file_2_0_address1 { O 11 vector } reg_file_2_0_ce1 { O 1 bit } reg_file_2_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name reg_file_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_2_1 \
    op interface \
    ports { reg_file_2_1_address0 { O 11 vector } reg_file_2_1_ce0 { O 1 bit } reg_file_2_1_q0 { I 16 vector } reg_file_2_1_address1 { O 11 vector } reg_file_2_1_ce1 { O 1 bit } reg_file_2_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name reg_file_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_3_0 \
    op interface \
    ports { reg_file_3_0_address0 { O 11 vector } reg_file_3_0_ce0 { O 1 bit } reg_file_3_0_q0 { I 16 vector } reg_file_3_0_address1 { O 11 vector } reg_file_3_0_ce1 { O 1 bit } reg_file_3_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name reg_file_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_3_1 \
    op interface \
    ports { reg_file_3_1_address0 { O 11 vector } reg_file_3_1_ce0 { O 1 bit } reg_file_3_1_q0 { I 16 vector } reg_file_3_1_address1 { O 11 vector } reg_file_3_1_ce1 { O 1 bit } reg_file_3_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name reg_file_4_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_4_0 \
    op interface \
    ports { reg_file_4_0_address0 { O 11 vector } reg_file_4_0_ce0 { O 1 bit } reg_file_4_0_q0 { I 16 vector } reg_file_4_0_address1 { O 11 vector } reg_file_4_0_ce1 { O 1 bit } reg_file_4_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name reg_file_4_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_4_1 \
    op interface \
    ports { reg_file_4_1_address0 { O 11 vector } reg_file_4_1_ce0 { O 1 bit } reg_file_4_1_q0 { I 16 vector } reg_file_4_1_address1 { O 11 vector } reg_file_4_1_ce1 { O 1 bit } reg_file_4_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name reg_file_5_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_5_0 \
    op interface \
    ports { reg_file_5_0_address0 { O 11 vector } reg_file_5_0_ce0 { O 1 bit } reg_file_5_0_q0 { I 16 vector } reg_file_5_0_address1 { O 11 vector } reg_file_5_0_ce1 { O 1 bit } reg_file_5_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name reg_file_5_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_5_1 \
    op interface \
    ports { reg_file_5_1_address0 { O 11 vector } reg_file_5_1_ce0 { O 1 bit } reg_file_5_1_q0 { I 16 vector } reg_file_5_1_address1 { O 11 vector } reg_file_5_1_ce1 { O 1 bit } reg_file_5_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name reg_file_6_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_6_0 \
    op interface \
    ports { reg_file_6_0_address0 { O 11 vector } reg_file_6_0_ce0 { O 1 bit } reg_file_6_0_q0 { I 16 vector } reg_file_6_0_address1 { O 11 vector } reg_file_6_0_ce1 { O 1 bit } reg_file_6_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name reg_file_6_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_6_1 \
    op interface \
    ports { reg_file_6_1_address0 { O 11 vector } reg_file_6_1_ce0 { O 1 bit } reg_file_6_1_q0 { I 16 vector } reg_file_6_1_address1 { O 11 vector } reg_file_6_1_ce1 { O 1 bit } reg_file_6_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name reg_file_7_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_7_0 \
    op interface \
    ports { reg_file_7_0_address0 { O 11 vector } reg_file_7_0_ce0 { O 1 bit } reg_file_7_0_q0 { I 16 vector } reg_file_7_0_address1 { O 11 vector } reg_file_7_0_ce1 { O 1 bit } reg_file_7_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name reg_file_7_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_7_1 \
    op interface \
    ports { reg_file_7_1_address0 { O 11 vector } reg_file_7_1_ce0 { O 1 bit } reg_file_7_1_q0 { I 16 vector } reg_file_7_1_address1 { O 11 vector } reg_file_7_1_ce1 { O 1 bit } reg_file_7_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name data \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data \
    op interface \
    ports { m_axi_data_AWVALID { O 1 bit } m_axi_data_AWREADY { I 1 bit } m_axi_data_AWADDR { O 64 vector } m_axi_data_AWID { O 1 vector } m_axi_data_AWLEN { O 32 vector } m_axi_data_AWSIZE { O 3 vector } m_axi_data_AWBURST { O 2 vector } m_axi_data_AWLOCK { O 2 vector } m_axi_data_AWCACHE { O 4 vector } m_axi_data_AWPROT { O 3 vector } m_axi_data_AWQOS { O 4 vector } m_axi_data_AWREGION { O 4 vector } m_axi_data_AWUSER { O 1 vector } m_axi_data_WVALID { O 1 bit } m_axi_data_WREADY { I 1 bit } m_axi_data_WDATA { O 64 vector } m_axi_data_WSTRB { O 8 vector } m_axi_data_WLAST { O 1 bit } m_axi_data_WID { O 1 vector } m_axi_data_WUSER { O 1 vector } m_axi_data_ARVALID { O 1 bit } m_axi_data_ARREADY { I 1 bit } m_axi_data_ARADDR { O 64 vector } m_axi_data_ARID { O 1 vector } m_axi_data_ARLEN { O 32 vector } m_axi_data_ARSIZE { O 3 vector } m_axi_data_ARBURST { O 2 vector } m_axi_data_ARLOCK { O 2 vector } m_axi_data_ARCACHE { O 4 vector } m_axi_data_ARPROT { O 3 vector } m_axi_data_ARQOS { O 4 vector } m_axi_data_ARREGION { O 4 vector } m_axi_data_ARUSER { O 1 vector } m_axi_data_RVALID { I 1 bit } m_axi_data_RREADY { O 1 bit } m_axi_data_RDATA { I 64 vector } m_axi_data_RLAST { I 1 bit } m_axi_data_RID { I 1 vector } m_axi_data_RFIFONUM { I 9 vector } m_axi_data_RUSER { I 1 vector } m_axi_data_RRESP { I 2 vector } m_axi_data_BVALID { I 1 bit } m_axi_data_BREADY { O 1 bit } m_axi_data_BRESP { I 2 vector } m_axi_data_BID { I 1 vector } m_axi_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name sext_ln83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln83 \
    op interface \
    ports { sext_ln83 { I 61 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName corr_accel_flow_control_loop_pipe_sequential_init_U
set CompName corr_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix corr_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


