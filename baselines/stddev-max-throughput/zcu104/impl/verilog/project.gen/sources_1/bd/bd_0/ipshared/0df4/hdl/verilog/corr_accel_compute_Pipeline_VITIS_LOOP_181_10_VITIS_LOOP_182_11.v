// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11 (
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
        reg_file_5_1_address0,
        reg_file_5_1_ce0,
        reg_file_5_1_we0,
        reg_file_5_1_d0,
        reg_file_5_1_address1,
        reg_file_5_1_ce1,
        reg_file_5_1_q1,
        reg_file_5_0_address0,
        reg_file_5_0_ce0,
        reg_file_5_0_we0,
        reg_file_5_0_d0,
        reg_file_5_0_address1,
        reg_file_5_0_ce1,
        reg_file_5_0_q1,
        grp_fu_162_p_din0,
        grp_fu_162_p_din1,
        grp_fu_162_p_dout0,
        grp_fu_162_p_ce,
        grp_fu_166_p_din0,
        grp_fu_166_p_din1,
        grp_fu_166_p_dout0,
        grp_fu_166_p_ce
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
output  [10:0] reg_file_5_1_address0;
output   reg_file_5_1_ce0;
output   reg_file_5_1_we0;
output  [15:0] reg_file_5_1_d0;
output  [10:0] reg_file_5_1_address1;
output   reg_file_5_1_ce1;
input  [15:0] reg_file_5_1_q1;
output  [10:0] reg_file_5_0_address0;
output   reg_file_5_0_ce0;
output   reg_file_5_0_we0;
output  [15:0] reg_file_5_0_d0;
output  [10:0] reg_file_5_0_address1;
output   reg_file_5_0_ce1;
input  [15:0] reg_file_5_0_q1;
output  [15:0] grp_fu_162_p_din0;
output  [15:0] grp_fu_162_p_din1;
input  [15:0] grp_fu_162_p_dout0;
output   grp_fu_162_p_ce;
output  [15:0] grp_fu_166_p_din0;
output  [15:0] grp_fu_166_p_din1;
input  [15:0] grp_fu_166_p_dout0;
output   grp_fu_166_p_ce;

reg ap_idle;
reg reg_file_6_1_ce0;
reg reg_file_6_0_ce0;
reg reg_file_5_1_ce0;
reg reg_file_5_1_we0;
reg reg_file_5_1_ce1;
reg reg_file_5_0_ce0;
reg reg_file_5_0_we0;
reg reg_file_5_0_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln181_fu_162_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] reg_file_5_0_addr_reg_295;
reg   [10:0] reg_file_5_0_addr_reg_295_pp0_iter1_reg;
reg   [10:0] reg_file_5_1_addr_reg_306;
reg   [10:0] reg_file_5_1_addr_reg_306_pp0_iter1_reg;
wire   [63:0] zext_ln186_1_fu_238_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln186_fu_220_p1;
reg   [6:0] j_11_fu_58;
wire   [6:0] add_ln182_fu_244_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_11_load;
reg   [6:0] i_fu_62;
wire   [6:0] select_ln186_1_fu_202_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten20_fu_66;
wire   [11:0] add_ln181_fu_168_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten20_load;
wire   [0:0] tmp_fu_180_p3;
wire   [6:0] add_ln181_1_fu_196_p2;
wire   [6:0] select_ln186_fu_188_p3;
wire   [4:0] lshr_ln_fu_210_p4;
wire   [5:0] trunc_ln186_fu_226_p1;
wire   [10:0] add_ln3_fu_230_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_35;
reg    ap_enable_state1_pp0_iter0_stage0;
wire    ap_enable_operation_45;
reg    ap_enable_state2_pp0_iter1_stage0;
wire    ap_enable_operation_55;
reg    ap_enable_state3_pp0_iter2_stage0;
reg    ap_enable_operation_39;
wire    ap_enable_operation_48;
wire    ap_enable_operation_57;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln181_fu_162_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            i_fu_62 <= select_ln186_1_fu_202_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln181_fu_162_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten20_fu_66 <= add_ln181_fu_168_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_66 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln181_fu_162_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_11_fu_58 <= add_ln182_fu_244_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_11_fu_58 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        reg_file_5_0_addr_reg_295_pp0_iter1_reg[4 : 0] <= reg_file_5_0_addr_reg_295[4 : 0];
        reg_file_5_1_addr_reg_306_pp0_iter1_reg[4 : 0] <= reg_file_5_1_addr_reg_306[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln181_fu_162_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_5_0_addr_reg_295[4 : 0] <= zext_ln186_fu_220_p1[4 : 0];
        reg_file_5_1_addr_reg_306[4 : 0] <= zext_ln186_fu_220_p1[4 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln181_fu_162_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_11_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_11_load = j_11_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_5_0_ce0 = 1'b1;
    end else begin
        reg_file_5_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_5_0_ce1 = 1'b1;
    end else begin
        reg_file_5_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_5_0_we0 = 1'b1;
    end else begin
        reg_file_5_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_5_1_ce0 = 1'b1;
    end else begin
        reg_file_5_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_5_1_ce1 = 1'b1;
    end else begin
        reg_file_5_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_5_1_we0 = 1'b1;
    end else begin
        reg_file_5_1_we0 = 1'b0;
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

assign add_ln181_1_fu_196_p2 = (ap_sig_allocacmp_i_load + 7'd1);

assign add_ln181_fu_168_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 12'd1);

assign add_ln182_fu_244_p2 = (select_ln186_fu_188_p3 + 7'd2);

assign add_ln3_fu_230_p3 = {{trunc_ln186_fu_226_p1}, {lshr_ln_fu_210_p4}};

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

always @ (*) begin
    ap_enable_operation_35 = (icmp_ln181_fu_162_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_39 = (icmp_ln181_fu_162_p2 == 1'd0);
end

assign ap_enable_operation_45 = (1'b1 == 1'b1);

assign ap_enable_operation_48 = (1'b1 == 1'b1);

assign ap_enable_operation_55 = (1'b1 == 1'b1);

assign ap_enable_operation_57 = (1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state3_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_162_p_ce = 1'b1;

assign grp_fu_162_p_din0 = reg_file_5_0_q1;

assign grp_fu_162_p_din1 = reg_file_6_0_q0;

assign grp_fu_166_p_ce = 1'b1;

assign grp_fu_166_p_din0 = reg_file_5_1_q1;

assign grp_fu_166_p_din1 = reg_file_6_1_q0;

assign icmp_ln181_fu_162_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 12'd2048) ? 1'b1 : 1'b0);

assign lshr_ln_fu_210_p4 = {{select_ln186_fu_188_p3[5:1]}};

assign reg_file_5_0_address0 = reg_file_5_0_addr_reg_295_pp0_iter1_reg;

assign reg_file_5_0_address1 = zext_ln186_fu_220_p1;

assign reg_file_5_0_d0 = grp_fu_162_p_dout0;

assign reg_file_5_1_address0 = reg_file_5_1_addr_reg_306_pp0_iter1_reg;

assign reg_file_5_1_address1 = zext_ln186_fu_220_p1;

assign reg_file_5_1_d0 = grp_fu_166_p_dout0;

assign reg_file_6_0_address0 = zext_ln186_1_fu_238_p1;

assign reg_file_6_1_address0 = zext_ln186_1_fu_238_p1;

assign select_ln186_1_fu_202_p3 = ((tmp_fu_180_p3[0:0] == 1'b1) ? add_ln181_1_fu_196_p2 : ap_sig_allocacmp_i_load);

assign select_ln186_fu_188_p3 = ((tmp_fu_180_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_11_load);

assign tmp_fu_180_p3 = ap_sig_allocacmp_j_11_load[32'd6];

assign trunc_ln186_fu_226_p1 = select_ln186_1_fu_202_p3[5:0];

assign zext_ln186_1_fu_238_p1 = add_ln3_fu_230_p3;

assign zext_ln186_fu_220_p1 = lshr_ln_fu_210_p4;

always @ (posedge ap_clk) begin
    reg_file_5_0_addr_reg_295[10:5] <= 6'b000000;
    reg_file_5_0_addr_reg_295_pp0_iter1_reg[10:5] <= 6'b000000;
    reg_file_5_1_addr_reg_306[10:5] <= 6'b000000;
    reg_file_5_1_addr_reg_306_pp0_iter1_reg[10:5] <= 6'b000000;
end

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11
