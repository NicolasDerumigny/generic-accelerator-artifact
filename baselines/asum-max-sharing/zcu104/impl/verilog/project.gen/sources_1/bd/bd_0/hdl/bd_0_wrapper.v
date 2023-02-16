//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Thu Jan 12 14:52:47 2023
//Host        : liara running 64-bit Arch Linux
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    counter,
    interrupt,
    m_axi_data_araddr,
    m_axi_data_arburst,
    m_axi_data_arcache,
    m_axi_data_arid,
    m_axi_data_arlen,
    m_axi_data_arlock,
    m_axi_data_arprot,
    m_axi_data_arqos,
    m_axi_data_arready,
    m_axi_data_arregion,
    m_axi_data_arsize,
    m_axi_data_arvalid,
    m_axi_data_awaddr,
    m_axi_data_awburst,
    m_axi_data_awcache,
    m_axi_data_awid,
    m_axi_data_awlen,
    m_axi_data_awlock,
    m_axi_data_awprot,
    m_axi_data_awqos,
    m_axi_data_awready,
    m_axi_data_awregion,
    m_axi_data_awsize,
    m_axi_data_awvalid,
    m_axi_data_bid,
    m_axi_data_bready,
    m_axi_data_bresp,
    m_axi_data_bvalid,
    m_axi_data_rdata,
    m_axi_data_rid,
    m_axi_data_rlast,
    m_axi_data_rready,
    m_axi_data_rresp,
    m_axi_data_rvalid,
    m_axi_data_wdata,
    m_axi_data_wid,
    m_axi_data_wlast,
    m_axi_data_wready,
    m_axi_data_wstrb,
    m_axi_data_wvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  input ap_clk;
  input ap_rst_n;
  input [63:0]counter;
  output interrupt;
  output [63:0]m_axi_data_araddr;
  output [1:0]m_axi_data_arburst;
  output [3:0]m_axi_data_arcache;
  output [0:0]m_axi_data_arid;
  output [7:0]m_axi_data_arlen;
  output [1:0]m_axi_data_arlock;
  output [2:0]m_axi_data_arprot;
  output [3:0]m_axi_data_arqos;
  input m_axi_data_arready;
  output [3:0]m_axi_data_arregion;
  output [2:0]m_axi_data_arsize;
  output m_axi_data_arvalid;
  output [63:0]m_axi_data_awaddr;
  output [1:0]m_axi_data_awburst;
  output [3:0]m_axi_data_awcache;
  output [0:0]m_axi_data_awid;
  output [7:0]m_axi_data_awlen;
  output [1:0]m_axi_data_awlock;
  output [2:0]m_axi_data_awprot;
  output [3:0]m_axi_data_awqos;
  input m_axi_data_awready;
  output [3:0]m_axi_data_awregion;
  output [2:0]m_axi_data_awsize;
  output m_axi_data_awvalid;
  input [0:0]m_axi_data_bid;
  output m_axi_data_bready;
  input [1:0]m_axi_data_bresp;
  input m_axi_data_bvalid;
  input [63:0]m_axi_data_rdata;
  input [0:0]m_axi_data_rid;
  input m_axi_data_rlast;
  output m_axi_data_rready;
  input [1:0]m_axi_data_rresp;
  input m_axi_data_rvalid;
  output [63:0]m_axi_data_wdata;
  output [0:0]m_axi_data_wid;
  output m_axi_data_wlast;
  input m_axi_data_wready;
  output [7:0]m_axi_data_wstrb;
  output m_axi_data_wvalid;
  input [6:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [6:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]counter;
  wire interrupt;
  wire [63:0]m_axi_data_araddr;
  wire [1:0]m_axi_data_arburst;
  wire [3:0]m_axi_data_arcache;
  wire [0:0]m_axi_data_arid;
  wire [7:0]m_axi_data_arlen;
  wire [1:0]m_axi_data_arlock;
  wire [2:0]m_axi_data_arprot;
  wire [3:0]m_axi_data_arqos;
  wire m_axi_data_arready;
  wire [3:0]m_axi_data_arregion;
  wire [2:0]m_axi_data_arsize;
  wire m_axi_data_arvalid;
  wire [63:0]m_axi_data_awaddr;
  wire [1:0]m_axi_data_awburst;
  wire [3:0]m_axi_data_awcache;
  wire [0:0]m_axi_data_awid;
  wire [7:0]m_axi_data_awlen;
  wire [1:0]m_axi_data_awlock;
  wire [2:0]m_axi_data_awprot;
  wire [3:0]m_axi_data_awqos;
  wire m_axi_data_awready;
  wire [3:0]m_axi_data_awregion;
  wire [2:0]m_axi_data_awsize;
  wire m_axi_data_awvalid;
  wire [0:0]m_axi_data_bid;
  wire m_axi_data_bready;
  wire [1:0]m_axi_data_bresp;
  wire m_axi_data_bvalid;
  wire [63:0]m_axi_data_rdata;
  wire [0:0]m_axi_data_rid;
  wire m_axi_data_rlast;
  wire m_axi_data_rready;
  wire [1:0]m_axi_data_rresp;
  wire m_axi_data_rvalid;
  wire [63:0]m_axi_data_wdata;
  wire [0:0]m_axi_data_wid;
  wire m_axi_data_wlast;
  wire m_axi_data_wready;
  wire [7:0]m_axi_data_wstrb;
  wire m_axi_data_wvalid;
  wire [6:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [6:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .counter(counter),
        .interrupt(interrupt),
        .m_axi_data_araddr(m_axi_data_araddr),
        .m_axi_data_arburst(m_axi_data_arburst),
        .m_axi_data_arcache(m_axi_data_arcache),
        .m_axi_data_arid(m_axi_data_arid),
        .m_axi_data_arlen(m_axi_data_arlen),
        .m_axi_data_arlock(m_axi_data_arlock),
        .m_axi_data_arprot(m_axi_data_arprot),
        .m_axi_data_arqos(m_axi_data_arqos),
        .m_axi_data_arready(m_axi_data_arready),
        .m_axi_data_arregion(m_axi_data_arregion),
        .m_axi_data_arsize(m_axi_data_arsize),
        .m_axi_data_arvalid(m_axi_data_arvalid),
        .m_axi_data_awaddr(m_axi_data_awaddr),
        .m_axi_data_awburst(m_axi_data_awburst),
        .m_axi_data_awcache(m_axi_data_awcache),
        .m_axi_data_awid(m_axi_data_awid),
        .m_axi_data_awlen(m_axi_data_awlen),
        .m_axi_data_awlock(m_axi_data_awlock),
        .m_axi_data_awprot(m_axi_data_awprot),
        .m_axi_data_awqos(m_axi_data_awqos),
        .m_axi_data_awready(m_axi_data_awready),
        .m_axi_data_awregion(m_axi_data_awregion),
        .m_axi_data_awsize(m_axi_data_awsize),
        .m_axi_data_awvalid(m_axi_data_awvalid),
        .m_axi_data_bid(m_axi_data_bid),
        .m_axi_data_bready(m_axi_data_bready),
        .m_axi_data_bresp(m_axi_data_bresp),
        .m_axi_data_bvalid(m_axi_data_bvalid),
        .m_axi_data_rdata(m_axi_data_rdata),
        .m_axi_data_rid(m_axi_data_rid),
        .m_axi_data_rlast(m_axi_data_rlast),
        .m_axi_data_rready(m_axi_data_rready),
        .m_axi_data_rresp(m_axi_data_rresp),
        .m_axi_data_rvalid(m_axi_data_rvalid),
        .m_axi_data_wdata(m_axi_data_wdata),
        .m_axi_data_wid(m_axi_data_wid),
        .m_axi_data_wlast(m_axi_data_wlast),
        .m_axi_data_wready(m_axi_data_wready),
        .m_axi_data_wstrb(m_axi_data_wstrb),
        .m_axi_data_wvalid(m_axi_data_wvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
