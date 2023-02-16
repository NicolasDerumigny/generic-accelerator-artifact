# This script segment is generated automatically by AutoPilot

set name corr_accel_hadd_16ns_16ns_16_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {hadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {hdiv} IMPL {fabric} LATENCY 4 ALLOW_PRAGMA 1
}


set name corr_accel_hmul_16ns_16ns_16_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {hmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
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
    id 128 \
    name reg_file_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_0_0 \
    op interface \
    ports { reg_file_0_0_address0 { O 11 vector } reg_file_0_0_ce0 { O 1 bit } reg_file_0_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name reg_file_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_1_0 \
    op interface \
    ports { reg_file_1_0_address0 { O 11 vector } reg_file_1_0_ce0 { O 1 bit } reg_file_1_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name reg_file_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_2_0 \
    op interface \
    ports { reg_file_2_0_address0 { O 11 vector } reg_file_2_0_ce0 { O 1 bit } reg_file_2_0_we0 { O 1 bit } reg_file_2_0_d0 { O 16 vector } reg_file_2_0_q0 { I 16 vector } reg_file_2_0_address1 { O 11 vector } reg_file_2_0_ce1 { O 1 bit } reg_file_2_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name reg_file_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_2_1 \
    op interface \
    ports { reg_file_2_1_address0 { O 11 vector } reg_file_2_1_ce0 { O 1 bit } reg_file_2_1_we0 { O 1 bit } reg_file_2_1_d0 { O 16 vector } reg_file_2_1_q0 { I 16 vector } reg_file_2_1_address1 { O 11 vector } reg_file_2_1_ce1 { O 1 bit } reg_file_2_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name reg_file_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_3_0 \
    op interface \
    ports { reg_file_3_0_address0 { O 11 vector } reg_file_3_0_ce0 { O 1 bit } reg_file_3_0_we0 { O 1 bit } reg_file_3_0_d0 { O 16 vector } reg_file_3_0_address1 { O 11 vector } reg_file_3_0_ce1 { O 1 bit } reg_file_3_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name reg_file_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_3_1 \
    op interface \
    ports { reg_file_3_1_address0 { O 11 vector } reg_file_3_1_ce0 { O 1 bit } reg_file_3_1_we0 { O 1 bit } reg_file_3_1_d0 { O 16 vector } reg_file_3_1_address1 { O 11 vector } reg_file_3_1_ce1 { O 1 bit } reg_file_3_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name reg_file_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_4_0 \
    op interface \
    ports { reg_file_4_0_address0 { O 11 vector } reg_file_4_0_ce0 { O 1 bit } reg_file_4_0_we0 { O 1 bit } reg_file_4_0_d0 { O 16 vector } reg_file_4_0_q0 { I 16 vector } reg_file_4_0_address1 { O 11 vector } reg_file_4_0_ce1 { O 1 bit } reg_file_4_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name reg_file_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_4_1 \
    op interface \
    ports { reg_file_4_1_address0 { O 11 vector } reg_file_4_1_ce0 { O 1 bit } reg_file_4_1_we0 { O 1 bit } reg_file_4_1_d0 { O 16 vector } reg_file_4_1_q0 { I 16 vector } reg_file_4_1_address1 { O 11 vector } reg_file_4_1_ce1 { O 1 bit } reg_file_4_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name reg_file_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_5_0 \
    op interface \
    ports { reg_file_5_0_address0 { O 11 vector } reg_file_5_0_ce0 { O 1 bit } reg_file_5_0_we0 { O 1 bit } reg_file_5_0_d0 { O 16 vector } reg_file_5_0_q0 { I 16 vector } reg_file_5_0_address1 { O 11 vector } reg_file_5_0_ce1 { O 1 bit } reg_file_5_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name reg_file_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_5_1 \
    op interface \
    ports { reg_file_5_1_address0 { O 11 vector } reg_file_5_1_ce0 { O 1 bit } reg_file_5_1_we0 { O 1 bit } reg_file_5_1_d0 { O 16 vector } reg_file_5_1_q0 { I 16 vector } reg_file_5_1_address1 { O 11 vector } reg_file_5_1_ce1 { O 1 bit } reg_file_5_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name reg_file_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_6_0 \
    op interface \
    ports { reg_file_6_0_address0 { O 11 vector } reg_file_6_0_ce0 { O 1 bit } reg_file_6_0_we0 { O 1 bit } reg_file_6_0_d0 { O 16 vector } reg_file_6_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name reg_file_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_6_1 \
    op interface \
    ports { reg_file_6_1_address0 { O 11 vector } reg_file_6_1_ce0 { O 1 bit } reg_file_6_1_we0 { O 1 bit } reg_file_6_1_d0 { O 16 vector } reg_file_6_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_1'"
}
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


