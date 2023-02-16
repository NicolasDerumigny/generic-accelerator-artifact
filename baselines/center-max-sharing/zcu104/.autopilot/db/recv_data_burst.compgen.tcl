# This script segment is generated automatically by AutoPilot

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
    id 1 \
    name data_in \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_in \
    op interface \
    ports { data_in_address0 { O 14 vector } data_in_ce0 { O 1 bit } data_in_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_in'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2 \
    name reg_file_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_0_0 \
    op interface \
    ports { reg_file_0_0_address0 { O 11 vector } reg_file_0_0_ce0 { O 1 bit } reg_file_0_0_we0 { O 1 bit } reg_file_0_0_d0 { O 16 vector } reg_file_0_0_address1 { O 11 vector } reg_file_0_0_ce1 { O 1 bit } reg_file_0_0_we1 { O 1 bit } reg_file_0_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3 \
    name reg_file_0_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_0_1 \
    op interface \
    ports { reg_file_0_1_address0 { O 11 vector } reg_file_0_1_ce0 { O 1 bit } reg_file_0_1_we0 { O 1 bit } reg_file_0_1_d0 { O 16 vector } reg_file_0_1_address1 { O 11 vector } reg_file_0_1_ce1 { O 1 bit } reg_file_0_1_we1 { O 1 bit } reg_file_0_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name reg_file_1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_1_0 \
    op interface \
    ports { reg_file_1_0_address0 { O 11 vector } reg_file_1_0_ce0 { O 1 bit } reg_file_1_0_we0 { O 1 bit } reg_file_1_0_d0 { O 16 vector } reg_file_1_0_address1 { O 11 vector } reg_file_1_0_ce1 { O 1 bit } reg_file_1_0_we1 { O 1 bit } reg_file_1_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5 \
    name reg_file_1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_1_1 \
    op interface \
    ports { reg_file_1_1_address0 { O 11 vector } reg_file_1_1_ce0 { O 1 bit } reg_file_1_1_we0 { O 1 bit } reg_file_1_1_d0 { O 16 vector } reg_file_1_1_address1 { O 11 vector } reg_file_1_1_ce1 { O 1 bit } reg_file_1_1_we1 { O 1 bit } reg_file_1_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name reg_file_2_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_2_0 \
    op interface \
    ports { reg_file_2_0_address0 { O 11 vector } reg_file_2_0_ce0 { O 1 bit } reg_file_2_0_we0 { O 1 bit } reg_file_2_0_d0 { O 16 vector } reg_file_2_0_address1 { O 11 vector } reg_file_2_0_ce1 { O 1 bit } reg_file_2_0_we1 { O 1 bit } reg_file_2_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name reg_file_2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_2_1 \
    op interface \
    ports { reg_file_2_1_address0 { O 11 vector } reg_file_2_1_ce0 { O 1 bit } reg_file_2_1_we0 { O 1 bit } reg_file_2_1_d0 { O 16 vector } reg_file_2_1_address1 { O 11 vector } reg_file_2_1_ce1 { O 1 bit } reg_file_2_1_we1 { O 1 bit } reg_file_2_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name reg_file_3_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_3_0 \
    op interface \
    ports { reg_file_3_0_address0 { O 11 vector } reg_file_3_0_ce0 { O 1 bit } reg_file_3_0_we0 { O 1 bit } reg_file_3_0_d0 { O 16 vector } reg_file_3_0_address1 { O 11 vector } reg_file_3_0_ce1 { O 1 bit } reg_file_3_0_we1 { O 1 bit } reg_file_3_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name reg_file_3_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_3_1 \
    op interface \
    ports { reg_file_3_1_address0 { O 11 vector } reg_file_3_1_ce0 { O 1 bit } reg_file_3_1_we0 { O 1 bit } reg_file_3_1_d0 { O 16 vector } reg_file_3_1_address1 { O 11 vector } reg_file_3_1_ce1 { O 1 bit } reg_file_3_1_we1 { O 1 bit } reg_file_3_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name reg_file_4_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_4_0 \
    op interface \
    ports { reg_file_4_0_address0 { O 11 vector } reg_file_4_0_ce0 { O 1 bit } reg_file_4_0_we0 { O 1 bit } reg_file_4_0_d0 { O 16 vector } reg_file_4_0_address1 { O 11 vector } reg_file_4_0_ce1 { O 1 bit } reg_file_4_0_we1 { O 1 bit } reg_file_4_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name reg_file_4_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_4_1 \
    op interface \
    ports { reg_file_4_1_address0 { O 11 vector } reg_file_4_1_ce0 { O 1 bit } reg_file_4_1_we0 { O 1 bit } reg_file_4_1_d0 { O 16 vector } reg_file_4_1_address1 { O 11 vector } reg_file_4_1_ce1 { O 1 bit } reg_file_4_1_we1 { O 1 bit } reg_file_4_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name reg_file_5_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_5_0 \
    op interface \
    ports { reg_file_5_0_address0 { O 11 vector } reg_file_5_0_ce0 { O 1 bit } reg_file_5_0_we0 { O 1 bit } reg_file_5_0_d0 { O 16 vector } reg_file_5_0_address1 { O 11 vector } reg_file_5_0_ce1 { O 1 bit } reg_file_5_0_we1 { O 1 bit } reg_file_5_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name reg_file_5_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_5_1 \
    op interface \
    ports { reg_file_5_1_address0 { O 11 vector } reg_file_5_1_ce0 { O 1 bit } reg_file_5_1_we0 { O 1 bit } reg_file_5_1_d0 { O 16 vector } reg_file_5_1_address1 { O 11 vector } reg_file_5_1_ce1 { O 1 bit } reg_file_5_1_we1 { O 1 bit } reg_file_5_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name reg_file_6_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_6_0 \
    op interface \
    ports { reg_file_6_0_address0 { O 11 vector } reg_file_6_0_ce0 { O 1 bit } reg_file_6_0_we0 { O 1 bit } reg_file_6_0_d0 { O 16 vector } reg_file_6_0_address1 { O 11 vector } reg_file_6_0_ce1 { O 1 bit } reg_file_6_0_we1 { O 1 bit } reg_file_6_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name reg_file_6_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_6_1 \
    op interface \
    ports { reg_file_6_1_address0 { O 11 vector } reg_file_6_1_ce0 { O 1 bit } reg_file_6_1_we0 { O 1 bit } reg_file_6_1_d0 { O 16 vector } reg_file_6_1_address1 { O 11 vector } reg_file_6_1_ce1 { O 1 bit } reg_file_6_1_we1 { O 1 bit } reg_file_6_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name reg_file_7_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_7_0 \
    op interface \
    ports { reg_file_7_0_address0 { O 11 vector } reg_file_7_0_ce0 { O 1 bit } reg_file_7_0_we0 { O 1 bit } reg_file_7_0_d0 { O 16 vector } reg_file_7_0_address1 { O 11 vector } reg_file_7_0_ce1 { O 1 bit } reg_file_7_0_we1 { O 1 bit } reg_file_7_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name reg_file_7_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_7_1 \
    op interface \
    ports { reg_file_7_1_address0 { O 11 vector } reg_file_7_1_ce0 { O 1 bit } reg_file_7_1_we0 { O 1 bit } reg_file_7_1_d0 { O 16 vector } reg_file_7_1_address1 { O 11 vector } reg_file_7_1_ce1 { O 1 bit } reg_file_7_1_we1 { O 1 bit } reg_file_7_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name reg_file_8_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_8_0 \
    op interface \
    ports { reg_file_8_0_address0 { O 11 vector } reg_file_8_0_ce0 { O 1 bit } reg_file_8_0_we0 { O 1 bit } reg_file_8_0_d0 { O 16 vector } reg_file_8_0_address1 { O 11 vector } reg_file_8_0_ce1 { O 1 bit } reg_file_8_0_we1 { O 1 bit } reg_file_8_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name reg_file_8_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_8_1 \
    op interface \
    ports { reg_file_8_1_address0 { O 11 vector } reg_file_8_1_ce0 { O 1 bit } reg_file_8_1_we0 { O 1 bit } reg_file_8_1_d0 { O 16 vector } reg_file_8_1_address1 { O 11 vector } reg_file_8_1_ce1 { O 1 bit } reg_file_8_1_we1 { O 1 bit } reg_file_8_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_8_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name reg_file_9_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_9_0 \
    op interface \
    ports { reg_file_9_0_address0 { O 11 vector } reg_file_9_0_ce0 { O 1 bit } reg_file_9_0_we0 { O 1 bit } reg_file_9_0_d0 { O 16 vector } reg_file_9_0_address1 { O 11 vector } reg_file_9_0_ce1 { O 1 bit } reg_file_9_0_we1 { O 1 bit } reg_file_9_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name reg_file_9_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_9_1 \
    op interface \
    ports { reg_file_9_1_address0 { O 11 vector } reg_file_9_1_ce0 { O 1 bit } reg_file_9_1_we0 { O 1 bit } reg_file_9_1_d0 { O 16 vector } reg_file_9_1_address1 { O 11 vector } reg_file_9_1_ce1 { O 1 bit } reg_file_9_1_we1 { O 1 bit } reg_file_9_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_9_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name reg_file_10_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_10_0 \
    op interface \
    ports { reg_file_10_0_address0 { O 11 vector } reg_file_10_0_ce0 { O 1 bit } reg_file_10_0_we0 { O 1 bit } reg_file_10_0_d0 { O 16 vector } reg_file_10_0_address1 { O 11 vector } reg_file_10_0_ce1 { O 1 bit } reg_file_10_0_we1 { O 1 bit } reg_file_10_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name reg_file_10_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_10_1 \
    op interface \
    ports { reg_file_10_1_address0 { O 11 vector } reg_file_10_1_ce0 { O 1 bit } reg_file_10_1_we0 { O 1 bit } reg_file_10_1_d0 { O 16 vector } reg_file_10_1_address1 { O 11 vector } reg_file_10_1_ce1 { O 1 bit } reg_file_10_1_we1 { O 1 bit } reg_file_10_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_10_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name reg_file_11_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_11_0 \
    op interface \
    ports { reg_file_11_0_address0 { O 11 vector } reg_file_11_0_ce0 { O 1 bit } reg_file_11_0_we0 { O 1 bit } reg_file_11_0_d0 { O 16 vector } reg_file_11_0_address1 { O 11 vector } reg_file_11_0_ce1 { O 1 bit } reg_file_11_0_we1 { O 1 bit } reg_file_11_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name reg_file_11_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_11_1 \
    op interface \
    ports { reg_file_11_1_address0 { O 11 vector } reg_file_11_1_ce0 { O 1 bit } reg_file_11_1_we0 { O 1 bit } reg_file_11_1_d0 { O 16 vector } reg_file_11_1_address1 { O 11 vector } reg_file_11_1_ce1 { O 1 bit } reg_file_11_1_we1 { O 1 bit } reg_file_11_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_11_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name reg_file_12_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_12_0 \
    op interface \
    ports { reg_file_12_0_address0 { O 11 vector } reg_file_12_0_ce0 { O 1 bit } reg_file_12_0_we0 { O 1 bit } reg_file_12_0_d0 { O 16 vector } reg_file_12_0_address1 { O 11 vector } reg_file_12_0_ce1 { O 1 bit } reg_file_12_0_we1 { O 1 bit } reg_file_12_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name reg_file_12_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_12_1 \
    op interface \
    ports { reg_file_12_1_address0 { O 11 vector } reg_file_12_1_ce0 { O 1 bit } reg_file_12_1_we0 { O 1 bit } reg_file_12_1_d0 { O 16 vector } reg_file_12_1_address1 { O 11 vector } reg_file_12_1_ce1 { O 1 bit } reg_file_12_1_we1 { O 1 bit } reg_file_12_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_12_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name reg_file_13_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_13_0 \
    op interface \
    ports { reg_file_13_0_address0 { O 11 vector } reg_file_13_0_ce0 { O 1 bit } reg_file_13_0_we0 { O 1 bit } reg_file_13_0_d0 { O 16 vector } reg_file_13_0_address1 { O 11 vector } reg_file_13_0_ce1 { O 1 bit } reg_file_13_0_we1 { O 1 bit } reg_file_13_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_13_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name reg_file_13_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_13_1 \
    op interface \
    ports { reg_file_13_1_address0 { O 11 vector } reg_file_13_1_ce0 { O 1 bit } reg_file_13_1_we0 { O 1 bit } reg_file_13_1_d0 { O 16 vector } reg_file_13_1_address1 { O 11 vector } reg_file_13_1_ce1 { O 1 bit } reg_file_13_1_we1 { O 1 bit } reg_file_13_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_13_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name reg_file_14_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_14_0 \
    op interface \
    ports { reg_file_14_0_address0 { O 11 vector } reg_file_14_0_ce0 { O 1 bit } reg_file_14_0_we0 { O 1 bit } reg_file_14_0_d0 { O 16 vector } reg_file_14_0_address1 { O 11 vector } reg_file_14_0_ce1 { O 1 bit } reg_file_14_0_we1 { O 1 bit } reg_file_14_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name reg_file_14_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_14_1 \
    op interface \
    ports { reg_file_14_1_address0 { O 11 vector } reg_file_14_1_ce0 { O 1 bit } reg_file_14_1_we0 { O 1 bit } reg_file_14_1_d0 { O 16 vector } reg_file_14_1_address1 { O 11 vector } reg_file_14_1_ce1 { O 1 bit } reg_file_14_1_we1 { O 1 bit } reg_file_14_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_14_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name reg_file_15_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_15_0 \
    op interface \
    ports { reg_file_15_0_address0 { O 11 vector } reg_file_15_0_ce0 { O 1 bit } reg_file_15_0_we0 { O 1 bit } reg_file_15_0_d0 { O 16 vector } reg_file_15_0_address1 { O 11 vector } reg_file_15_0_ce1 { O 1 bit } reg_file_15_0_we1 { O 1 bit } reg_file_15_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name reg_file_15_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename reg_file_15_1 \
    op interface \
    ports { reg_file_15_1_address0 { O 11 vector } reg_file_15_1_ce0 { O 1 bit } reg_file_15_1_we0 { O 1 bit } reg_file_15_1_d0 { O 16 vector } reg_file_15_1_address1 { O 11 vector } reg_file_15_1_ce1 { O 1 bit } reg_file_15_1_we1 { O 1 bit } reg_file_15_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reg_file_15_1'"
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


