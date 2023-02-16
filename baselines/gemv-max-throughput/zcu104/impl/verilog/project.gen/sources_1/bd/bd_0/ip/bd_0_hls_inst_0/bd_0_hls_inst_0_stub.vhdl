-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Nov 20 17:23:03 2022
-- Host        : liara running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/derumigny/FPGA/data/zcu104/2023-Dac/gemv-max-throughput/zcu104/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_data_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_data_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_data_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_data_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_AWVALID : out STD_LOGIC;
    m_axi_data_AWREADY : in STD_LOGIC;
    m_axi_data_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_data_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_data_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_data_WLAST : out STD_LOGIC;
    m_axi_data_WVALID : out STD_LOGIC;
    m_axi_data_WREADY : in STD_LOGIC;
    m_axi_data_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_data_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_BVALID : in STD_LOGIC;
    m_axi_data_BREADY : out STD_LOGIC;
    m_axi_data_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_data_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_data_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_data_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_ARVALID : out STD_LOGIC;
    m_axi_data_ARREADY : in STD_LOGIC;
    m_axi_data_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_data_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_data_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_RLAST : in STD_LOGIC;
    m_axi_data_RVALID : in STD_LOGIC;
    m_axi_data_RREADY : out STD_LOGIC;
    counter : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_data_AWID[0:0],m_axi_data_AWADDR[63:0],m_axi_data_AWLEN[7:0],m_axi_data_AWSIZE[2:0],m_axi_data_AWBURST[1:0],m_axi_data_AWLOCK[1:0],m_axi_data_AWREGION[3:0],m_axi_data_AWCACHE[3:0],m_axi_data_AWPROT[2:0],m_axi_data_AWQOS[3:0],m_axi_data_AWVALID,m_axi_data_AWREADY,m_axi_data_WID[0:0],m_axi_data_WDATA[63:0],m_axi_data_WSTRB[7:0],m_axi_data_WLAST,m_axi_data_WVALID,m_axi_data_WREADY,m_axi_data_BID[0:0],m_axi_data_BRESP[1:0],m_axi_data_BVALID,m_axi_data_BREADY,m_axi_data_ARID[0:0],m_axi_data_ARADDR[63:0],m_axi_data_ARLEN[7:0],m_axi_data_ARSIZE[2:0],m_axi_data_ARBURST[1:0],m_axi_data_ARLOCK[1:0],m_axi_data_ARREGION[3:0],m_axi_data_ARCACHE[3:0],m_axi_data_ARPROT[2:0],m_axi_data_ARQOS[3:0],m_axi_data_ARVALID,m_axi_data_ARREADY,m_axi_data_RID[0:0],m_axi_data_RDATA[63:0],m_axi_data_RRESP[1:0],m_axi_data_RLAST,m_axi_data_RVALID,m_axi_data_RREADY,counter[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "corr_accel,Vivado 2022.2";
begin
end;
