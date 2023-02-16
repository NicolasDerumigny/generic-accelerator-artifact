# This script segment is generated automatically by AutoPilot

set id 235
set name corr_accel_mux_265_16_1_1
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
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 16
set din16_signed 0
set din17_width 16
set din17_signed 0
set din18_width 16
set din18_signed 0
set din19_width 16
set din19_signed 0
set din20_width 16
set din20_signed 0
set din21_width 16
set din21_signed 0
set din22_width 16
set din22_signed 0
set din23_width 16
set din23_signed 0
set din24_width 16
set din24_signed 0
set din25_width 16
set din25_signed 0
set din26_width 5
set din26_signed 0
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
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
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
    id 318 \
    name data_out \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_out \
    op interface \
    ports { data_out_address0 { O 15 vector } data_out_ce0 { O 1 bit } data_out_we0 { O 1 bit } data_out_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_out'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
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
    id 320 \
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
    id 321 \
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
    id 322 \
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
    id 323 \
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
    id 324 \
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
    id 325 \
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
    id 326 \
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
    id 327 \
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
    id 328 \
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
    id 329 \
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
    id 330 \
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
    id 331 \
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
    id 332 \
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
    id 333 \
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
    id 334 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name reg_file_8_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_8_0 \
    op interface \
    ports { reg_file_8_0_address0 { O 11 vector } reg_file_8_0_ce0 { O 1 bit } reg_file_8_0_q0 { I 16 vector } reg_file_8_0_address1 { O 11 vector } reg_file_8_0_ce1 { O 1 bit } reg_file_8_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name reg_file_8_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_8_1 \
    op interface \
    ports { reg_file_8_1_address0 { O 11 vector } reg_file_8_1_ce0 { O 1 bit } reg_file_8_1_q0 { I 16 vector } reg_file_8_1_address1 { O 11 vector } reg_file_8_1_ce1 { O 1 bit } reg_file_8_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name reg_file_9_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_9_0 \
    op interface \
    ports { reg_file_9_0_address0 { O 11 vector } reg_file_9_0_ce0 { O 1 bit } reg_file_9_0_q0 { I 16 vector } reg_file_9_0_address1 { O 11 vector } reg_file_9_0_ce1 { O 1 bit } reg_file_9_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name reg_file_9_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_9_1 \
    op interface \
    ports { reg_file_9_1_address0 { O 11 vector } reg_file_9_1_ce0 { O 1 bit } reg_file_9_1_q0 { I 16 vector } reg_file_9_1_address1 { O 11 vector } reg_file_9_1_ce1 { O 1 bit } reg_file_9_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name reg_file_10_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_10_0 \
    op interface \
    ports { reg_file_10_0_address0 { O 11 vector } reg_file_10_0_ce0 { O 1 bit } reg_file_10_0_q0 { I 16 vector } reg_file_10_0_address1 { O 11 vector } reg_file_10_0_ce1 { O 1 bit } reg_file_10_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name reg_file_10_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_10_1 \
    op interface \
    ports { reg_file_10_1_address0 { O 11 vector } reg_file_10_1_ce0 { O 1 bit } reg_file_10_1_q0 { I 16 vector } reg_file_10_1_address1 { O 11 vector } reg_file_10_1_ce1 { O 1 bit } reg_file_10_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name reg_file_11_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_11_0 \
    op interface \
    ports { reg_file_11_0_address0 { O 11 vector } reg_file_11_0_ce0 { O 1 bit } reg_file_11_0_q0 { I 16 vector } reg_file_11_0_address1 { O 11 vector } reg_file_11_0_ce1 { O 1 bit } reg_file_11_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name reg_file_11_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_11_1 \
    op interface \
    ports { reg_file_11_1_address0 { O 11 vector } reg_file_11_1_ce0 { O 1 bit } reg_file_11_1_q0 { I 16 vector } reg_file_11_1_address1 { O 11 vector } reg_file_11_1_ce1 { O 1 bit } reg_file_11_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name reg_file_12_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_12_0 \
    op interface \
    ports { reg_file_12_0_address0 { O 11 vector } reg_file_12_0_ce0 { O 1 bit } reg_file_12_0_q0 { I 16 vector } reg_file_12_0_address1 { O 11 vector } reg_file_12_0_ce1 { O 1 bit } reg_file_12_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name reg_file_12_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_12_1 \
    op interface \
    ports { reg_file_12_1_address0 { O 11 vector } reg_file_12_1_ce0 { O 1 bit } reg_file_12_1_q0 { I 16 vector } reg_file_12_1_address1 { O 11 vector } reg_file_12_1_ce1 { O 1 bit } reg_file_12_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
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
    id 346 \
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
    id 347 \
    name reg_file_14_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_14_0 \
    op interface \
    ports { reg_file_14_0_address0 { O 11 vector } reg_file_14_0_ce0 { O 1 bit } reg_file_14_0_q0 { I 16 vector } reg_file_14_0_address1 { O 11 vector } reg_file_14_0_ce1 { O 1 bit } reg_file_14_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name reg_file_14_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_14_1 \
    op interface \
    ports { reg_file_14_1_address0 { O 11 vector } reg_file_14_1_ce0 { O 1 bit } reg_file_14_1_q0 { I 16 vector } reg_file_14_1_address1 { O 11 vector } reg_file_14_1_ce1 { O 1 bit } reg_file_14_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name reg_file_15_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_15_0 \
    op interface \
    ports { reg_file_15_0_address0 { O 11 vector } reg_file_15_0_ce0 { O 1 bit } reg_file_15_0_q0 { I 16 vector } reg_file_15_0_address1 { O 11 vector } reg_file_15_0_ce1 { O 1 bit } reg_file_15_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name reg_file_15_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_15_1 \
    op interface \
    ports { reg_file_15_1_address0 { O 11 vector } reg_file_15_1_ce0 { O 1 bit } reg_file_15_1_q0 { I 16 vector } reg_file_15_1_address1 { O 11 vector } reg_file_15_1_ce1 { O 1 bit } reg_file_15_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name reg_file_16_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_16_0 \
    op interface \
    ports { reg_file_16_0_address0 { O 11 vector } reg_file_16_0_ce0 { O 1 bit } reg_file_16_0_q0 { I 16 vector } reg_file_16_0_address1 { O 11 vector } reg_file_16_0_ce1 { O 1 bit } reg_file_16_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_16_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name reg_file_16_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_16_1 \
    op interface \
    ports { reg_file_16_1_address0 { O 11 vector } reg_file_16_1_ce0 { O 1 bit } reg_file_16_1_q0 { I 16 vector } reg_file_16_1_address1 { O 11 vector } reg_file_16_1_ce1 { O 1 bit } reg_file_16_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_16_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name reg_file_17_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_17_0 \
    op interface \
    ports { reg_file_17_0_address0 { O 11 vector } reg_file_17_0_ce0 { O 1 bit } reg_file_17_0_q0 { I 16 vector } reg_file_17_0_address1 { O 11 vector } reg_file_17_0_ce1 { O 1 bit } reg_file_17_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_17_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name reg_file_17_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_17_1 \
    op interface \
    ports { reg_file_17_1_address0 { O 11 vector } reg_file_17_1_ce0 { O 1 bit } reg_file_17_1_q0 { I 16 vector } reg_file_17_1_address1 { O 11 vector } reg_file_17_1_ce1 { O 1 bit } reg_file_17_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_17_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name reg_file_18_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_18_0 \
    op interface \
    ports { reg_file_18_0_address0 { O 11 vector } reg_file_18_0_ce0 { O 1 bit } reg_file_18_0_q0 { I 16 vector } reg_file_18_0_address1 { O 11 vector } reg_file_18_0_ce1 { O 1 bit } reg_file_18_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_18_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name reg_file_18_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_18_1 \
    op interface \
    ports { reg_file_18_1_address0 { O 11 vector } reg_file_18_1_ce0 { O 1 bit } reg_file_18_1_q0 { I 16 vector } reg_file_18_1_address1 { O 11 vector } reg_file_18_1_ce1 { O 1 bit } reg_file_18_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_18_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name reg_file_19_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_19_0 \
    op interface \
    ports { reg_file_19_0_address0 { O 11 vector } reg_file_19_0_ce0 { O 1 bit } reg_file_19_0_q0 { I 16 vector } reg_file_19_0_address1 { O 11 vector } reg_file_19_0_ce1 { O 1 bit } reg_file_19_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_19_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name reg_file_19_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_19_1 \
    op interface \
    ports { reg_file_19_1_address0 { O 11 vector } reg_file_19_1_ce0 { O 1 bit } reg_file_19_1_q0 { I 16 vector } reg_file_19_1_address1 { O 11 vector } reg_file_19_1_ce1 { O 1 bit } reg_file_19_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_19_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name reg_file_20_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_20_0 \
    op interface \
    ports { reg_file_20_0_address0 { O 11 vector } reg_file_20_0_ce0 { O 1 bit } reg_file_20_0_q0 { I 16 vector } reg_file_20_0_address1 { O 11 vector } reg_file_20_0_ce1 { O 1 bit } reg_file_20_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_20_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name reg_file_20_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_20_1 \
    op interface \
    ports { reg_file_20_1_address0 { O 11 vector } reg_file_20_1_ce0 { O 1 bit } reg_file_20_1_q0 { I 16 vector } reg_file_20_1_address1 { O 11 vector } reg_file_20_1_ce1 { O 1 bit } reg_file_20_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_20_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name reg_file_21_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_21_0 \
    op interface \
    ports { reg_file_21_0_address0 { O 11 vector } reg_file_21_0_ce0 { O 1 bit } reg_file_21_0_q0 { I 16 vector } reg_file_21_0_address1 { O 11 vector } reg_file_21_0_ce1 { O 1 bit } reg_file_21_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_21_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name reg_file_21_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_21_1 \
    op interface \
    ports { reg_file_21_1_address0 { O 11 vector } reg_file_21_1_ce0 { O 1 bit } reg_file_21_1_q0 { I 16 vector } reg_file_21_1_address1 { O 11 vector } reg_file_21_1_ce1 { O 1 bit } reg_file_21_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_21_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name reg_file_22_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_22_0 \
    op interface \
    ports { reg_file_22_0_address0 { O 11 vector } reg_file_22_0_ce0 { O 1 bit } reg_file_22_0_q0 { I 16 vector } reg_file_22_0_address1 { O 11 vector } reg_file_22_0_ce1 { O 1 bit } reg_file_22_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_22_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name reg_file_22_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_22_1 \
    op interface \
    ports { reg_file_22_1_address0 { O 11 vector } reg_file_22_1_ce0 { O 1 bit } reg_file_22_1_q0 { I 16 vector } reg_file_22_1_address1 { O 11 vector } reg_file_22_1_ce1 { O 1 bit } reg_file_22_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_22_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name reg_file_23_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_23_0 \
    op interface \
    ports { reg_file_23_0_address0 { O 11 vector } reg_file_23_0_ce0 { O 1 bit } reg_file_23_0_q0 { I 16 vector } reg_file_23_0_address1 { O 11 vector } reg_file_23_0_ce1 { O 1 bit } reg_file_23_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_23_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name reg_file_23_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_23_1 \
    op interface \
    ports { reg_file_23_1_address0 { O 11 vector } reg_file_23_1_ce0 { O 1 bit } reg_file_23_1_q0 { I 16 vector } reg_file_23_1_address1 { O 11 vector } reg_file_23_1_ce1 { O 1 bit } reg_file_23_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_23_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name reg_file_24_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_24_0 \
    op interface \
    ports { reg_file_24_0_address0 { O 11 vector } reg_file_24_0_ce0 { O 1 bit } reg_file_24_0_q0 { I 16 vector } reg_file_24_0_address1 { O 11 vector } reg_file_24_0_ce1 { O 1 bit } reg_file_24_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_24_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name reg_file_24_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_24_1 \
    op interface \
    ports { reg_file_24_1_address0 { O 11 vector } reg_file_24_1_ce0 { O 1 bit } reg_file_24_1_q0 { I 16 vector } reg_file_24_1_address1 { O 11 vector } reg_file_24_1_ce1 { O 1 bit } reg_file_24_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_24_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name reg_file_25_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_25_0 \
    op interface \
    ports { reg_file_25_0_address0 { O 11 vector } reg_file_25_0_ce0 { O 1 bit } reg_file_25_0_q0 { I 16 vector } reg_file_25_0_address1 { O 11 vector } reg_file_25_0_ce1 { O 1 bit } reg_file_25_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_25_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name reg_file_25_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reg_file_25_1 \
    op interface \
    ports { reg_file_25_1_address0 { O 11 vector } reg_file_25_1_ce0 { O 1 bit } reg_file_25_1_q0 { I 16 vector } reg_file_25_1_address1 { O 11 vector } reg_file_25_1_ce1 { O 1 bit } reg_file_25_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_25_1'"
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


