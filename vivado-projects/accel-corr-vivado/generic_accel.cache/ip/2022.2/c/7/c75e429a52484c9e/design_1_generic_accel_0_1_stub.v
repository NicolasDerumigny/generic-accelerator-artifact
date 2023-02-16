// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jan 11 14:43:41 2023
// Host        : liara running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_generic_accel_0_1_stub.v
// Design      : design_1_generic_accel_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "generic_accel,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_data_AWID, m_axi_data_AWADDR, 
  m_axi_data_AWLEN, m_axi_data_AWSIZE, m_axi_data_AWBURST, m_axi_data_AWLOCK, 
  m_axi_data_AWREGION, m_axi_data_AWCACHE, m_axi_data_AWPROT, m_axi_data_AWQOS, 
  m_axi_data_AWVALID, m_axi_data_AWREADY, m_axi_data_WID, m_axi_data_WDATA, 
  m_axi_data_WSTRB, m_axi_data_WLAST, m_axi_data_WVALID, m_axi_data_WREADY, m_axi_data_BID, 
  m_axi_data_BRESP, m_axi_data_BVALID, m_axi_data_BREADY, m_axi_data_ARID, 
  m_axi_data_ARADDR, m_axi_data_ARLEN, m_axi_data_ARSIZE, m_axi_data_ARBURST, 
  m_axi_data_ARLOCK, m_axi_data_ARREGION, m_axi_data_ARCACHE, m_axi_data_ARPROT, 
  m_axi_data_ARQOS, m_axi_data_ARVALID, m_axi_data_ARREADY, m_axi_data_RID, 
  m_axi_data_RDATA, m_axi_data_RRESP, m_axi_data_RLAST, m_axi_data_RVALID, 
  m_axi_data_RREADY, counter, cu0_a_TVALID, cu0_a_TREADY, cu0_a_TDATA, cu0_b_TVALID, 
  cu0_b_TREADY, cu0_b_TDATA, cu0_c_TVALID, cu0_c_TREADY, cu0_c_TDATA, cu0_res_TVALID, 
  cu0_res_TREADY, cu0_res_TDATA, cu1_a_TVALID, cu1_a_TREADY, cu1_a_TDATA, cu1_b_TVALID, 
  cu1_b_TREADY, cu1_b_TDATA, cu1_c_TVALID, cu1_c_TREADY, cu1_c_TDATA, cu1_res_TVALID, 
  cu1_res_TREADY, cu1_res_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[9:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[9:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_data_AWID[0:0],m_axi_data_AWADDR[63:0],m_axi_data_AWLEN[7:0],m_axi_data_AWSIZE[2:0],m_axi_data_AWBURST[1:0],m_axi_data_AWLOCK[1:0],m_axi_data_AWREGION[3:0],m_axi_data_AWCACHE[3:0],m_axi_data_AWPROT[2:0],m_axi_data_AWQOS[3:0],m_axi_data_AWVALID,m_axi_data_AWREADY,m_axi_data_WID[0:0],m_axi_data_WDATA[63:0],m_axi_data_WSTRB[7:0],m_axi_data_WLAST,m_axi_data_WVALID,m_axi_data_WREADY,m_axi_data_BID[0:0],m_axi_data_BRESP[1:0],m_axi_data_BVALID,m_axi_data_BREADY,m_axi_data_ARID[0:0],m_axi_data_ARADDR[63:0],m_axi_data_ARLEN[7:0],m_axi_data_ARSIZE[2:0],m_axi_data_ARBURST[1:0],m_axi_data_ARLOCK[1:0],m_axi_data_ARREGION[3:0],m_axi_data_ARCACHE[3:0],m_axi_data_ARPROT[2:0],m_axi_data_ARQOS[3:0],m_axi_data_ARVALID,m_axi_data_ARREADY,m_axi_data_RID[0:0],m_axi_data_RDATA[63:0],m_axi_data_RRESP[1:0],m_axi_data_RLAST,m_axi_data_RVALID,m_axi_data_RREADY,counter[63:0],cu0_a_TVALID,cu0_a_TREADY,cu0_a_TDATA[15:0],cu0_b_TVALID,cu0_b_TREADY,cu0_b_TDATA[15:0],cu0_c_TVALID,cu0_c_TREADY,cu0_c_TDATA[15:0],cu0_res_TVALID,cu0_res_TREADY,cu0_res_TDATA[15:0],cu1_a_TVALID,cu1_a_TREADY,cu1_a_TDATA[15:0],cu1_b_TVALID,cu1_b_TREADY,cu1_b_TDATA[15:0],cu1_c_TVALID,cu1_c_TREADY,cu1_c_TDATA[15:0],cu1_res_TVALID,cu1_res_TREADY,cu1_res_TDATA[15:0]" */;
  input [9:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [9:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_data_AWID;
  output [63:0]m_axi_data_AWADDR;
  output [7:0]m_axi_data_AWLEN;
  output [2:0]m_axi_data_AWSIZE;
  output [1:0]m_axi_data_AWBURST;
  output [1:0]m_axi_data_AWLOCK;
  output [3:0]m_axi_data_AWREGION;
  output [3:0]m_axi_data_AWCACHE;
  output [2:0]m_axi_data_AWPROT;
  output [3:0]m_axi_data_AWQOS;
  output m_axi_data_AWVALID;
  input m_axi_data_AWREADY;
  output [0:0]m_axi_data_WID;
  output [63:0]m_axi_data_WDATA;
  output [7:0]m_axi_data_WSTRB;
  output m_axi_data_WLAST;
  output m_axi_data_WVALID;
  input m_axi_data_WREADY;
  input [0:0]m_axi_data_BID;
  input [1:0]m_axi_data_BRESP;
  input m_axi_data_BVALID;
  output m_axi_data_BREADY;
  output [0:0]m_axi_data_ARID;
  output [63:0]m_axi_data_ARADDR;
  output [7:0]m_axi_data_ARLEN;
  output [2:0]m_axi_data_ARSIZE;
  output [1:0]m_axi_data_ARBURST;
  output [1:0]m_axi_data_ARLOCK;
  output [3:0]m_axi_data_ARREGION;
  output [3:0]m_axi_data_ARCACHE;
  output [2:0]m_axi_data_ARPROT;
  output [3:0]m_axi_data_ARQOS;
  output m_axi_data_ARVALID;
  input m_axi_data_ARREADY;
  input [0:0]m_axi_data_RID;
  input [63:0]m_axi_data_RDATA;
  input [1:0]m_axi_data_RRESP;
  input m_axi_data_RLAST;
  input m_axi_data_RVALID;
  output m_axi_data_RREADY;
  input [63:0]counter;
  output cu0_a_TVALID;
  input cu0_a_TREADY;
  output [15:0]cu0_a_TDATA;
  output cu0_b_TVALID;
  input cu0_b_TREADY;
  output [15:0]cu0_b_TDATA;
  output cu0_c_TVALID;
  input cu0_c_TREADY;
  output [15:0]cu0_c_TDATA;
  input cu0_res_TVALID;
  output cu0_res_TREADY;
  input [15:0]cu0_res_TDATA;
  output cu1_a_TVALID;
  input cu1_a_TREADY;
  output [15:0]cu1_a_TDATA;
  output cu1_b_TVALID;
  input cu1_b_TREADY;
  output [15:0]cu1_b_TDATA;
  output cu1_c_TVALID;
  input cu1_c_TREADY;
  output [15:0]cu1_c_TDATA;
  input cu1_res_TVALID;
  output cu1_res_TREADY;
  input [15:0]cu1_res_TDATA;
endmodule
