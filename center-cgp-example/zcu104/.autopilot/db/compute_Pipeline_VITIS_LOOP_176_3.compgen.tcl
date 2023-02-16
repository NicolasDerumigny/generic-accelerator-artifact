# This script segment is generated automatically by AutoPilot

set name corr_accel_hadd_16ns_16ns_16_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {hadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name corr_accel_hsub_16ns_16ns_16_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {hsub} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set id 56
set name corr_accel_mux_21_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 1
set din2_signed 0
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
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 66
set name corr_accel_mux_114_16_1_1
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
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 4
set din11_signed 0
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
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 88
set name corr_accel_mux_124_16_1_1
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
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 4
set din12_signed 0
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
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
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
    id 106 \
    name reg_file_23_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_23_1 \
    op interface \
    ports { reg_file_23_1_address0 { O 11 vector } reg_file_23_1_ce0 { O 1 bit } reg_file_23_1_we0 { O 1 bit } reg_file_23_1_d0 { O 16 vector } reg_file_23_1_address1 { O 11 vector } reg_file_23_1_ce1 { O 1 bit } reg_file_23_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_23_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name reg_file_23_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_23_0 \
    op interface \
    ports { reg_file_23_0_address0 { O 11 vector } reg_file_23_0_ce0 { O 1 bit } reg_file_23_0_we0 { O 1 bit } reg_file_23_0_d0 { O 16 vector } reg_file_23_0_address1 { O 11 vector } reg_file_23_0_ce1 { O 1 bit } reg_file_23_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_23_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name reg_file_22_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_22_1 \
    op interface \
    ports { reg_file_22_1_address0 { O 11 vector } reg_file_22_1_ce0 { O 1 bit } reg_file_22_1_we0 { O 1 bit } reg_file_22_1_d0 { O 16 vector } reg_file_22_1_q0 { I 16 vector } reg_file_22_1_address1 { O 11 vector } reg_file_22_1_ce1 { O 1 bit } reg_file_22_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_22_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name reg_file_22_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_22_0 \
    op interface \
    ports { reg_file_22_0_address0 { O 11 vector } reg_file_22_0_ce0 { O 1 bit } reg_file_22_0_we0 { O 1 bit } reg_file_22_0_d0 { O 16 vector } reg_file_22_0_q0 { I 16 vector } reg_file_22_0_address1 { O 11 vector } reg_file_22_0_ce1 { O 1 bit } reg_file_22_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_22_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name reg_file_21_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_21_1 \
    op interface \
    ports { reg_file_21_1_address0 { O 11 vector } reg_file_21_1_ce0 { O 1 bit } reg_file_21_1_we0 { O 1 bit } reg_file_21_1_d0 { O 16 vector } reg_file_21_1_q0 { I 16 vector } reg_file_21_1_address1 { O 11 vector } reg_file_21_1_ce1 { O 1 bit } reg_file_21_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_21_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name reg_file_21_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_21_0 \
    op interface \
    ports { reg_file_21_0_address0 { O 11 vector } reg_file_21_0_ce0 { O 1 bit } reg_file_21_0_we0 { O 1 bit } reg_file_21_0_d0 { O 16 vector } reg_file_21_0_q0 { I 16 vector } reg_file_21_0_address1 { O 11 vector } reg_file_21_0_ce1 { O 1 bit } reg_file_21_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_21_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name reg_file_20_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_20_1 \
    op interface \
    ports { reg_file_20_1_address0 { O 11 vector } reg_file_20_1_ce0 { O 1 bit } reg_file_20_1_we0 { O 1 bit } reg_file_20_1_d0 { O 16 vector } reg_file_20_1_q0 { I 16 vector } reg_file_20_1_address1 { O 11 vector } reg_file_20_1_ce1 { O 1 bit } reg_file_20_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_20_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name reg_file_20_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_20_0 \
    op interface \
    ports { reg_file_20_0_address0 { O 11 vector } reg_file_20_0_ce0 { O 1 bit } reg_file_20_0_we0 { O 1 bit } reg_file_20_0_d0 { O 16 vector } reg_file_20_0_q0 { I 16 vector } reg_file_20_0_address1 { O 11 vector } reg_file_20_0_ce1 { O 1 bit } reg_file_20_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_20_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name reg_file_19_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_19_1 \
    op interface \
    ports { reg_file_19_1_address0 { O 11 vector } reg_file_19_1_ce0 { O 1 bit } reg_file_19_1_we0 { O 1 bit } reg_file_19_1_d0 { O 16 vector } reg_file_19_1_q0 { I 16 vector } reg_file_19_1_address1 { O 11 vector } reg_file_19_1_ce1 { O 1 bit } reg_file_19_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_19_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name reg_file_19_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_19_0 \
    op interface \
    ports { reg_file_19_0_address0 { O 11 vector } reg_file_19_0_ce0 { O 1 bit } reg_file_19_0_we0 { O 1 bit } reg_file_19_0_d0 { O 16 vector } reg_file_19_0_q0 { I 16 vector } reg_file_19_0_address1 { O 11 vector } reg_file_19_0_ce1 { O 1 bit } reg_file_19_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_19_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name reg_file_18_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_18_1 \
    op interface \
    ports { reg_file_18_1_address0 { O 11 vector } reg_file_18_1_ce0 { O 1 bit } reg_file_18_1_we0 { O 1 bit } reg_file_18_1_d0 { O 16 vector } reg_file_18_1_q0 { I 16 vector } reg_file_18_1_address1 { O 11 vector } reg_file_18_1_ce1 { O 1 bit } reg_file_18_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_18_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name reg_file_18_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_18_0 \
    op interface \
    ports { reg_file_18_0_address0 { O 11 vector } reg_file_18_0_ce0 { O 1 bit } reg_file_18_0_we0 { O 1 bit } reg_file_18_0_d0 { O 16 vector } reg_file_18_0_q0 { I 16 vector } reg_file_18_0_address1 { O 11 vector } reg_file_18_0_ce1 { O 1 bit } reg_file_18_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_18_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name reg_file_17_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_17_1 \
    op interface \
    ports { reg_file_17_1_address0 { O 11 vector } reg_file_17_1_ce0 { O 1 bit } reg_file_17_1_we0 { O 1 bit } reg_file_17_1_d0 { O 16 vector } reg_file_17_1_q0 { I 16 vector } reg_file_17_1_address1 { O 11 vector } reg_file_17_1_ce1 { O 1 bit } reg_file_17_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_17_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name reg_file_17_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_17_0 \
    op interface \
    ports { reg_file_17_0_address0 { O 11 vector } reg_file_17_0_ce0 { O 1 bit } reg_file_17_0_we0 { O 1 bit } reg_file_17_0_d0 { O 16 vector } reg_file_17_0_q0 { I 16 vector } reg_file_17_0_address1 { O 11 vector } reg_file_17_0_ce1 { O 1 bit } reg_file_17_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_17_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name reg_file_16_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_16_1 \
    op interface \
    ports { reg_file_16_1_address0 { O 11 vector } reg_file_16_1_ce0 { O 1 bit } reg_file_16_1_we0 { O 1 bit } reg_file_16_1_d0 { O 16 vector } reg_file_16_1_q0 { I 16 vector } reg_file_16_1_address1 { O 11 vector } reg_file_16_1_ce1 { O 1 bit } reg_file_16_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_16_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name reg_file_16_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_16_0 \
    op interface \
    ports { reg_file_16_0_address0 { O 11 vector } reg_file_16_0_ce0 { O 1 bit } reg_file_16_0_we0 { O 1 bit } reg_file_16_0_d0 { O 16 vector } reg_file_16_0_q0 { I 16 vector } reg_file_16_0_address1 { O 11 vector } reg_file_16_0_ce1 { O 1 bit } reg_file_16_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_16_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name reg_file_15_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_15_1 \
    op interface \
    ports { reg_file_15_1_address0 { O 11 vector } reg_file_15_1_ce0 { O 1 bit } reg_file_15_1_we0 { O 1 bit } reg_file_15_1_d0 { O 16 vector } reg_file_15_1_q0 { I 16 vector } reg_file_15_1_address1 { O 11 vector } reg_file_15_1_ce1 { O 1 bit } reg_file_15_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name reg_file_15_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_15_0 \
    op interface \
    ports { reg_file_15_0_address0 { O 11 vector } reg_file_15_0_ce0 { O 1 bit } reg_file_15_0_we0 { O 1 bit } reg_file_15_0_d0 { O 16 vector } reg_file_15_0_q0 { I 16 vector } reg_file_15_0_address1 { O 11 vector } reg_file_15_0_ce1 { O 1 bit } reg_file_15_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name reg_file_14_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_14_1 \
    op interface \
    ports { reg_file_14_1_address0 { O 11 vector } reg_file_14_1_ce0 { O 1 bit } reg_file_14_1_we0 { O 1 bit } reg_file_14_1_d0 { O 16 vector } reg_file_14_1_q0 { I 16 vector } reg_file_14_1_address1 { O 11 vector } reg_file_14_1_ce1 { O 1 bit } reg_file_14_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name reg_file_14_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_14_0 \
    op interface \
    ports { reg_file_14_0_address0 { O 11 vector } reg_file_14_0_ce0 { O 1 bit } reg_file_14_0_we0 { O 1 bit } reg_file_14_0_d0 { O 16 vector } reg_file_14_0_q0 { I 16 vector } reg_file_14_0_address1 { O 11 vector } reg_file_14_0_ce1 { O 1 bit } reg_file_14_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name reg_file_13_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_13_1 \
    op interface \
    ports { reg_file_13_1_address0 { O 11 vector } reg_file_13_1_ce0 { O 1 bit } reg_file_13_1_q0 { I 16 vector } reg_file_13_1_address1 { O 11 vector } reg_file_13_1_ce1 { O 1 bit } reg_file_13_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_13_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name reg_file_13_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_13_0 \
    op interface \
    ports { reg_file_13_0_address0 { O 11 vector } reg_file_13_0_ce0 { O 1 bit } reg_file_13_0_q0 { I 16 vector } reg_file_13_0_address1 { O 11 vector } reg_file_13_0_ce1 { O 1 bit } reg_file_13_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_13_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name reg_file_12_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_12_1 \
    op interface \
    ports { reg_file_12_1_address0 { O 11 vector } reg_file_12_1_ce0 { O 1 bit } reg_file_12_1_we0 { O 1 bit } reg_file_12_1_d0 { O 16 vector } reg_file_12_1_q0 { I 16 vector } reg_file_12_1_address1 { O 11 vector } reg_file_12_1_ce1 { O 1 bit } reg_file_12_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name reg_file_12_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_12_0 \
    op interface \
    ports { reg_file_12_0_address0 { O 11 vector } reg_file_12_0_ce0 { O 1 bit } reg_file_12_0_we0 { O 1 bit } reg_file_12_0_d0 { O 16 vector } reg_file_12_0_q0 { I 16 vector } reg_file_12_0_address1 { O 11 vector } reg_file_12_0_ce1 { O 1 bit } reg_file_12_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name reg_file_11_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_11_1 \
    op interface \
    ports { reg_file_11_1_address0 { O 11 vector } reg_file_11_1_ce0 { O 1 bit } reg_file_11_1_we0 { O 1 bit } reg_file_11_1_d0 { O 16 vector } reg_file_11_1_q0 { I 16 vector } reg_file_11_1_address1 { O 11 vector } reg_file_11_1_ce1 { O 1 bit } reg_file_11_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name reg_file_11_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_11_0 \
    op interface \
    ports { reg_file_11_0_address0 { O 11 vector } reg_file_11_0_ce0 { O 1 bit } reg_file_11_0_we0 { O 1 bit } reg_file_11_0_d0 { O 16 vector } reg_file_11_0_q0 { I 16 vector } reg_file_11_0_address1 { O 11 vector } reg_file_11_0_ce1 { O 1 bit } reg_file_11_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name reg_file_10_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_10_1 \
    op interface \
    ports { reg_file_10_1_address0 { O 11 vector } reg_file_10_1_ce0 { O 1 bit } reg_file_10_1_we0 { O 1 bit } reg_file_10_1_d0 { O 16 vector } reg_file_10_1_q0 { I 16 vector } reg_file_10_1_address1 { O 11 vector } reg_file_10_1_ce1 { O 1 bit } reg_file_10_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name reg_file_10_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_10_0 \
    op interface \
    ports { reg_file_10_0_address0 { O 11 vector } reg_file_10_0_ce0 { O 1 bit } reg_file_10_0_we0 { O 1 bit } reg_file_10_0_d0 { O 16 vector } reg_file_10_0_q0 { I 16 vector } reg_file_10_0_address1 { O 11 vector } reg_file_10_0_ce1 { O 1 bit } reg_file_10_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name reg_file_9_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_9_1 \
    op interface \
    ports { reg_file_9_1_address0 { O 11 vector } reg_file_9_1_ce0 { O 1 bit } reg_file_9_1_we0 { O 1 bit } reg_file_9_1_d0 { O 16 vector } reg_file_9_1_q0 { I 16 vector } reg_file_9_1_address1 { O 11 vector } reg_file_9_1_ce1 { O 1 bit } reg_file_9_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name reg_file_9_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_9_0 \
    op interface \
    ports { reg_file_9_0_address0 { O 11 vector } reg_file_9_0_ce0 { O 1 bit } reg_file_9_0_we0 { O 1 bit } reg_file_9_0_d0 { O 16 vector } reg_file_9_0_q0 { I 16 vector } reg_file_9_0_address1 { O 11 vector } reg_file_9_0_ce1 { O 1 bit } reg_file_9_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name reg_file_8_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_8_1 \
    op interface \
    ports { reg_file_8_1_address0 { O 11 vector } reg_file_8_1_ce0 { O 1 bit } reg_file_8_1_we0 { O 1 bit } reg_file_8_1_d0 { O 16 vector } reg_file_8_1_q0 { I 16 vector } reg_file_8_1_address1 { O 11 vector } reg_file_8_1_ce1 { O 1 bit } reg_file_8_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name reg_file_8_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_8_0 \
    op interface \
    ports { reg_file_8_0_address0 { O 11 vector } reg_file_8_0_ce0 { O 1 bit } reg_file_8_0_we0 { O 1 bit } reg_file_8_0_d0 { O 16 vector } reg_file_8_0_q0 { I 16 vector } reg_file_8_0_address1 { O 11 vector } reg_file_8_0_ce1 { O 1 bit } reg_file_8_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name reg_file_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_7_1 \
    op interface \
    ports { reg_file_7_1_address0 { O 11 vector } reg_file_7_1_ce0 { O 1 bit } reg_file_7_1_we0 { O 1 bit } reg_file_7_1_d0 { O 16 vector } reg_file_7_1_q0 { I 16 vector } reg_file_7_1_address1 { O 11 vector } reg_file_7_1_ce1 { O 1 bit } reg_file_7_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name reg_file_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_7_0 \
    op interface \
    ports { reg_file_7_0_address0 { O 11 vector } reg_file_7_0_ce0 { O 1 bit } reg_file_7_0_we0 { O 1 bit } reg_file_7_0_d0 { O 16 vector } reg_file_7_0_q0 { I 16 vector } reg_file_7_0_address1 { O 11 vector } reg_file_7_0_ce1 { O 1 bit } reg_file_7_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name reg_file_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_6_1 \
    op interface \
    ports { reg_file_6_1_address0 { O 11 vector } reg_file_6_1_ce0 { O 1 bit } reg_file_6_1_we0 { O 1 bit } reg_file_6_1_d0 { O 16 vector } reg_file_6_1_q0 { I 16 vector } reg_file_6_1_address1 { O 11 vector } reg_file_6_1_ce1 { O 1 bit } reg_file_6_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name reg_file_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_6_0 \
    op interface \
    ports { reg_file_6_0_address0 { O 11 vector } reg_file_6_0_ce0 { O 1 bit } reg_file_6_0_we0 { O 1 bit } reg_file_6_0_d0 { O 16 vector } reg_file_6_0_q0 { I 16 vector } reg_file_6_0_address1 { O 11 vector } reg_file_6_0_ce1 { O 1 bit } reg_file_6_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name reg_file_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_5_1 \
    op interface \
    ports { reg_file_5_1_address0 { O 11 vector } reg_file_5_1_ce0 { O 1 bit } reg_file_5_1_we0 { O 1 bit } reg_file_5_1_d0 { O 16 vector } reg_file_5_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name reg_file_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_5_0 \
    op interface \
    ports { reg_file_5_0_address0 { O 11 vector } reg_file_5_0_ce0 { O 1 bit } reg_file_5_0_we0 { O 1 bit } reg_file_5_0_d0 { O 16 vector } reg_file_5_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name reg_file_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_4_1 \
    op interface \
    ports { reg_file_4_1_address0 { O 11 vector } reg_file_4_1_ce0 { O 1 bit } reg_file_4_1_we0 { O 1 bit } reg_file_4_1_d0 { O 16 vector } reg_file_4_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name reg_file_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_4_0 \
    op interface \
    ports { reg_file_4_0_address0 { O 11 vector } reg_file_4_0_ce0 { O 1 bit } reg_file_4_0_we0 { O 1 bit } reg_file_4_0_d0 { O 16 vector } reg_file_4_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name reg_file_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_3_1 \
    op interface \
    ports { reg_file_3_1_address0 { O 11 vector } reg_file_3_1_ce0 { O 1 bit } reg_file_3_1_we0 { O 1 bit } reg_file_3_1_d0 { O 16 vector } reg_file_3_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name reg_file_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename reg_file_3_0 \
    op interface \
    ports { reg_file_3_0_address0 { O 11 vector } reg_file_3_0_ce0 { O 1 bit } reg_file_3_0_we0 { O 1 bit } reg_file_3_0_d0 { O 16 vector } reg_file_3_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name id \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_id \
    op interface \
    ports { id { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i \
    op interface \
    ports { i { I 6 vector } } \
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


