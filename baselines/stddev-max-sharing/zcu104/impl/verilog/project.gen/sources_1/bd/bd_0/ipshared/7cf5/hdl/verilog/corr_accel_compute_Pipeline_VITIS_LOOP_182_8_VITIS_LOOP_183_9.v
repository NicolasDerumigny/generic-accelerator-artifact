// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9 (
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
        reg_file_6_0_address0,
        reg_file_6_0_ce0,
        reg_file_6_0_we0,
        reg_file_6_0_d0,
        reg_file_2_1_address0,
        reg_file_2_1_ce0,
        reg_file_2_1_q0,
        reg_file_2_0_address0,
        reg_file_2_0_ce0,
        reg_file_2_0_q0
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
output  [10:0] reg_file_6_0_address0;
output   reg_file_6_0_ce0;
output   reg_file_6_0_we0;
output  [15:0] reg_file_6_0_d0;
output  [10:0] reg_file_2_1_address0;
output   reg_file_2_1_ce0;
input  [15:0] reg_file_2_1_q0;
output  [10:0] reg_file_2_0_address0;
output   reg_file_2_0_ce0;
input  [15:0] reg_file_2_0_q0;

reg ap_idle;
reg reg_file_6_1_ce0;
reg reg_file_6_1_we0;
reg reg_file_6_0_ce0;
reg reg_file_6_0_we0;
reg reg_file_2_1_ce0;
reg reg_file_2_0_ce0;

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
wire   [0:0] icmp_ln182_fu_171_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln182_fu_227_p1;
reg   [0:0] trunc_ln182_reg_308;
reg   [0:0] trunc_ln182_reg_308_pp0_iter1_reg;
reg   [10:0] reg_file_6_0_addr_reg_323;
reg   [10:0] reg_file_6_0_addr_reg_323_pp0_iter1_reg;
reg   [10:0] reg_file_6_1_addr_reg_328;
reg   [10:0] reg_file_6_1_addr_reg_328_pp0_iter1_reg;
wire   [15:0] val1_fu_272_p4;
wire   [63:0] zext_ln189_fu_243_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_76;
wire   [6:0] add_ln183_fu_251_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [6:0] j_7_fu_80;
wire   [6:0] select_ln182_1_fu_209_p3;
reg   [6:0] ap_sig_allocacmp_j_7_load;
reg   [12:0] indvar_flatten13_fu_84;
wire   [12:0] add_ln182_fu_177_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
wire   [15:0] grp_fu_138_p2;
wire   [0:0] icmp_ln183_fu_189_p2;
wire   [6:0] add_ln182_1_fu_203_p2;
wire   [6:0] select_ln182_fu_195_p3;
wire   [5:0] trunc_ln189_fu_231_p1;
wire   [4:0] indvars_iv59_udiv_mid2_fu_217_p4;
wire   [10:0] add_ln2_fu_235_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
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

corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
hmul_16ns_16ns_16_2_max_dsp_1_U58(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val1_fu_272_p4),
    .din1(val1_fu_272_p4),
    .ce(1'b1),
    .dout(grp_fu_138_p2)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U59(
    .din0(reg_file_2_0_q0),
    .din1(reg_file_2_1_q0),
    .din2(trunc_ln182_reg_308),
    .dout(val1_fu_272_p4)
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
        if (((icmp_ln182_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln183_fu_251_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln182_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_84 <= add_ln182_fu_177_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_84 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln182_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_7_fu_80 <= select_ln182_1_fu_209_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_7_fu_80 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        reg_file_6_0_addr_reg_323_pp0_iter1_reg <= reg_file_6_0_addr_reg_323;
        reg_file_6_1_addr_reg_328_pp0_iter1_reg <= reg_file_6_1_addr_reg_328;
        trunc_ln182_reg_308_pp0_iter1_reg <= trunc_ln182_reg_308;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln182_fu_171_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_6_0_addr_reg_323 <= zext_ln189_fu_243_p1;
        reg_file_6_1_addr_reg_328 <= zext_ln189_fu_243_p1;
        trunc_ln182_reg_308 <= trunc_ln182_fu_227_p1;
    end
end

always @ (*) begin
    if (((icmp_ln182_fu_171_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_7_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_7_load = j_7_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_0_ce0 = 1'b1;
    end else begin
        reg_file_2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_file_2_1_ce0 = 1'b1;
    end else begin
        reg_file_2_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_0_ce0 = 1'b1;
    end else begin
        reg_file_6_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln182_reg_308_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_0_we0 = 1'b1;
    end else begin
        reg_file_6_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_1_ce0 = 1'b1;
    end else begin
        reg_file_6_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln182_reg_308_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        reg_file_6_1_we0 = 1'b1;
    end else begin
        reg_file_6_1_we0 = 1'b0;
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

assign add_ln182_1_fu_203_p2 = (ap_sig_allocacmp_j_7_load + 7'd1);

assign add_ln182_fu_177_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);

assign add_ln183_fu_251_p2 = (select_ln182_fu_195_p3 + 7'd1);

assign add_ln2_fu_235_p3 = {{trunc_ln189_fu_231_p1}, {indvars_iv59_udiv_mid2_fu_217_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln182_fu_171_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);

assign icmp_ln183_fu_189_p2 = ((ap_sig_allocacmp_i_load == 7'd64) ? 1'b1 : 1'b0);

assign indvars_iv59_udiv_mid2_fu_217_p4 = {{select_ln182_1_fu_209_p3[5:1]}};

assign reg_file_2_0_address0 = zext_ln189_fu_243_p1;

assign reg_file_2_1_address0 = zext_ln189_fu_243_p1;

assign reg_file_6_0_address0 = reg_file_6_0_addr_reg_323_pp0_iter1_reg;

assign reg_file_6_0_d0 = grp_fu_138_p2;

assign reg_file_6_1_address0 = reg_file_6_1_addr_reg_328_pp0_iter1_reg;

assign reg_file_6_1_d0 = grp_fu_138_p2;

assign select_ln182_1_fu_209_p3 = ((icmp_ln183_fu_189_p2[0:0] == 1'b1) ? add_ln182_1_fu_203_p2 : ap_sig_allocacmp_j_7_load);

assign select_ln182_fu_195_p3 = ((icmp_ln183_fu_189_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);

assign trunc_ln182_fu_227_p1 = select_ln182_1_fu_209_p3[0:0];

assign trunc_ln189_fu_231_p1 = select_ln182_fu_195_p3[5:0];

assign zext_ln189_fu_243_p1 = add_ln2_fu_235_p3;

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9
