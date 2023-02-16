// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_142_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reg_file_4_1_address0,
        reg_file_4_1_ce0,
        reg_file_4_1_we0,
        reg_file_4_1_d0,
        reg_file_4_1_address1,
        reg_file_4_1_ce1,
        reg_file_4_1_q1,
        reg_file_4_0_address0,
        reg_file_4_0_ce0,
        reg_file_4_0_we0,
        reg_file_4_0_d0,
        reg_file_4_0_address1,
        reg_file_4_0_ce1,
        reg_file_4_0_q1,
        reg_file_3_1_address0,
        reg_file_3_1_ce0,
        reg_file_3_1_q0,
        reg_file_3_0_address0,
        reg_file_3_0_ce0,
        reg_file_3_0_q0,
        k,
        tmp_1,
        tmp_36,
        grp_fu_127_p_din0,
        grp_fu_127_p_din1,
        grp_fu_127_p_dout0,
        grp_fu_127_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] reg_file_4_1_address0;
output   reg_file_4_1_ce0;
output   reg_file_4_1_we0;
output  [15:0] reg_file_4_1_d0;
output  [10:0] reg_file_4_1_address1;
output   reg_file_4_1_ce1;
input  [15:0] reg_file_4_1_q1;
output  [10:0] reg_file_4_0_address0;
output   reg_file_4_0_ce0;
output   reg_file_4_0_we0;
output  [15:0] reg_file_4_0_d0;
output  [10:0] reg_file_4_0_address1;
output   reg_file_4_0_ce1;
input  [15:0] reg_file_4_0_q1;
output  [10:0] reg_file_3_1_address0;
output   reg_file_3_1_ce0;
input  [15:0] reg_file_3_1_q0;
output  [10:0] reg_file_3_0_address0;
output   reg_file_3_0_ce0;
input  [15:0] reg_file_3_0_q0;
input  [5:0] k;
input  [15:0] tmp_1;
input  [5:0] tmp_36;
output  [15:0] grp_fu_127_p_din0;
output  [15:0] grp_fu_127_p_din1;
input  [15:0] grp_fu_127_p_dout0;
output   grp_fu_127_p_ce;

reg ap_idle;
reg reg_file_4_1_ce0;
reg reg_file_4_1_we0;
reg reg_file_4_1_ce1;
reg reg_file_4_0_ce0;
reg reg_file_4_0_we0;
reg reg_file_4_0_ce1;
reg reg_file_3_1_ce0;
reg reg_file_3_0_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln142_fu_191_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln5_fu_203_p4;
reg   [4:0] lshr_ln5_reg_288;
wire   [0:0] trunc_ln146_fu_227_p1;
reg   [0:0] trunc_ln146_reg_303;
reg   [0:0] trunc_ln146_reg_303_pp0_iter1_reg;
reg   [0:0] trunc_ln146_reg_303_pp0_iter2_reg;
reg   [0:0] trunc_ln146_reg_303_pp0_iter3_reg;
wire   [15:0] tmp_s_fu_236_p4;
reg   [10:0] reg_file_4_0_addr_reg_314;
reg   [10:0] reg_file_4_0_addr_reg_314_pp0_iter2_reg;
reg   [10:0] reg_file_4_0_addr_reg_314_pp0_iter3_reg;
reg   [10:0] reg_file_4_1_addr_reg_320;
reg   [10:0] reg_file_4_1_addr_reg_320_pp0_iter2_reg;
reg   [10:0] reg_file_4_1_addr_reg_320_pp0_iter3_reg;
reg   [15:0] mul_reg_326;
wire   [15:0] tmp_35_fu_258_p4;
reg   [15:0] tmp_35_reg_331;
wire   [63:0] zext_ln146_fu_221_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln146_1_fu_252_p1;
reg   [6:0] j_4_fu_76;
wire   [6:0] add_ln142_fu_197_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j;
wire   [15:0] grp_fu_158_p2;
wire   [10:0] add_ln1_fu_213_p3;
wire   [10:0] add_ln146_1_fu_246_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
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
#0 ap_done_reg = 1'b0;
end

corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
hadd_16ns_16ns_16_2_full_dsp_1_U40(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_35_reg_331),
    .din1(mul_reg_326),
    .ce(1'b1),
    .dout(grp_fu_158_p2)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U42(
    .din0(reg_file_3_0_q0),
    .din1(reg_file_3_1_q0),
    .din2(trunc_ln146_reg_303),
    .dout(tmp_s_fu_236_p4)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U43(
    .din0(reg_file_4_0_q1),
    .din1(reg_file_4_1_q1),
    .din2(trunc_ln146_reg_303_pp0_iter1_reg),
    .dout(tmp_35_fu_258_p4)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln142_fu_191_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_4_fu_76 <= add_ln142_fu_197_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_4_fu_76 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        reg_file_4_0_addr_reg_314 <= zext_ln146_1_fu_252_p1;
        reg_file_4_1_addr_reg_320 <= zext_ln146_1_fu_252_p1;
        trunc_ln146_reg_303_pp0_iter1_reg <= trunc_ln146_reg_303;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        mul_reg_326 <= grp_fu_127_p_dout0;
        reg_file_4_0_addr_reg_314_pp0_iter2_reg <= reg_file_4_0_addr_reg_314;
        reg_file_4_0_addr_reg_314_pp0_iter3_reg <= reg_file_4_0_addr_reg_314_pp0_iter2_reg;
        reg_file_4_1_addr_reg_320_pp0_iter2_reg <= reg_file_4_1_addr_reg_320;
        reg_file_4_1_addr_reg_320_pp0_iter3_reg <= reg_file_4_1_addr_reg_320_pp0_iter2_reg;
        tmp_35_reg_331 <= tmp_35_fu_258_p4;
        trunc_ln146_reg_303_pp0_iter2_reg <= trunc_ln146_reg_303_pp0_iter1_reg;
        trunc_ln146_reg_303_pp0_iter3_reg <= trunc_ln146_reg_303_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln142_fu_191_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln5_reg_288 <= {{ap_sig_allocacmp_j[5:1]}};
        trunc_ln146_reg_303 <= trunc_ln146_fu_227_p1;
    end
end

always @ (*) begin
    if (((icmp_ln142_fu_191_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_j = 7'd0;
    end else begin
        ap_sig_allocacmp_j = j_4_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_0_ce0 = 1'b1;
    end else begin
        reg_file_3_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_1_ce0 = 1'b1;
    end else begin
        reg_file_3_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        reg_file_4_0_ce0 = 1'b1;
    end else begin
        reg_file_4_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_4_0_ce1 = 1'b1;
    end else begin
        reg_file_4_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln146_reg_303_pp0_iter3_reg == 1'd0))) begin
        reg_file_4_0_we0 = 1'b1;
    end else begin
        reg_file_4_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        reg_file_4_1_ce0 = 1'b1;
    end else begin
        reg_file_4_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_4_1_ce1 = 1'b1;
    end else begin
        reg_file_4_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln146_reg_303_pp0_iter3_reg == 1'd1))) begin
        reg_file_4_1_we0 = 1'b1;
    end else begin
        reg_file_4_1_we0 = 1'b0;
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

assign add_ln142_fu_197_p2 = (ap_sig_allocacmp_j + 7'd1);

assign add_ln146_1_fu_246_p3 = {{tmp_36}, {lshr_ln5_reg_288}};

assign add_ln1_fu_213_p3 = {{k}, {lshr_ln5_fu_203_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_127_p_ce = 1'b1;

assign grp_fu_127_p_din0 = tmp_1;

assign grp_fu_127_p_din1 = tmp_s_fu_236_p4;

assign icmp_ln142_fu_191_p2 = ((ap_sig_allocacmp_j == 7'd64) ? 1'b1 : 1'b0);

assign lshr_ln5_fu_203_p4 = {{ap_sig_allocacmp_j[5:1]}};

assign reg_file_3_0_address0 = zext_ln146_fu_221_p1;

assign reg_file_3_1_address0 = zext_ln146_fu_221_p1;

assign reg_file_4_0_address0 = reg_file_4_0_addr_reg_314_pp0_iter3_reg;

assign reg_file_4_0_address1 = zext_ln146_1_fu_252_p1;

assign reg_file_4_0_d0 = grp_fu_158_p2;

assign reg_file_4_1_address0 = reg_file_4_1_addr_reg_320_pp0_iter3_reg;

assign reg_file_4_1_address1 = zext_ln146_1_fu_252_p1;

assign reg_file_4_1_d0 = grp_fu_158_p2;

assign trunc_ln146_fu_227_p1 = ap_sig_allocacmp_j[0:0];

assign zext_ln146_1_fu_252_p1 = add_ln146_1_fu_246_p3;

assign zext_ln146_fu_221_p1 = add_ln1_fu_213_p3;

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_142_4
