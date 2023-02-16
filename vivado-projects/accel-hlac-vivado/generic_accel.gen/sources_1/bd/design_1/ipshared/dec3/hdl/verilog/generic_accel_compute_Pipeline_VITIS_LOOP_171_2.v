// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module generic_accel_compute_Pipeline_VITIS_LOOP_171_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_ins_r1_V_1_091,
        m_ins_r1_V_0_090,
        m_ins_r0_V_1_089,
        m_ins_r0_V_0_088,
        m_ins_r_dst_V_1_087,
        m_ins_r_dst_V_0_086,
        m_ins_opcode_1_085,
        m_ins_opcode_0_084,
        shl_ln,
        pgml_address0,
        pgml_ce0,
        pgml_q0,
        pgml_address1,
        pgml_ce1,
        pgml_q1,
        pgml_address2,
        pgml_ce2,
        pgml_q2,
        pgml_address3,
        pgml_ce3,
        pgml_q3,
        tmp_326,
        m_ins_r1_V_1_1_out,
        m_ins_r1_V_1_1_out_ap_vld,
        m_ins_r1_V_0_1_out,
        m_ins_r1_V_0_1_out_ap_vld,
        m_ins_r0_V_1_1_out,
        m_ins_r0_V_1_1_out_ap_vld,
        m_ins_r0_V_0_1_out,
        m_ins_r0_V_0_1_out_ap_vld,
        m_ins_r_dst_V_1_1_out,
        m_ins_r_dst_V_1_1_out_ap_vld,
        m_ins_r_dst_V_0_1_out,
        m_ins_r_dst_V_0_1_out_ap_vld,
        opcode_out,
        opcode_out_ap_vld,
        opcode_1_out,
        opcode_1_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] m_ins_r1_V_1_091;
input  [4:0] m_ins_r1_V_0_090;
input  [4:0] m_ins_r0_V_1_089;
input  [4:0] m_ins_r0_V_0_088;
input  [4:0] m_ins_r_dst_V_1_087;
input  [4:0] m_ins_r_dst_V_0_086;
input  [7:0] m_ins_opcode_1_085;
input  [7:0] m_ins_opcode_0_084;
input  [8:0] shl_ln;
output  [8:0] pgml_address0;
output   pgml_ce0;
input  [7:0] pgml_q0;
output  [8:0] pgml_address1;
output   pgml_ce1;
input  [7:0] pgml_q1;
output  [8:0] pgml_address2;
output   pgml_ce2;
input  [7:0] pgml_q2;
output  [8:0] pgml_address3;
output   pgml_ce3;
input  [7:0] pgml_q3;
input  [5:0] tmp_326;
output  [4:0] m_ins_r1_V_1_1_out;
output   m_ins_r1_V_1_1_out_ap_vld;
output  [4:0] m_ins_r1_V_0_1_out;
output   m_ins_r1_V_0_1_out_ap_vld;
output  [4:0] m_ins_r0_V_1_1_out;
output   m_ins_r0_V_1_1_out_ap_vld;
output  [4:0] m_ins_r0_V_0_1_out;
output   m_ins_r0_V_0_1_out_ap_vld;
output  [4:0] m_ins_r_dst_V_1_1_out;
output   m_ins_r_dst_V_1_1_out_ap_vld;
output  [4:0] m_ins_r_dst_V_0_1_out;
output   m_ins_r_dst_V_0_1_out_ap_vld;
output  [7:0] opcode_out;
output   opcode_out_ap_vld;
output  [7:0] opcode_1_out;
output   opcode_1_out_ap_vld;

reg ap_idle;
reg pgml_ce0;
reg pgml_ce1;
reg pgml_ce2;
reg pgml_ce3;
reg m_ins_r1_V_1_1_out_ap_vld;
reg m_ins_r1_V_0_1_out_ap_vld;
reg m_ins_r0_V_1_1_out_ap_vld;
reg m_ins_r0_V_0_1_out_ap_vld;
reg m_ins_r_dst_V_1_1_out_ap_vld;
reg m_ins_r_dst_V_0_1_out_ap_vld;
reg opcode_out_ap_vld;
reg opcode_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln171_fu_346_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln172_fu_380_p1;
reg   [0:0] trunc_ln172_reg_707;
wire   [63:0] zext_ln541_fu_375_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln173_fu_398_p1;
wire   [63:0] zext_ln174_fu_417_p1;
wire   [63:0] zext_ln175_fu_436_p1;
reg   [1:0] idx_fu_88;
wire   [1:0] add_ln171_fu_352_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_idx_5;
reg   [3:0] i_fu_92;
wire   [3:0] add_ln176_fu_441_p2;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [7:0] m_ins_opcode_1_fu_96;
wire   [7:0] m_ins_opcode_1_3_fu_488_p3;
reg   [7:0] opcode_fu_100;
wire   [7:0] select_ln172_fu_481_p3;
reg   [4:0] m_ins_r_dst_V_1_fu_104;
wire   [4:0] m_ins_r_dst_V_1_6_fu_506_p3;
reg   [4:0] m_ins_r_dst_V_1_3_fu_108;
wire   [4:0] m_ins_r_dst_V_1_5_fu_499_p3;
reg   [4:0] m_ins_r0_V_1_fu_112;
wire   [4:0] m_ins_r0_V_1_6_fu_524_p3;
reg   [4:0] m_ins_r0_V_1_3_fu_116;
wire   [4:0] m_ins_r0_V_1_5_fu_517_p3;
reg   [4:0] m_ins_r1_V_1_fu_120;
wire   [4:0] m_ins_r1_V_1_6_fu_542_p3;
reg   [4:0] m_ins_r1_V_1_3_fu_124;
wire   [4:0] m_ins_r1_V_1_5_fu_535_p3;
wire    ap_block_pp0_stage0_01001;
wire   [8:0] zext_ln25_fu_365_p1;
wire   [8:0] add_ln541_fu_369_p2;
wire   [2:0] trunc_ln25_fu_361_p1;
wire   [2:0] or_ln173_fu_384_p2;
wire   [8:0] add_ln_fu_390_p3;
wire   [2:0] or_ln174_fu_403_p2;
wire   [8:0] add_ln1_fu_409_p3;
wire   [2:0] or_ln175_fu_422_p2;
wire   [8:0] add_ln2_fu_428_p3;
wire   [4:0] m_ins_r_dst_V_0_fu_495_p1;
wire   [4:0] m_ins_r0_V_0_fu_513_p1;
wire   [4:0] m_ins_r1_V_0_fu_531_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

generic_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln171_fu_346_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_92 <= add_ln176_fu_441_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln171_fu_346_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx_fu_88 <= add_ln171_fu_352_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_88 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_opcode_1_fu_96 <= m_ins_opcode_0_084;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_opcode_1_fu_96 <= m_ins_opcode_1_3_fu_488_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r0_V_1_3_fu_116 <= m_ins_r0_V_1_089;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r0_V_1_3_fu_116 <= m_ins_r0_V_1_5_fu_517_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r0_V_1_fu_112 <= m_ins_r0_V_0_088;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r0_V_1_fu_112 <= m_ins_r0_V_1_6_fu_524_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r1_V_1_3_fu_124 <= m_ins_r1_V_1_091;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r1_V_1_3_fu_124 <= m_ins_r1_V_1_5_fu_535_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r1_V_1_fu_120 <= m_ins_r1_V_0_090;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r1_V_1_fu_120 <= m_ins_r1_V_1_6_fu_542_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r_dst_V_1_3_fu_108 <= m_ins_r_dst_V_1_087;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r_dst_V_1_3_fu_108 <= m_ins_r_dst_V_1_5_fu_499_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_ins_r_dst_V_1_fu_104 <= m_ins_r_dst_V_0_086;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            m_ins_r_dst_V_1_fu_104 <= m_ins_r_dst_V_1_6_fu_506_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            opcode_fu_100 <= m_ins_opcode_1_085;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            opcode_fu_100 <= select_ln172_fu_481_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln171_fu_346_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln172_reg_707 <= trunc_ln172_fu_380_p1;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_92;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_idx_5 = 2'd0;
    end else begin
        ap_sig_allocacmp_idx_5 = idx_fu_88;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r0_V_0_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r0_V_0_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r0_V_1_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r0_V_1_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r1_V_0_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r1_V_0_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r1_V_1_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r1_V_1_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r_dst_V_0_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r_dst_V_0_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_ins_r_dst_V_1_1_out_ap_vld = 1'b1;
    end else begin
        m_ins_r_dst_V_1_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        opcode_1_out_ap_vld = 1'b1;
    end else begin
        opcode_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln171_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        opcode_out_ap_vld = 1'b1;
    end else begin
        opcode_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pgml_ce0 = 1'b1;
    end else begin
        pgml_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pgml_ce1 = 1'b1;
    end else begin
        pgml_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pgml_ce2 = 1'b1;
    end else begin
        pgml_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pgml_ce3 = 1'b1;
    end else begin
        pgml_ce3 = 1'b0;
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

assign add_ln171_fu_352_p2 = (ap_sig_allocacmp_idx_5 + 2'd1);

assign add_ln176_fu_441_p2 = (ap_sig_allocacmp_i_load + 4'd4);

assign add_ln1_fu_409_p3 = {{tmp_326}, {or_ln174_fu_403_p2}};

assign add_ln2_fu_428_p3 = {{tmp_326}, {or_ln175_fu_422_p2}};

assign add_ln541_fu_369_p2 = (zext_ln25_fu_365_p1 + shl_ln);

assign add_ln_fu_390_p3 = {{tmp_326}, {or_ln173_fu_384_p2}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln171_fu_346_p2 = ((ap_sig_allocacmp_idx_5 == 2'd2) ? 1'b1 : 1'b0);

assign m_ins_opcode_1_3_fu_488_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_opcode_1_fu_96 : pgml_q3);

assign m_ins_r0_V_0_1_out = m_ins_r0_V_1_fu_112;

assign m_ins_r0_V_0_fu_513_p1 = pgml_q1[4:0];

assign m_ins_r0_V_1_1_out = m_ins_r0_V_1_3_fu_116;

assign m_ins_r0_V_1_5_fu_517_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r0_V_0_fu_513_p1 : m_ins_r0_V_1_3_fu_116);

assign m_ins_r0_V_1_6_fu_524_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r0_V_1_fu_112 : m_ins_r0_V_0_fu_513_p1);

assign m_ins_r1_V_0_1_out = m_ins_r1_V_1_fu_120;

assign m_ins_r1_V_0_fu_531_p1 = pgml_q0[4:0];

assign m_ins_r1_V_1_1_out = m_ins_r1_V_1_3_fu_124;

assign m_ins_r1_V_1_5_fu_535_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r1_V_0_fu_531_p1 : m_ins_r1_V_1_3_fu_124);

assign m_ins_r1_V_1_6_fu_542_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r1_V_1_fu_120 : m_ins_r1_V_0_fu_531_p1);

assign m_ins_r_dst_V_0_1_out = m_ins_r_dst_V_1_fu_104;

assign m_ins_r_dst_V_0_fu_495_p1 = pgml_q2[4:0];

assign m_ins_r_dst_V_1_1_out = m_ins_r_dst_V_1_3_fu_108;

assign m_ins_r_dst_V_1_5_fu_499_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r_dst_V_0_fu_495_p1 : m_ins_r_dst_V_1_3_fu_108);

assign m_ins_r_dst_V_1_6_fu_506_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? m_ins_r_dst_V_1_fu_104 : m_ins_r_dst_V_0_fu_495_p1);

assign opcode_1_out = m_ins_opcode_1_fu_96;

assign opcode_out = opcode_fu_100;

assign or_ln173_fu_384_p2 = (trunc_ln25_fu_361_p1 | 3'd1);

assign or_ln174_fu_403_p2 = (trunc_ln25_fu_361_p1 | 3'd2);

assign or_ln175_fu_422_p2 = (trunc_ln25_fu_361_p1 | 3'd3);

assign pgml_address0 = zext_ln175_fu_436_p1;

assign pgml_address1 = zext_ln174_fu_417_p1;

assign pgml_address2 = zext_ln173_fu_398_p1;

assign pgml_address3 = zext_ln541_fu_375_p1;

assign select_ln172_fu_481_p3 = ((trunc_ln172_reg_707[0:0] == 1'b1) ? pgml_q3 : opcode_fu_100);

assign trunc_ln172_fu_380_p1 = ap_sig_allocacmp_idx_5[0:0];

assign trunc_ln25_fu_361_p1 = ap_sig_allocacmp_i_load[2:0];

assign zext_ln173_fu_398_p1 = add_ln_fu_390_p3;

assign zext_ln174_fu_417_p1 = add_ln1_fu_409_p3;

assign zext_ln175_fu_436_p1 = add_ln2_fu_428_p3;

assign zext_ln25_fu_365_p1 = ap_sig_allocacmp_i_load;

assign zext_ln541_fu_375_p1 = add_ln541_fu_369_p2;

endmodule //generic_accel_compute_Pipeline_VITIS_LOOP_171_2
