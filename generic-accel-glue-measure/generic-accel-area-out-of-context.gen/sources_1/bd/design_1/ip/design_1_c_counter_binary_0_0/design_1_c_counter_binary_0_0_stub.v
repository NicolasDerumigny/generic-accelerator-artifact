// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jan 12 10:28:00 2023
// Host        : liara running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/derumigny/FPGA/HLx-Projects/generic-accel-area-out-of-context/generic-accel-area-out-of-context.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_stub.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *)
module design_1_c_counter_binary_0_0(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[63:0]" */;
  input CLK;
  output [63:0]Q;
endmodule
