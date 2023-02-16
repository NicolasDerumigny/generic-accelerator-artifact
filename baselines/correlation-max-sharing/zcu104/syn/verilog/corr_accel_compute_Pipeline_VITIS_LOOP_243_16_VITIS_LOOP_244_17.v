// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reg_file_6_1_address0,
        reg_file_6_1_ce0,
        reg_file_6_1_q0,
        reg_file_6_0_address0,
        reg_file_6_0_ce0,
        reg_file_6_0_q0,
        reg_file_2_1_address0,
        reg_file_2_1_ce0,
        reg_file_2_1_we0,
        reg_file_2_1_d0,
        reg_file_2_1_address1,
        reg_file_2_1_ce1,
        reg_file_2_1_q1,
        reg_file_2_0_address0,
        reg_file_2_0_ce0,
        reg_file_2_0_we0,
        reg_file_2_0_d0,
        reg_file_2_0_address1,
        reg_file_2_0_ce1,
        reg_file_2_0_q1,
        grp_fu_288_p_din0,
        grp_fu_288_p_din1,
        grp_fu_288_p_dout0,
        grp_fu_288_p_ce
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
input  [15:0] reg_file_6_1_q0;
output  [10:0] reg_file_6_0_address0;
output   reg_file_6_0_ce0;
input  [15:0] reg_file_6_0_q0;
output  [10:0] reg_file_2_1_address0;
output   reg_file_2_1_ce0;
output   reg_file_2_1_we0;
output  [15:0] reg_file_2_1_d0;
output  [10:0] reg_file_2_1_address1;
output   reg_file_2_1_ce1;
input  [15:0] reg_file_2_1_q1;
output  [10:0] reg_file_2_0_address0;
output   reg_file_2_0_ce0;
output   reg_file_2_0_we0;
output  [15:0] reg_file_2_0_d0;
output  [10:0] reg_file_2_0_address1;
output   reg_file_2_0_ce1;
input  [15:0] reg_file_2_0_q1;
output  [15:0] grp_fu_288_p_din0;
output  [15:0] grp_fu_288_p_din1;
input  [15:0] grp_fu_288_p_dout0;
output   grp_fu_288_p_ce;

reg ap_idle;
reg reg_file_6_1_ce0;
reg reg_file_6_0_ce0;
reg reg_file_2_1_ce0;
reg reg_file_2_1_we0;
reg reg_file_2_1_ce1;
reg reg_file_2_0_ce0;
reg reg_file_2_0_we0;
reg reg_file_2_0_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln243_fu_173_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] reg_file_2_0_addr_reg_323;
reg   [10:0] reg_file_2_0_addr_reg_323_pp0_iter1_reg;
reg   [10:0] reg_file_2_0_addr_reg_323_pp0_iter2_reg;
reg   [10:0] reg_file_2_0_addr_reg_323_pp0_iter3_reg;
reg   [10:0] reg_file_2_0_addr_reg_323_pp0_iter4_reg;
reg   [10:0] reg_file_2_1_addr_reg_329;
reg   [10:0] reg_file_2_1_addr_reg_329_pp0_iter1_reg;
reg   [10:0] reg_file_2_1_addr_reg_329_pp0_iter2_reg;
reg   [10:0] reg_file_2_1_addr_reg_329_pp0_iter3_reg;
reg   [10:0] reg_file_2_1_addr_reg_329_pp0_iter4_reg;
wire   [0:0] trunc_ln250_1_fu_253_p1;
reg   [0:0] trunc_ln250_1_reg_335;
reg   [0:0] trunc_ln250_1_reg_335_pp0_iter1_reg;
reg   [0:0] trunc_ln250_1_reg_335_pp0_iter2_reg;
reg   [0:0] trunc_ln250_1_reg_335_pp0_iter3_reg;
reg   [0:0] trunc_ln250_1_reg_335_pp0_iter4_reg;
wire   [15:0] val1_fu_278_p4;
wire   [15:0] val2_fu_288_p4;
wire   [63:0] zext_ln250_1_fu_247_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln250_fu_229_p1;
reg   [6:0] j_fu_76;
wire   [6:0] add_ln244_fu_257_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_80;
wire   [6:0] select_ln250_1_fu_211_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [12:0] indvar_flatten27_fu_84;
wire   [12:0] add_ln243_fu_179_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten27_load;
wire   [0:0] icmp_ln244_fu_191_p2;
wire   [6:0] add_ln243_1_fu_205_p2;
wire   [6:0] select_ln250_fu_197_p3;
wire   [4:0] lshr_ln_fu_219_p4;
wire   [5:0] trunc_ln250_fu_235_p1;
wire   [10:0] add_ln4_fu_239_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_41;
reg    ap_enable_state1_pp0_iter0_stage0;
wire    ap_enable_operation_59;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_enable_operation_74;
reg    ap_enable_state6_pp0_iter5_stage0;
reg    ap_enable_operation_42;
wire    ap_enable_operation_60;
reg    ap_enable_operation_76;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U96(
    .din0(reg_file_2_0_q1),
    .din1(reg_file_2_1_q1),
    .din2(trunc_ln250_1_reg_335),
    .dout(val1_fu_278_p4)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U97(
    .din0(reg_file_6_0_q0),
    .din1(reg_file_6_1_q0),
    .din2(trunc_ln250_1_reg_335),
    .dout(val2_fu_288_p4)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln243_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            i_fu_80 <= select_ln250_1_fu_211_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln243_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten27_fu_84 <= add_ln243_fu_179_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten27_fu_84 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln243_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_fu_76 <= add_ln244_fu_257_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_76 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        reg_file_2_0_addr_reg_323_pp0_iter1_reg <= reg_file_2_0_addr_reg_323;
        reg_file_2_1_addr_reg_329_pp0_iter1_reg <= reg_file_2_1_addr_reg_329;
        trunc_ln250_1_reg_335_pp0_iter1_reg <= trunc_ln250_1_reg_335;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        reg_file_2_0_addr_reg_323_pp0_iter2_reg <= reg_file_2_0_addr_reg_323_pp0_iter1_reg;
        reg_file_2_0_addr_reg_323_pp0_iter3_reg <= reg_file_2_0_addr_reg_323_pp0_iter2_reg;
        reg_file_2_0_addr_reg_323_pp0_iter4_reg <= reg_file_2_0_addr_reg_323_pp0_iter3_reg;
        reg_file_2_1_addr_reg_329_pp0_iter2_reg <= reg_file_2_1_addr_reg_329_pp0_iter1_reg;
        reg_file_2_1_addr_reg_329_pp0_iter3_reg <= reg_file_2_1_addr_reg_329_pp0_iter2_reg;
        reg_file_2_1_addr_reg_329_pp0_iter4_reg <= reg_file_2_1_addr_reg_329_pp0_iter3_reg;
        trunc_ln250_1_reg_335_pp0_iter2_reg <= trunc_ln250_1_reg_335_pp0_iter1_reg;
        trunc_ln250_1_reg_335_pp0_iter3_reg <= trunc_ln250_1_reg_335_pp0_iter2_reg;
        trunc_ln250_1_reg_335_pp0_iter4_reg <= trunc_ln250_1_reg_335_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln243_fu_173_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_0_addr_reg_323 <= zext_ln250_1_fu_247_p1;
        reg_file_2_1_addr_reg_329 <= zext_ln250_1_fu_247_p1;
        trunc_ln250_1_reg_335 <= trunc_ln250_1_fu_253_p1;
    end
end

always @ (*) begin
    if (((icmp_ln243_fu_173_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten27_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten27_load = indvar_flatten27_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        reg_file_2_0_ce0 = 1'b1;
    end else begin
        reg_file_2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_0_ce1 = 1'b1;
    end else begin
        reg_file_2_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln250_1_reg_335_pp0_iter4_reg == 1'd0))) begin
        reg_file_2_0_we0 = 1'b1;
    end else begin
        reg_file_2_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        reg_file_2_1_ce0 = 1'b1;
    end else begin
        reg_file_2_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_1_ce1 = 1'b1;
    end else begin
        reg_file_2_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln250_1_reg_335_pp0_iter4_reg == 1'd1))) begin
        reg_file_2_1_we0 = 1'b1;
    end else begin
        reg_file_2_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_6_0_ce0 = 1'b1;
    end else begin
        reg_file_6_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_6_1_ce0 = 1'b1;
    end else begin
        reg_file_6_1_ce0 = 1'b0;
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

assign add_ln243_1_fu_205_p2 = (ap_sig_allocacmp_i_load + 7'd1);

assign add_ln243_fu_179_p2 = (ap_sig_allocacmp_indvar_flatten27_load + 13'd1);

assign add_ln244_fu_257_p2 = (select_ln250_fu_197_p3 + 7'd1);

assign add_ln4_fu_239_p3 = {{trunc_ln250_fu_235_p1}, {lshr_ln_fu_219_p4}};

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

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_41 = (icmp_ln243_fu_173_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_42 = (icmp_ln243_fu_173_p2 == 1'd0);
end

assign ap_enable_operation_59 = (1'b1 == 1'b1);

assign ap_enable_operation_60 = (1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_74 = (trunc_ln250_1_reg_335_pp0_iter4_reg == 1'd0);
end

always @ (*) begin
    ap_enable_operation_76 = (trunc_ln250_1_reg_335_pp0_iter4_reg == 1'd1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state6_pp0_iter5_stage0 = ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_288_p_ce = 1'b1;

assign grp_fu_288_p_din0 = val1_fu_278_p4;

assign grp_fu_288_p_din1 = val2_fu_288_p4;

assign icmp_ln243_fu_173_p2 = ((ap_sig_allocacmp_indvar_flatten27_load == 13'd4096) ? 1'b1 : 1'b0);

assign icmp_ln244_fu_191_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);

assign lshr_ln_fu_219_p4 = {{select_ln250_fu_197_p3[5:1]}};

assign reg_file_2_0_address0 = reg_file_2_0_addr_reg_323_pp0_iter4_reg;

assign reg_file_2_0_address1 = zext_ln250_1_fu_247_p1;

assign reg_file_2_0_d0 = grp_fu_288_p_dout0;

assign reg_file_2_1_address0 = reg_file_2_1_addr_reg_329_pp0_iter4_reg;

assign reg_file_2_1_address1 = zext_ln250_1_fu_247_p1;

assign reg_file_2_1_d0 = grp_fu_288_p_dout0;

assign reg_file_6_0_address0 = zext_ln250_fu_229_p1;

assign reg_file_6_1_address0 = zext_ln250_fu_229_p1;

assign select_ln250_1_fu_211_p3 = ((icmp_ln244_fu_191_p2[0:0] == 1'b1) ? add_ln243_1_fu_205_p2 : ap_sig_allocacmp_i_load);

assign select_ln250_fu_197_p3 = ((icmp_ln244_fu_191_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);

assign trunc_ln250_1_fu_253_p1 = select_ln250_fu_197_p3[0:0];

assign trunc_ln250_fu_235_p1 = select_ln250_1_fu_211_p3[5:0];

assign zext_ln250_1_fu_247_p1 = add_ln4_fu_239_p3;

assign zext_ln250_fu_229_p1 = lshr_ln_fu_219_p4;

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17
