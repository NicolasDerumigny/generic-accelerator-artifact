// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module generic_accel_hptosp_16ns_32_1_no_dsp_0
#(parameter
    ID         = 1,
    NUM_STAGE  = 1,
    din0_WIDTH = 32,
    dout_WIDTH = 32
)(
    input  wire [din0_WIDTH-1:0] din0,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Local signal-------------------
wire        a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire        r_tvalid;
wire [dout_WIDTH:0] r_tdata;
//------------------------Instantiation------------------
generic_accel_hptosp_16ns_32_1_no_dsp_0_ip generic_accel_hptosp_16ns_32_1_no_dsp_0_ip_u (
    .s_axis_a_tvalid      ( a_tvalid ),
    .s_axis_a_tdata       ( a_tdata ),
    .m_axis_result_tvalid ( r_tvalid ),
    .m_axis_result_tdata  ( r_tdata )
);
//------------------------Body---------------------------
assign a_tvalid = 1'b1;
assign a_tdata  = din0;
assign dout     = r_tdata;

endmodule
