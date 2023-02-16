// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reg_file_2_0_address0,
        reg_file_2_0_ce0,
        reg_file_2_0_q0,
        reg_file_2_1_address0,
        reg_file_2_1_ce0,
        reg_file_2_1_q0,
        reg_file_3_0_address0,
        reg_file_3_0_ce0,
        reg_file_3_0_q0,
        reg_file_3_1_address0,
        reg_file_3_1_ce0,
        reg_file_3_1_q0,
        reg_file_4_0_address0,
        reg_file_4_0_ce0,
        reg_file_4_0_q0,
        reg_file_4_1_address0,
        reg_file_4_1_ce0,
        reg_file_4_1_q0,
        reg_file_5_0_address0,
        reg_file_5_0_ce0,
        reg_file_5_0_we0,
        reg_file_5_0_d0,
        reg_file_5_0_q0,
        reg_file_5_0_address1,
        reg_file_5_0_ce1,
        reg_file_5_0_we1,
        reg_file_5_0_d1,
        reg_file_5_1_address0,
        reg_file_5_1_ce0,
        reg_file_5_1_we0,
        reg_file_5_1_d0,
        reg_file_5_1_q0,
        reg_file_5_1_address1,
        reg_file_5_1_ce1,
        reg_file_5_1_we1,
        reg_file_5_1_d1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] reg_file_2_0_address0;
output   reg_file_2_0_ce0;
input  [15:0] reg_file_2_0_q0;
output  [10:0] reg_file_2_1_address0;
output   reg_file_2_1_ce0;
input  [15:0] reg_file_2_1_q0;
output  [10:0] reg_file_3_0_address0;
output   reg_file_3_0_ce0;
input  [15:0] reg_file_3_0_q0;
output  [10:0] reg_file_3_1_address0;
output   reg_file_3_1_ce0;
input  [15:0] reg_file_3_1_q0;
output  [10:0] reg_file_4_0_address0;
output   reg_file_4_0_ce0;
input  [15:0] reg_file_4_0_q0;
output  [10:0] reg_file_4_1_address0;
output   reg_file_4_1_ce0;
input  [15:0] reg_file_4_1_q0;
output  [10:0] reg_file_5_0_address0;
output   reg_file_5_0_ce0;
output   reg_file_5_0_we0;
output  [15:0] reg_file_5_0_d0;
input  [15:0] reg_file_5_0_q0;
output  [10:0] reg_file_5_0_address1;
output   reg_file_5_0_ce1;
output   reg_file_5_0_we1;
output  [15:0] reg_file_5_0_d1;
output  [10:0] reg_file_5_1_address0;
output   reg_file_5_1_ce0;
output   reg_file_5_1_we0;
output  [15:0] reg_file_5_1_d0;
input  [15:0] reg_file_5_1_q0;
output  [10:0] reg_file_5_1_address1;
output   reg_file_5_1_ce1;
output   reg_file_5_1_we1;
output  [15:0] reg_file_5_1_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] reg_file_5_0_address0;
reg reg_file_5_0_ce0;
reg reg_file_5_0_we0;
reg[15:0] reg_file_5_0_d0;
reg reg_file_5_0_ce1;
reg reg_file_5_0_we1;
reg[10:0] reg_file_5_1_address0;
reg reg_file_5_1_ce0;
reg reg_file_5_1_we0;
reg[15:0] reg_file_5_1_d0;
reg reg_file_5_1_ce1;
reg reg_file_5_1_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] trunc_ln141_fu_85_p1;
reg   [5:0] trunc_ln141_reg_114;
wire    ap_CS_fsm_state3;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_done;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_idle;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_ready;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce0;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we0;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address1;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce1;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we1;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d1;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce0;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we0;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address1;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce1;
wire    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we1;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d1;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_done;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_idle;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_ready;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_ce0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_ce0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_we0;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_d0;
wire   [10:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_address0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_ce0;
wire    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_we0;
wire   [15:0] grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_d0;
reg    grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg;
wire   [0:0] icmp_ln141_fu_90_p2;
wire    ap_CS_fsm_state4;
reg   [6:0] i_fu_44;
wire   [6:0] add_ln141_fu_96_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg = 1'b0;
#0 grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg = 1'b0;
end

corr_accel_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2 grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start),
    .ap_done(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_done),
    .ap_idle(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_idle),
    .ap_ready(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_ready),
    .reg_file_5_1_address0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address0),
    .reg_file_5_1_ce0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce0),
    .reg_file_5_1_we0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we0),
    .reg_file_5_1_d0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d0),
    .reg_file_5_1_address1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address1),
    .reg_file_5_1_ce1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce1),
    .reg_file_5_1_we1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we1),
    .reg_file_5_1_d1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d1),
    .reg_file_5_0_address0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address0),
    .reg_file_5_0_ce0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce0),
    .reg_file_5_0_we0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we0),
    .reg_file_5_0_d0(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d0),
    .reg_file_5_0_address1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address1),
    .reg_file_5_0_ce1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce1),
    .reg_file_5_0_we1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we1),
    .reg_file_5_0_d1(grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d1)
);

corr_accel_compute_Pipeline_VITIS_LOOP_142_4 grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start),
    .ap_done(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_done),
    .ap_idle(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_idle),
    .ap_ready(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_ready),
    .i_7(trunc_ln141_reg_114),
    .reg_file_4_0_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_address0),
    .reg_file_4_0_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_ce0),
    .reg_file_4_0_q0(reg_file_4_0_q0),
    .reg_file_4_1_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_address0),
    .reg_file_4_1_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_ce0),
    .reg_file_4_1_q0(reg_file_4_1_q0),
    .reg_file_2_0_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_address0),
    .reg_file_2_0_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_ce0),
    .reg_file_2_0_q0(reg_file_2_0_q0),
    .reg_file_2_1_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_address0),
    .reg_file_2_1_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_ce0),
    .reg_file_2_1_q0(reg_file_2_1_q0),
    .reg_file_3_0_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_address0),
    .reg_file_3_0_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_ce0),
    .reg_file_3_0_q0(reg_file_3_0_q0),
    .reg_file_3_1_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_address0),
    .reg_file_3_1_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_ce0),
    .reg_file_3_1_q0(reg_file_3_1_q0),
    .reg_file_5_0_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_address0),
    .reg_file_5_0_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_ce0),
    .reg_file_5_0_we0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_we0),
    .reg_file_5_0_d0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_d0),
    .reg_file_5_0_q0(reg_file_5_0_q0),
    .reg_file_5_1_address0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_address0),
    .reg_file_5_1_ce0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_ce0),
    .reg_file_5_1_we0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_we0),
    .reg_file_5_1_d0(grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_d0),
    .reg_file_5_1_q0(reg_file_5_1_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_ready == 1'b1)) begin
            grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln141_fu_90_p2 == 1'd0))) begin
            grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_ready == 1'b1)) begin
            grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_44 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln141_fu_90_p2 == 1'd0))) begin
        i_fu_44 <= add_ln141_fu_96_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln141_reg_114 <= trunc_ln141_fu_85_p1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln141_fu_90_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln141_fu_90_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_0_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_address0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address0;
    end else begin
        reg_file_5_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_0_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_ce0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce0;
    end else begin
        reg_file_5_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_ce1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_ce1;
    end else begin
        reg_file_5_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_0_d0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_d0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d0;
    end else begin
        reg_file_5_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_0_we0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_we0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we0;
    end else begin
        reg_file_5_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_0_we1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_we1;
    end else begin
        reg_file_5_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_1_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_address0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address0;
    end else begin
        reg_file_5_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_1_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_ce0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce0;
    end else begin
        reg_file_5_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_ce1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_ce1;
    end else begin
        reg_file_5_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_1_d0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_d0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d0;
    end else begin
        reg_file_5_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_file_5_1_we0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_5_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_we0 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we0;
    end else begin
        reg_file_5_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_file_5_1_we1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_we1;
    end else begin
        reg_file_5_1_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln141_fu_90_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln141_fu_96_p2 = (i_fu_44 + 7'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_ap_start_reg;

assign grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_ap_start_reg;

assign icmp_ln141_fu_90_p2 = ((i_fu_44 == 7'd64) ? 1'b1 : 1'b0);

assign reg_file_2_0_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_address0;

assign reg_file_2_0_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_0_ce0;

assign reg_file_2_1_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_address0;

assign reg_file_2_1_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_2_1_ce0;

assign reg_file_3_0_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_address0;

assign reg_file_3_0_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_0_ce0;

assign reg_file_3_1_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_address0;

assign reg_file_3_1_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_3_1_ce0;

assign reg_file_4_0_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_address0;

assign reg_file_4_0_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_0_ce0;

assign reg_file_4_1_address0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_address0;

assign reg_file_4_1_ce0 = grp_compute_Pipeline_VITIS_LOOP_142_4_fu_56_reg_file_4_1_ce0;

assign reg_file_5_0_address1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_address1;

assign reg_file_5_0_d1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_0_d1;

assign reg_file_5_1_address1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_address1;

assign reg_file_5_1_d1 = grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_48_reg_file_5_1_d1;

assign trunc_ln141_fu_85_p1 = i_fu_44[5:0];

endmodule //corr_accel_compute
