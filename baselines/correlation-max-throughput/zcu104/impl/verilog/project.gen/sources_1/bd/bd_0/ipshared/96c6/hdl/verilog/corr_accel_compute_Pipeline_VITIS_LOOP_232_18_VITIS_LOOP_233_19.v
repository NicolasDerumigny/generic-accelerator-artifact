// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reg_file_3_1_address0,
        reg_file_3_1_ce0,
        reg_file_3_1_we0,
        reg_file_3_1_d0,
        reg_file_3_1_address1,
        reg_file_3_1_ce1,
        reg_file_3_1_we1,
        reg_file_3_1_d1,
        reg_file_3_0_address0,
        reg_file_3_0_ce0,
        reg_file_3_0_we0,
        reg_file_3_0_d0,
        reg_file_3_0_address1,
        reg_file_3_0_ce1,
        reg_file_3_0_we1,
        reg_file_3_0_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] reg_file_3_1_address0;
output   reg_file_3_1_ce0;
output   reg_file_3_1_we0;
output  [15:0] reg_file_3_1_d0;
output  [10:0] reg_file_3_1_address1;
output   reg_file_3_1_ce1;
output   reg_file_3_1_we1;
output  [15:0] reg_file_3_1_d1;
output  [10:0] reg_file_3_0_address0;
output   reg_file_3_0_ce0;
output   reg_file_3_0_we0;
output  [15:0] reg_file_3_0_d0;
output  [10:0] reg_file_3_0_address1;
output   reg_file_3_0_ce1;
output   reg_file_3_0_we1;
output  [15:0] reg_file_3_0_d1;

reg ap_idle;
reg reg_file_3_1_ce0;
reg reg_file_3_1_we0;
reg reg_file_3_1_ce1;
reg reg_file_3_1_we1;
reg reg_file_3_0_ce0;
reg reg_file_3_0_we0;
reg reg_file_3_0_ce1;
reg reg_file_3_0_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln232_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [5:0] select_ln132_1_fu_184_p3;
reg   [5:0] select_ln132_1_reg_279;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_192_p4;
reg   [4:0] lshr_ln_reg_284;
wire   [63:0] zext_ln237_fu_210_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln237_1_fu_249_p1;
reg   [6:0] j_15_fu_60;
wire   [6:0] add_ln233_fu_216_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_15_load;
reg   [5:0] i_fu_64;
reg   [5:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten34_fu_68;
wire   [9:0] add_ln232_fu_150_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten34_load;
wire   [0:0] tmp_fu_162_p3;
wire   [5:0] add_ln232_1_fu_178_p2;
wire   [6:0] select_ln132_fu_170_p3;
wire   [10:0] add_ln5_fu_202_p3;
wire   [4:0] or_ln237_fu_237_p2;
wire   [10:0] add_ln237_1_fu_242_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_28;
reg    ap_enable_state1_pp0_iter0_stage0;
wire    ap_enable_operation_43;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_enable_operation_30;
wire    ap_enable_operation_45;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        if (((icmp_ln232_fu_144_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            i_fu_64 <= select_ln132_1_fu_184_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln232_fu_144_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten34_fu_68 <= add_ln232_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten34_fu_68 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln232_fu_144_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_15_fu_60 <= add_ln233_fu_216_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_15_fu_60 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln232_fu_144_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_284 <= {{select_ln132_fu_170_p3[5:1]}};
        select_ln132_1_reg_279 <= select_ln132_1_fu_184_p3;
    end
end

always @ (*) begin
    if (((icmp_ln232_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_64;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten34_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten34_load = indvar_flatten34_fu_68;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_15_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_15_load = j_15_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_0_ce0 = 1'b1;
    end else begin
        reg_file_3_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_0_ce1 = 1'b1;
    end else begin
        reg_file_3_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_0_we0 = 1'b1;
    end else begin
        reg_file_3_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln232_fu_144_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_0_we1 = 1'b1;
    end else begin
        reg_file_3_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_1_ce0 = 1'b1;
    end else begin
        reg_file_3_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_1_ce1 = 1'b1;
    end else begin
        reg_file_3_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_1_we0 = 1'b1;
    end else begin
        reg_file_3_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln232_fu_144_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_3_1_we1 = 1'b1;
    end else begin
        reg_file_3_1_we1 = 1'b0;
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

assign add_ln232_1_fu_178_p2 = (ap_sig_allocacmp_i_load + 6'd1);

assign add_ln232_fu_150_p2 = (ap_sig_allocacmp_indvar_flatten34_load + 10'd1);

assign add_ln233_fu_216_p2 = (select_ln132_fu_170_p3 + 7'd4);

assign add_ln237_1_fu_242_p3 = {{select_ln132_1_reg_279}, {or_ln237_fu_237_p2}};

assign add_ln5_fu_202_p3 = {{select_ln132_1_fu_184_p3}, {lshr_ln_fu_192_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_28 = (icmp_ln232_fu_144_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_30 = (icmp_ln232_fu_144_p2 == 1'd0);
end

assign ap_enable_operation_43 = (1'b1 == 1'b1);

assign ap_enable_operation_45 = (1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln232_fu_144_p2 = ((ap_sig_allocacmp_indvar_flatten34_load == 10'd1008) ? 1'b1 : 1'b0);

assign lshr_ln_fu_192_p4 = {{select_ln132_fu_170_p3[5:1]}};

assign or_ln237_fu_237_p2 = (lshr_ln_reg_284 | 5'd1);

assign reg_file_3_0_address0 = zext_ln237_1_fu_249_p1;

assign reg_file_3_0_address1 = zext_ln237_fu_210_p1;

assign reg_file_3_0_d0 = 16'd0;

assign reg_file_3_0_d1 = 16'd0;

assign reg_file_3_1_address0 = zext_ln237_1_fu_249_p1;

assign reg_file_3_1_address1 = zext_ln237_fu_210_p1;

assign reg_file_3_1_d0 = 16'd0;

assign reg_file_3_1_d1 = 16'd0;

assign select_ln132_1_fu_184_p3 = ((tmp_fu_162_p3[0:0] == 1'b1) ? add_ln232_1_fu_178_p2 : ap_sig_allocacmp_i_load);

assign select_ln132_fu_170_p3 = ((tmp_fu_162_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_15_load);

assign tmp_fu_162_p3 = ap_sig_allocacmp_j_15_load[32'd6];

assign zext_ln237_1_fu_249_p1 = add_ln237_1_fu_242_p3;

assign zext_ln237_fu_210_p1 = add_ln5_fu_202_p3;

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19
