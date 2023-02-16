// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module generic_accel_compute_Pipeline_VITIS_LOOP_9_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        opcode_reload,
        opcode_1_reload,
        ret_out,
        ret_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] opcode_reload;
input  [7:0] opcode_1_reload;
output  [31:0] ret_out;
output   ret_out_ap_vld;

reg ap_idle;
reg ret_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9_fu_149_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_6_fu_106;
wire   [1:0] add_ln9_fu_155_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [31:0] ret_fu_110;
wire   [31:0] zext_ln8_6_fu_192_p1;
wire   [31:0] zext_ln8_5_fu_215_p1;
wire   [31:0] zext_ln8_4_fu_248_p1;
wire   [31:0] zext_ln8_3_fu_271_p1;
wire   [31:0] zext_ln8_2_fu_294_p1;
wire   [31:0] zext_ln8_1_fu_317_p1;
wire   [31:0] zext_ln8_fu_340_p1;
wire   [7:0] select_ln10_fu_172_p3;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] trunc_ln10_fu_168_p1;
wire   [0:0] icmp_ln100_fu_178_p2;
wire   [30:0] empty_88_fu_164_p1;
wire   [30:0] ret_7_fu_184_p3;
wire   [0:0] icmp_ln94_fu_201_p2;
wire   [30:0] ret_6_fu_207_p3;
wire   [30:0] tmp_fu_224_p4;
wire   [0:0] icmp_ln88_fu_234_p2;
wire   [30:0] ret_5_fu_240_p3;
wire   [0:0] icmp_ln74_fu_257_p2;
wire   [30:0] ret_4_fu_263_p3;
wire   [0:0] icmp_ln48_fu_280_p2;
wire   [30:0] ret_3_fu_286_p3;
wire   [0:0] icmp_ln16_fu_303_p2;
wire   [30:0] ret_2_fu_309_p3;
wire   [0:0] icmp_ln110_fu_326_p2;
wire   [30:0] ret_1_fu_332_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_346;
reg    ap_condition_349;
reg    ap_condition_352;
reg    ap_condition_355;
reg    ap_condition_358;
reg    ap_condition_361;
reg    ap_condition_364;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_6_fu_106 <= 2'd0;
        end else if (((icmp_ln9_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_6_fu_106 <= add_ln9_fu_155_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
                        ret_fu_110[0] <= 1'b0;
            ret_fu_110[1] <= 1'b0;
            ret_fu_110[2] <= 1'b0;
            ret_fu_110[3] <= 1'b0;
            ret_fu_110[4] <= 1'b0;
            ret_fu_110[5] <= 1'b0;
            ret_fu_110[6] <= 1'b0;
            ret_fu_110[7] <= 1'b0;
            ret_fu_110[8] <= 1'b0;
            ret_fu_110[9] <= 1'b0;
            ret_fu_110[10] <= 1'b0;
            ret_fu_110[11] <= 1'b0;
            ret_fu_110[12] <= 1'b0;
            ret_fu_110[13] <= 1'b0;
            ret_fu_110[14] <= 1'b0;
            ret_fu_110[15] <= 1'b0;
            ret_fu_110[16] <= 1'b0;
            ret_fu_110[17] <= 1'b0;
            ret_fu_110[18] <= 1'b0;
            ret_fu_110[19] <= 1'b0;
            ret_fu_110[20] <= 1'b0;
            ret_fu_110[21] <= 1'b0;
            ret_fu_110[22] <= 1'b0;
            ret_fu_110[23] <= 1'b0;
            ret_fu_110[24] <= 1'b0;
            ret_fu_110[25] <= 1'b0;
            ret_fu_110[26] <= 1'b0;
            ret_fu_110[27] <= 1'b0;
            ret_fu_110[28] <= 1'b0;
            ret_fu_110[29] <= 1'b0;
            ret_fu_110[30] <= 1'b0;
        end else if ((1'b1 == ap_condition_364)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_fu_340_p1[30 : 0];
        end else if ((1'b1 == ap_condition_361)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_1_fu_317_p1[30 : 0];
        end else if ((1'b1 == ap_condition_358)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_2_fu_294_p1[30 : 0];
        end else if ((1'b1 == ap_condition_355)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_3_fu_271_p1[30 : 0];
        end else if ((1'b1 == ap_condition_352)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_4_fu_248_p1[30 : 0];
        end else if ((1'b1 == ap_condition_349)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_5_fu_215_p1[30 : 0];
        end else if ((1'b1 == ap_condition_346)) begin
                        ret_fu_110[30 : 0] <= zext_ln8_6_fu_192_p1[30 : 0];
        end
    end
end

always @ (*) begin
    if (((icmp_ln9_fu_149_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((icmp_ln9_fu_149_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ret_out_ap_vld = 1'b1;
    end else begin
        ret_out_ap_vld = 1'b0;
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

assign add_ln9_fu_155_p2 = (i_6_fu_106 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_346 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((((select_ln10_fu_172_p3 == 8'd19) & (icmp_ln9_fu_149_p2 == 1'd0)) | ((select_ln10_fu_172_p3 == 8'd20) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd18) & (icmp_ln9_fu_149_p2 == 1'd0))));
end

always @ (*) begin
    ap_condition_349 = ((select_ln10_fu_172_p3 == 8'd17) & (icmp_ln9_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_352 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((((select_ln10_fu_172_p3 == 8'd9) & (icmp_ln9_fu_149_p2 == 1'd0)) | ((select_ln10_fu_172_p3 == 8'd15) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd5) & (icmp_ln9_fu_149_p2 == 1'd0))));
end

always @ (*) begin
    ap_condition_355 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((((select_ln10_fu_172_p3 == 8'd14) & (icmp_ln9_fu_149_p2 == 1'd0)) | ((select_ln10_fu_172_p3 == 8'd11) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd8) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd4) & (icmp_ln9_fu_149_p2 == 1'd0))));
end

always @ (*) begin
    ap_condition_358 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((((((select_ln10_fu_172_p3 == 8'd10) & (icmp_ln9_fu_149_p2 == 1'd0)) | ((select_ln10_fu_172_p3 == 8'd16) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd7) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd6) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd3) & (icmp_ln9_fu_149_p2 == 1'd0))) | ((select_ln10_fu_172_p3 == 8'd2) & (icmp_ln9_fu_149_p2 == 1'd0))));
end

always @ (*) begin
    ap_condition_361 = ((select_ln10_fu_172_p3 == 8'd1) & (icmp_ln9_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_364 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((select_ln10_fu_172_p3 == 8'd13) & (icmp_ln9_fu_149_p2 == 1'd0)) | ((select_ln10_fu_172_p3 == 8'd12) & (icmp_ln9_fu_149_p2 == 1'd0))));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign empty_88_fu_164_p1 = ret_fu_110[30:0];

assign icmp_ln100_fu_178_p2 = (($signed(ret_fu_110) > $signed(32'd2080)) ? 1'b1 : 1'b0);

assign icmp_ln110_fu_326_p2 = (($signed(ret_fu_110) > $signed(32'd448)) ? 1'b1 : 1'b0);

assign icmp_ln16_fu_303_p2 = (($signed(ret_fu_110) > $signed(32'd262144)) ? 1'b1 : 1'b0);

assign icmp_ln48_fu_280_p2 = (($signed(ret_fu_110) > $signed(32'd4096)) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_257_p2 = (($signed(ret_fu_110) > $signed(32'd64)) ? 1'b1 : 1'b0);

assign icmp_ln88_fu_234_p2 = (($signed(tmp_fu_224_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln94_fu_201_p2 = (($signed(ret_fu_110) > $signed(32'd133120)) ? 1'b1 : 1'b0);

assign icmp_ln9_fu_149_p2 = ((i_6_fu_106 == 2'd2) ? 1'b1 : 1'b0);

assign ret_1_fu_332_p3 = ((icmp_ln110_fu_326_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd448);

assign ret_2_fu_309_p3 = ((icmp_ln16_fu_303_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd262144);

assign ret_3_fu_286_p3 = ((icmp_ln48_fu_280_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd4096);

assign ret_4_fu_263_p3 = ((icmp_ln74_fu_257_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd64);

assign ret_5_fu_240_p3 = ((icmp_ln88_fu_234_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd1);

assign ret_6_fu_207_p3 = ((icmp_ln94_fu_201_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd133120);

assign ret_7_fu_184_p3 = ((icmp_ln100_fu_178_p2[0:0] == 1'b1) ? empty_88_fu_164_p1 : 31'd2080);

assign ret_out = ret_fu_110;

assign select_ln10_fu_172_p3 = ((trunc_ln10_fu_168_p1[0:0] == 1'b1) ? opcode_reload : opcode_1_reload);

assign tmp_fu_224_p4 = {{ret_fu_110[31:1]}};

assign trunc_ln10_fu_168_p1 = i_6_fu_106[0:0];

assign zext_ln8_1_fu_317_p1 = ret_2_fu_309_p3;

assign zext_ln8_2_fu_294_p1 = ret_3_fu_286_p3;

assign zext_ln8_3_fu_271_p1 = ret_4_fu_263_p3;

assign zext_ln8_4_fu_248_p1 = ret_5_fu_240_p3;

assign zext_ln8_5_fu_215_p1 = ret_6_fu_207_p3;

assign zext_ln8_6_fu_192_p1 = ret_7_fu_184_p3;

assign zext_ln8_fu_340_p1 = ret_1_fu_332_p3;

always @ (posedge ap_clk) begin
    ret_fu_110[31] <= 1'b0;
end

endmodule //generic_accel_compute_Pipeline_VITIS_LOOP_9_1
