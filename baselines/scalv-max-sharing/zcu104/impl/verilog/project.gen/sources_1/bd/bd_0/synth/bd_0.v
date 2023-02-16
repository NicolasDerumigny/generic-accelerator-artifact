//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Thu Jan 12 12:37:33 2023
//Host        : liara running 64-bit Arch Linux
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_data:s_axi_control, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COUNTER DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COUNTER, LAYERED_METADATA undef" *) input [63:0]counter;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_data_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [1:0]m_axi_data_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [0:0]m_axi_data_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [7:0]m_axi_data_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [1:0]m_axi_data_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [2:0]m_axi_data_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [2:0]m_axi_data_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [63:0]m_axi_data_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [1:0]m_axi_data_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [0:0]m_axi_data_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [7:0]m_axi_data_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [1:0]m_axi_data_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [2:0]m_axi_data_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [3:0]m_axi_data_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [2:0]m_axi_data_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input [0:0]m_axi_data_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input [1:0]m_axi_data_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input [63:0]m_axi_data_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input [0:0]m_axi_data_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input [1:0]m_axi_data_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [63:0]m_axi_data_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [0:0]m_axi_data_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) input m_axi_data_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output [7:0]m_axi_data_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data " *) output m_axi_data_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [6:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [63:0]counter_0_1;
  wire hls_inst_interrupt;
  wire [63:0]hls_inst_m_axi_data_ARADDR;
  wire [1:0]hls_inst_m_axi_data_ARBURST;
  wire [3:0]hls_inst_m_axi_data_ARCACHE;
  wire [0:0]hls_inst_m_axi_data_ARID;
  wire [7:0]hls_inst_m_axi_data_ARLEN;
  wire [1:0]hls_inst_m_axi_data_ARLOCK;
  wire [2:0]hls_inst_m_axi_data_ARPROT;
  wire [3:0]hls_inst_m_axi_data_ARQOS;
  wire hls_inst_m_axi_data_ARREADY;
  wire [3:0]hls_inst_m_axi_data_ARREGION;
  wire [2:0]hls_inst_m_axi_data_ARSIZE;
  wire hls_inst_m_axi_data_ARVALID;
  wire [63:0]hls_inst_m_axi_data_AWADDR;
  wire [1:0]hls_inst_m_axi_data_AWBURST;
  wire [3:0]hls_inst_m_axi_data_AWCACHE;
  wire [0:0]hls_inst_m_axi_data_AWID;
  wire [7:0]hls_inst_m_axi_data_AWLEN;
  wire [1:0]hls_inst_m_axi_data_AWLOCK;
  wire [2:0]hls_inst_m_axi_data_AWPROT;
  wire [3:0]hls_inst_m_axi_data_AWQOS;
  wire hls_inst_m_axi_data_AWREADY;
  wire [3:0]hls_inst_m_axi_data_AWREGION;
  wire [2:0]hls_inst_m_axi_data_AWSIZE;
  wire hls_inst_m_axi_data_AWVALID;
  wire [0:0]hls_inst_m_axi_data_BID;
  wire hls_inst_m_axi_data_BREADY;
  wire [1:0]hls_inst_m_axi_data_BRESP;
  wire hls_inst_m_axi_data_BVALID;
  wire [63:0]hls_inst_m_axi_data_RDATA;
  wire [0:0]hls_inst_m_axi_data_RID;
  wire hls_inst_m_axi_data_RLAST;
  wire hls_inst_m_axi_data_RREADY;
  wire [1:0]hls_inst_m_axi_data_RRESP;
  wire hls_inst_m_axi_data_RVALID;
  wire [63:0]hls_inst_m_axi_data_WDATA;
  wire [0:0]hls_inst_m_axi_data_WID;
  wire hls_inst_m_axi_data_WLAST;
  wire hls_inst_m_axi_data_WREADY;
  wire [7:0]hls_inst_m_axi_data_WSTRB;
  wire hls_inst_m_axi_data_WVALID;
  wire [6:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [6:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign counter_0_1 = counter[63:0];
  assign hls_inst_m_axi_data_ARREADY = m_axi_data_arready;
  assign hls_inst_m_axi_data_AWREADY = m_axi_data_awready;
  assign hls_inst_m_axi_data_BID = m_axi_data_bid[0];
  assign hls_inst_m_axi_data_BRESP = m_axi_data_bresp[1:0];
  assign hls_inst_m_axi_data_BVALID = m_axi_data_bvalid;
  assign hls_inst_m_axi_data_RDATA = m_axi_data_rdata[63:0];
  assign hls_inst_m_axi_data_RID = m_axi_data_rid[0];
  assign hls_inst_m_axi_data_RLAST = m_axi_data_rlast;
  assign hls_inst_m_axi_data_RRESP = m_axi_data_rresp[1:0];
  assign hls_inst_m_axi_data_RVALID = m_axi_data_rvalid;
  assign hls_inst_m_axi_data_WREADY = m_axi_data_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_data_araddr[63:0] = hls_inst_m_axi_data_ARADDR;
  assign m_axi_data_arburst[1:0] = hls_inst_m_axi_data_ARBURST;
  assign m_axi_data_arcache[3:0] = hls_inst_m_axi_data_ARCACHE;
  assign m_axi_data_arid[0] = hls_inst_m_axi_data_ARID;
  assign m_axi_data_arlen[7:0] = hls_inst_m_axi_data_ARLEN;
  assign m_axi_data_arlock[1:0] = hls_inst_m_axi_data_ARLOCK;
  assign m_axi_data_arprot[2:0] = hls_inst_m_axi_data_ARPROT;
  assign m_axi_data_arqos[3:0] = hls_inst_m_axi_data_ARQOS;
  assign m_axi_data_arregion[3:0] = hls_inst_m_axi_data_ARREGION;
  assign m_axi_data_arsize[2:0] = hls_inst_m_axi_data_ARSIZE;
  assign m_axi_data_arvalid = hls_inst_m_axi_data_ARVALID;
  assign m_axi_data_awaddr[63:0] = hls_inst_m_axi_data_AWADDR;
  assign m_axi_data_awburst[1:0] = hls_inst_m_axi_data_AWBURST;
  assign m_axi_data_awcache[3:0] = hls_inst_m_axi_data_AWCACHE;
  assign m_axi_data_awid[0] = hls_inst_m_axi_data_AWID;
  assign m_axi_data_awlen[7:0] = hls_inst_m_axi_data_AWLEN;
  assign m_axi_data_awlock[1:0] = hls_inst_m_axi_data_AWLOCK;
  assign m_axi_data_awprot[2:0] = hls_inst_m_axi_data_AWPROT;
  assign m_axi_data_awqos[3:0] = hls_inst_m_axi_data_AWQOS;
  assign m_axi_data_awregion[3:0] = hls_inst_m_axi_data_AWREGION;
  assign m_axi_data_awsize[2:0] = hls_inst_m_axi_data_AWSIZE;
  assign m_axi_data_awvalid = hls_inst_m_axi_data_AWVALID;
  assign m_axi_data_bready = hls_inst_m_axi_data_BREADY;
  assign m_axi_data_rready = hls_inst_m_axi_data_RREADY;
  assign m_axi_data_wdata[63:0] = hls_inst_m_axi_data_WDATA;
  assign m_axi_data_wid[0] = hls_inst_m_axi_data_WID;
  assign m_axi_data_wlast = hls_inst_m_axi_data_WLAST;
  assign m_axi_data_wstrb[7:0] = hls_inst_m_axi_data_WSTRB;
  assign m_axi_data_wvalid = hls_inst_m_axi_data_WVALID;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[6:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[6:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .counter(counter_0_1),
        .interrupt(hls_inst_interrupt),
        .m_axi_data_ARADDR(hls_inst_m_axi_data_ARADDR),
        .m_axi_data_ARBURST(hls_inst_m_axi_data_ARBURST),
        .m_axi_data_ARCACHE(hls_inst_m_axi_data_ARCACHE),
        .m_axi_data_ARID(hls_inst_m_axi_data_ARID),
        .m_axi_data_ARLEN(hls_inst_m_axi_data_ARLEN),
        .m_axi_data_ARLOCK(hls_inst_m_axi_data_ARLOCK),
        .m_axi_data_ARPROT(hls_inst_m_axi_data_ARPROT),
        .m_axi_data_ARQOS(hls_inst_m_axi_data_ARQOS),
        .m_axi_data_ARREADY(hls_inst_m_axi_data_ARREADY),
        .m_axi_data_ARREGION(hls_inst_m_axi_data_ARREGION),
        .m_axi_data_ARSIZE(hls_inst_m_axi_data_ARSIZE),
        .m_axi_data_ARVALID(hls_inst_m_axi_data_ARVALID),
        .m_axi_data_AWADDR(hls_inst_m_axi_data_AWADDR),
        .m_axi_data_AWBURST(hls_inst_m_axi_data_AWBURST),
        .m_axi_data_AWCACHE(hls_inst_m_axi_data_AWCACHE),
        .m_axi_data_AWID(hls_inst_m_axi_data_AWID),
        .m_axi_data_AWLEN(hls_inst_m_axi_data_AWLEN),
        .m_axi_data_AWLOCK(hls_inst_m_axi_data_AWLOCK),
        .m_axi_data_AWPROT(hls_inst_m_axi_data_AWPROT),
        .m_axi_data_AWQOS(hls_inst_m_axi_data_AWQOS),
        .m_axi_data_AWREADY(hls_inst_m_axi_data_AWREADY),
        .m_axi_data_AWREGION(hls_inst_m_axi_data_AWREGION),
        .m_axi_data_AWSIZE(hls_inst_m_axi_data_AWSIZE),
        .m_axi_data_AWVALID(hls_inst_m_axi_data_AWVALID),
        .m_axi_data_BID(hls_inst_m_axi_data_BID),
        .m_axi_data_BREADY(hls_inst_m_axi_data_BREADY),
        .m_axi_data_BRESP(hls_inst_m_axi_data_BRESP),
        .m_axi_data_BVALID(hls_inst_m_axi_data_BVALID),
        .m_axi_data_RDATA(hls_inst_m_axi_data_RDATA),
        .m_axi_data_RID(hls_inst_m_axi_data_RID),
        .m_axi_data_RLAST(hls_inst_m_axi_data_RLAST),
        .m_axi_data_RREADY(hls_inst_m_axi_data_RREADY),
        .m_axi_data_RRESP(hls_inst_m_axi_data_RRESP),
        .m_axi_data_RVALID(hls_inst_m_axi_data_RVALID),
        .m_axi_data_WDATA(hls_inst_m_axi_data_WDATA),
        .m_axi_data_WID(hls_inst_m_axi_data_WID),
        .m_axi_data_WLAST(hls_inst_m_axi_data_WLAST),
        .m_axi_data_WREADY(hls_inst_m_axi_data_WREADY),
        .m_axi_data_WSTRB(hls_inst_m_axi_data_WSTRB),
        .m_axi_data_WVALID(hls_inst_m_axi_data_WVALID),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID));
endmodule
