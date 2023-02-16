// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module corr_accel_compute_Pipeline_VITIS_LOOP_135_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i,
        reg_file_2_0_address0,
        reg_file_2_0_ce0,
        reg_file_2_0_we0,
        reg_file_2_0_d0,
        reg_file_2_0_q0,
        reg_file_2_1_address0,
        reg_file_2_1_ce0,
        reg_file_2_1_we0,
        reg_file_2_1_d0,
        reg_file_2_1_q0,
        reg_file_0_0_load,
        reg_file_3_0_address0,
        reg_file_3_0_ce0,
        reg_file_3_0_q0,
        reg_file_3_1_address0,
        reg_file_3_1_ce0,
        reg_file_3_1_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] i;
output  [10:0] reg_file_2_0_address0;
output   reg_file_2_0_ce0;
output   reg_file_2_0_we0;
output  [15:0] reg_file_2_0_d0;
input  [15:0] reg_file_2_0_q0;
output  [10:0] reg_file_2_1_address0;
output   reg_file_2_1_ce0;
output   reg_file_2_1_we0;
output  [15:0] reg_file_2_1_d0;
input  [15:0] reg_file_2_1_q0;
input  [15:0] reg_file_0_0_load;
output  [10:0] reg_file_3_0_address0;
output   reg_file_3_0_ce0;
input  [15:0] reg_file_3_0_q0;
output  [10:0] reg_file_3_1_address0;
output   reg_file_3_1_ce0;
input  [15:0] reg_file_3_1_q0;

reg ap_idle;
reg[10:0] reg_file_2_0_address0;
reg reg_file_2_0_ce0;
reg reg_file_2_0_we0;
reg[10:0] reg_file_2_1_address0;
reg reg_file_2_1_ce0;
reg reg_file_2_1_we0;
reg reg_file_3_0_ce0;
reg reg_file_3_1_ce0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln135_fu_177_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state5;
wire    ap_block_state5_pp0_stage4_iter0;
wire   [6:0] add_ln135_fu_183_p2;
reg   [6:0] add_ln135_reg_257;
reg   [10:0] reg_file_2_0_addr_reg_262;
reg   [10:0] reg_file_2_1_addr_reg_267;
wire   [0:0] trunc_ln139_fu_215_p1;
reg   [0:0] trunc_ln139_reg_272;
wire   [15:0] tmp_fu_219_p4;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
wire   [15:0] val2_fu_229_p4;
reg   [15:0] val2_reg_293;
wire   [15:0] grp_fu_158_p2;
reg   [15:0] val1_reg_298;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [63:0] zext_ln139_fu_207_p1;
reg   [6:0] j_fu_76;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_7;
wire   [15:0] grp_fu_144_p2;
wire    ap_CS_fsm_state4;
wire   [4:0] lshr_ln_fu_189_p4;
wire   [10:0] add_ln_fu_199_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_done_reg = 1'b0;
end

corr_accel_hadd_16ns_16ns_16_2_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
hadd_16ns_16ns_16_2_full_dsp_1_U37(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val1_reg_298),
    .din1(val2_reg_293),
    .ce(1'b1),
    .dout(grp_fu_144_p2)
);

corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
hmul_16ns_16ns_16_2_max_dsp_1_U38(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_file_0_0_load),
    .din1(tmp_fu_219_p4),
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
mux_21_16_1_1_U39(
    .din0(reg_file_2_0_q0),
    .din1(reg_file_2_1_q0),
    .din2(trunc_ln139_reg_272),
    .dout(tmp_fu_219_p4)
);

corr_accel_mux_21_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 16 ))
mux_21_16_1_1_U40(
    .din0(reg_file_3_0_q0),
    .din1(reg_file_3_1_q0),
    .din2(trunc_ln139_reg_272),
    .dout(val2_fu_229_p4)
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        j_fu_76 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        j_fu_76 <= add_ln135_reg_257;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        add_ln135_reg_257 <= add_ln135_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln135_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        reg_file_2_0_addr_reg_262 <= zext_ln139_fu_207_p1;
        reg_file_2_1_addr_reg_267 <= zext_ln139_fu_207_p1;
        trunc_ln139_reg_272 <= trunc_ln139_fu_215_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        val1_reg_298 <= grp_fu_158_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        val2_reg_293 <= val2_fu_229_p4;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln135_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_7 = j_fu_76;
    end
end

always @ (*) begin
    if (((trunc_ln139_reg_272 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        reg_file_2_0_address0 = reg_file_2_0_addr_reg_262;
    end else if (((icmp_ln135_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reg_file_2_0_address0 = zext_ln139_fu_207_p1;
    end else begin
        reg_file_2_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln135_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((trunc_ln139_reg_272 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        reg_file_2_0_ce0 = 1'b1;
    end else begin
        reg_file_2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln139_reg_272 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        reg_file_2_0_we0 = 1'b1;
    end else begin
        reg_file_2_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln139_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        reg_file_2_1_address0 = reg_file_2_1_addr_reg_267;
    end else if (((icmp_ln135_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reg_file_2_1_address0 = zext_ln139_fu_207_p1;
    end else begin
        reg_file_2_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln135_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)) | ((trunc_ln139_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
        reg_file_2_1_ce0 = 1'b1;
    end else begin
        reg_file_2_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln139_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        reg_file_2_1_we0 = 1'b1;
    end else begin
        reg_file_2_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        reg_file_3_0_ce0 = 1'b1;
    end else begin
        reg_file_3_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        reg_file_3_1_ce0 = 1'b1;
    end else begin
        reg_file_3_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln135_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln135_fu_183_p2 = (ap_sig_allocacmp_j_7 + 7'd1);

assign add_ln_fu_199_p3 = {{i}, {lshr_ln_fu_189_p4}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln135_fu_177_p2 = ((ap_sig_allocacmp_j_7 == 7'd64) ? 1'b1 : 1'b0);

assign lshr_ln_fu_189_p4 = {{ap_sig_allocacmp_j_7[5:1]}};

assign reg_file_2_0_d0 = grp_fu_144_p2;

assign reg_file_2_1_d0 = grp_fu_144_p2;

assign reg_file_3_0_address0 = zext_ln139_fu_207_p1;

assign reg_file_3_1_address0 = zext_ln139_fu_207_p1;

assign trunc_ln139_fu_215_p1 = ap_sig_allocacmp_j_7[0:0];

assign zext_ln139_fu_207_p1 = add_ln_fu_199_p3;

endmodule //corr_accel_compute_Pipeline_VITIS_LOOP_135_2
