// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reg_file_6_1_address0,
        reg_file_6_1_ce0,
        reg_file_6_1_we0,
        reg_file_6_1_d0,
        reg_file_6_1_address1,
        reg_file_6_1_ce1,
        reg_file_6_1_we1,
        reg_file_6_1_d1,
        reg_file_6_0_address0,
        reg_file_6_0_ce0,
        reg_file_6_0_we0,
        reg_file_6_0_d0,
        reg_file_6_0_address1,
        reg_file_6_0_ce1,
        reg_file_6_0_we1,
        reg_file_6_0_d1,
        reg_file_2_1_address0,
        reg_file_2_1_ce0,
        reg_file_2_1_q0,
        reg_file_2_1_address1,
        reg_file_2_1_ce1,
        reg_file_2_1_q1,
        reg_file_2_0_address0,
        reg_file_2_0_ce0,
        reg_file_2_0_q0,
        reg_file_2_0_address1,
        reg_file_2_0_ce1,
        reg_file_2_0_q1,
        grp_fu_244_p_din0,
        grp_fu_244_p_din1,
        grp_fu_244_p_dout0,
        grp_fu_244_p_ce,
        grp_fu_248_p_din0,
        grp_fu_248_p_din1,
        grp_fu_248_p_dout0,
        grp_fu_248_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] reg_file_6_1_address0;
output   reg_file_6_1_ce0;
output   reg_file_6_1_we0;
output  [15:0] reg_file_6_1_d0;
output  [10:0] reg_file_6_1_address1;
output   reg_file_6_1_ce1;
output   reg_file_6_1_we1;
output  [15:0] reg_file_6_1_d1;
output  [10:0] reg_file_6_0_address0;
output   reg_file_6_0_ce0;
output   reg_file_6_0_we0;
output  [15:0] reg_file_6_0_d0;
output  [10:0] reg_file_6_0_address1;
output   reg_file_6_0_ce1;
output   reg_file_6_0_we1;
output  [15:0] reg_file_6_0_d1;
output  [10:0] reg_file_2_1_address0;
output   reg_file_2_1_ce0;
input  [15:0] reg_file_2_1_q0;
output  [10:0] reg_file_2_1_address1;
output   reg_file_2_1_ce1;
input  [15:0] reg_file_2_1_q1;
output  [10:0] reg_file_2_0_address0;
output   reg_file_2_0_ce0;
input  [15:0] reg_file_2_0_q0;
output  [10:0] reg_file_2_0_address1;
output   reg_file_2_0_ce1;
input  [15:0] reg_file_2_0_q1;
output  [15:0] grp_fu_244_p_din0;
output  [15:0] grp_fu_244_p_din1;
input  [15:0] grp_fu_244_p_dout0;
output   grp_fu_244_p_ce;
output  [15:0] grp_fu_248_p_din0;
output  [15:0] grp_fu_248_p_din1;
input  [15:0] grp_fu_248_p_dout0;
output   grp_fu_248_p_ce;

reg ap_idle;
reg reg_file_6_1_ce0;
reg reg_file_6_1_we0;
reg reg_file_6_1_ce1;
reg reg_file_6_1_we1;
reg reg_file_6_0_ce0;
reg reg_file_6_0_we0;
reg reg_file_6_0_ce1;
reg reg_file_6_0_we1;
reg reg_file_2_1_ce0;
reg reg_file_2_1_ce1;
reg reg_file_2_0_ce0;
reg reg_file_2_0_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln172_fu_208_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln172_fu_274_p1;
reg   [0:0] trunc_ln172_reg_413;
reg   [0:0] trunc_ln172_reg_413_pp0_iter1_reg;
reg   [0:0] trunc_ln172_reg_413_pp0_iter2_reg;
reg   [10:0] reg_file_6_0_addr_reg_429;
reg   [10:0] reg_file_6_0_addr_reg_429_pp0_iter1_reg;
reg   [10:0] reg_file_6_1_addr_reg_434;
reg   [10:0] reg_file_6_1_addr_reg_434_pp0_iter1_reg;
reg   [10:0] lshr_ln_reg_439;
wire   [15:0] val1_fu_359_p4;
reg   [10:0] reg_file_6_0_addr_8_reg_460;
reg   [10:0] reg_file_6_0_addr_8_reg_460_pp0_iter2_reg;
reg   [10:0] reg_file_6_1_addr_8_reg_465;
reg   [10:0] reg_file_6_1_addr_8_reg_465_pp0_iter2_reg;
wire   [15:0] val1_3_fu_377_p4;
wire   [63:0] zext_ln177_fu_296_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln177_1_fu_370_p1;
reg   [6:0] i_8_fu_70;
wire   [6:0] add_ln173_fu_338_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8_load;
reg   [6:0] j_8_fu_74;
wire   [6:0] select_ln172_1_fu_248_p3;
reg   [6:0] ap_sig_allocacmp_j_8_load;
reg   [11:0] indvar_flatten13_fu_78;
wire   [11:0] add_ln172_fu_214_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten13_load;
wire   [0:0] tmp_fu_226_p3;
wire   [6:0] add_ln172_1_fu_242_p2;
wire   [4:0] indvars_iv100_udiv_mid2_fu_260_p4;
wire   [6:0] select_ln172_fu_234_p3;
wire   [4:0] tmp_3_fu_278_p4;
wire   [5:0] zext_ln172_1_fu_270_p1;
wire   [10:0] add_ln2_fu_288_p3;
wire   [5:0] trunc_ln11_fu_304_p1;
wire   [11:0] shl_ln_fu_308_p3;
wire   [11:0] or_ln11_fu_316_p2;
wire   [11:0] zext_ln172_fu_256_p1;
wire   [11:0] add_ln11_fu_322_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_69;
reg    ap_enable_state3_pp0_iter2_stage0;
reg    ap_enable_operation_78;
reg    ap_enable_state4_pp0_iter3_stage0;
reg    ap_enable_operation_71;
reg    ap_enable_operation_80;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U57(
    .din0(reg_file_2_0_q1),
    .din1(reg_file_2_1_q1),
    .din2(trunc_ln172_reg_413),
    .dout(val1_fu_359_p4)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U58(
    .din0(reg_file_2_0_q0),
    .din1(reg_file_2_1_q0),
    .din2(trunc_ln172_reg_413_pp0_iter1_reg),
    .dout(val1_3_fu_377_p4)
);

corr_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln172_fu_208_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_8_fu_70 <= add_ln173_fu_338_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_8_fu_70 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln172_fu_208_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_78 <= add_ln172_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_78 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln172_fu_208_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_8_fu_74 <= select_ln172_1_fu_248_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_8_fu_74 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        reg_file_6_0_addr_8_reg_460 <= zext_ln177_1_fu_370_p1;
        reg_file_6_0_addr_reg_429_pp0_iter1_reg[4 : 0] <= reg_file_6_0_addr_reg_429[4 : 0];
reg_file_6_0_addr_reg_429_pp0_iter1_reg[10 : 6] <= reg_file_6_0_addr_reg_429[10 : 6];
        reg_file_6_1_addr_8_reg_465 <= zext_ln177_1_fu_370_p1;
        reg_file_6_1_addr_reg_434_pp0_iter1_reg[4 : 0] <= reg_file_6_1_addr_reg_434[4 : 0];
reg_file_6_1_addr_reg_434_pp0_iter1_reg[10 : 6] <= reg_file_6_1_addr_reg_434[10 : 6];
        trunc_ln172_reg_413_pp0_iter1_reg <= trunc_ln172_reg_413;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln172_fu_208_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_439 <= {{add_ln11_fu_322_p2[11:1]}};
        reg_file_6_0_addr_reg_429[4 : 0] <= zext_ln177_fu_296_p1[4 : 0];
reg_file_6_0_addr_reg_429[10 : 6] <= zext_ln177_fu_296_p1[10 : 6];
        reg_file_6_1_addr_reg_434[4 : 0] <= zext_ln177_fu_296_p1[4 : 0];
reg_file_6_1_addr_reg_434[10 : 6] <= zext_ln177_fu_296_p1[10 : 6];
        trunc_ln172_reg_413 <= trunc_ln172_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        reg_file_6_0_addr_8_reg_460_pp0_iter2_reg <= reg_file_6_0_addr_8_reg_460;
        reg_file_6_1_addr_8_reg_465_pp0_iter2_reg <= reg_file_6_1_addr_8_reg_465;
        trunc_ln172_reg_413_pp0_iter2_reg <= trunc_ln172_reg_413_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((icmp_ln172_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_8_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8_load = i_8_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_8_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_8_load = j_8_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_0_ce0 = 1'b1;
    end else begin
        reg_file_2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_0_ce1 = 1'b1;
    end else begin
        reg_file_2_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_1_ce0 = 1'b1;
    end else begin
        reg_file_2_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_1_ce1 = 1'b1;
    end else begin
        reg_file_2_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        reg_file_6_0_ce0 = 1'b1;
    end else begin
        reg_file_6_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_0_ce1 = 1'b1;
    end else begin
        reg_file_6_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_413_pp0_iter2_reg == 1'd0))) begin
        reg_file_6_0_we0 = 1'b1;
    end else begin
        reg_file_6_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_413_pp0_iter1_reg == 1'd0))) begin
        reg_file_6_0_we1 = 1'b1;
    end else begin
        reg_file_6_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        reg_file_6_1_ce0 = 1'b1;
    end else begin
        reg_file_6_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_1_ce1 = 1'b1;
    end else begin
        reg_file_6_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_413_pp0_iter2_reg == 1'd1))) begin
        reg_file_6_1_we0 = 1'b1;
    end else begin
        reg_file_6_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_413_pp0_iter1_reg == 1'd1))) begin
        reg_file_6_1_we1 = 1'b1;
    end else begin
        reg_file_6_1_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11_fu_322_p2 = (or_ln11_fu_316_p2 + zext_ln172_fu_256_p1);

assign add_ln172_1_fu_242_p2 = (ap_sig_allocacmp_j_8_load + 7'd1);

assign add_ln172_fu_214_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 12'd1);

assign add_ln173_fu_338_p2 = (select_ln172_fu_234_p3 + 7'd2);

assign add_ln2_fu_288_p3 = {{tmp_3_fu_278_p4}, {zext_ln172_1_fu_270_p1}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_69 = (trunc_ln172_reg_413_pp0_iter1_reg == 1'd0);
end

always @ (*) begin
    ap_enable_operation_71 = (trunc_ln172_reg_413_pp0_iter1_reg == 1'd1);
end

always @ (*) begin
    ap_enable_operation_78 = (trunc_ln172_reg_413_pp0_iter2_reg == 1'd0);
end

always @ (*) begin
    ap_enable_operation_80 = (trunc_ln172_reg_413_pp0_iter2_reg == 1'd1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

always @ (*) begin
    ap_enable_state3_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state4_pp0_iter3_stage0 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_244_p_ce = 1'b1;

assign grp_fu_244_p_din0 = val1_fu_359_p4;

assign grp_fu_244_p_din1 = val1_fu_359_p4;

assign grp_fu_248_p_ce = 1'b1;

assign grp_fu_248_p_din0 = val1_3_fu_377_p4;

assign grp_fu_248_p_din1 = val1_3_fu_377_p4;

assign icmp_ln172_fu_208_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 12'd2048) ? 1'b1 : 1'b0);

assign indvars_iv100_udiv_mid2_fu_260_p4 = {{select_ln172_1_fu_248_p3[5:1]}};

assign or_ln11_fu_316_p2 = (shl_ln_fu_308_p3 | 12'd64);

assign reg_file_2_0_address0 = zext_ln177_1_fu_370_p1;

assign reg_file_2_0_address1 = zext_ln177_fu_296_p1;

assign reg_file_2_1_address0 = zext_ln177_1_fu_370_p1;

assign reg_file_2_1_address1 = zext_ln177_fu_296_p1;

assign reg_file_6_0_address0 = reg_file_6_0_addr_8_reg_460_pp0_iter2_reg;

assign reg_file_6_0_address1 = reg_file_6_0_addr_reg_429_pp0_iter1_reg;

assign reg_file_6_0_d0 = grp_fu_248_p_dout0;

assign reg_file_6_0_d1 = grp_fu_244_p_dout0;

assign reg_file_6_1_address0 = reg_file_6_1_addr_8_reg_465_pp0_iter2_reg;

assign reg_file_6_1_address1 = reg_file_6_1_addr_reg_434_pp0_iter1_reg;

assign reg_file_6_1_d0 = grp_fu_248_p_dout0;

assign reg_file_6_1_d1 = grp_fu_244_p_dout0;

assign select_ln172_1_fu_248_p3 = ((tmp_fu_226_p3[0:0] == 1'b1) ? add_ln172_1_fu_242_p2 : ap_sig_allocacmp_j_8_load);

assign select_ln172_fu_234_p3 = ((tmp_fu_226_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_8_load);

assign shl_ln_fu_308_p3 = {{trunc_ln11_fu_304_p1}, {6'd0}};

assign tmp_3_fu_278_p4 = {{select_ln172_fu_234_p3[5:1]}};

assign tmp_fu_226_p3 = ap_sig_allocacmp_i_8_load[32'd6];

assign trunc_ln11_fu_304_p1 = select_ln172_fu_234_p3[5:0];

assign trunc_ln172_fu_274_p1 = select_ln172_1_fu_248_p3[0:0];

assign zext_ln172_1_fu_270_p1 = indvars_iv100_udiv_mid2_fu_260_p4;

assign zext_ln172_fu_256_p1 = select_ln172_1_fu_248_p3;

assign zext_ln177_1_fu_370_p1 = lshr_ln_reg_439;

assign zext_ln177_fu_296_p1 = add_ln2_fu_288_p3;

always @ (posedge ap_clk) begin
    reg_file_6_0_addr_reg_429[5] <= 1'b0;
    reg_file_6_0_addr_reg_429_pp0_iter1_reg[5] <= 1'b0;
    reg_file_6_1_addr_reg_434[5] <= 1'b0;
    reg_file_6_1_addr_reg_434_pp0_iter1_reg[5] <= 1'b0;
end

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9
