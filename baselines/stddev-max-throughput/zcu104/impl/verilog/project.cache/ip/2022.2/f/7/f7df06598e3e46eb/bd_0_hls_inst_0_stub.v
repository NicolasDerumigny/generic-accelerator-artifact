// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Nov 19 16:36:27 2022
// Host        : liara running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "corr_accel,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_in_ce0, data_out_ce0, data_out_we0, 
  s_axi_control_AWADDR, s_axi_control_AWVALID, s_axi_control_AWREADY, 
  s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_WVALID, s_axi_control_WREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_BREADY, s_axi_control_ARADDR, 
  s_axi_control_ARVALID, s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, 
  s_axi_control_RVALID, s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, data_in_address0, 
  data_in_q0, data_out_address0, data_out_d0, counter)
/* synthesis syn_black_box black_box_pad_pin="data_in_ce0,data_out_ce0,data_out_we0,s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,data_in_address0[13:0],data_in_q0[63:0],data_out_address0[13:0],data_out_d0[63:0],counter[63:0]" */;
  output data_in_ce0;
  output data_out_ce0;
  output data_out_we0;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [13:0]data_in_address0;
  input [63:0]data_in_q0;
  output [13:0]data_out_address0;
  output [63:0]data_out_d0;
  input [63:0]counter;
endmodule
