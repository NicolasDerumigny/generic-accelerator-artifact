-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec 19 18:20:12 2022
-- Host        : liara running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_floating_point_0_1 -prefix
--               design_1_floating_point_0_1_ design_1_floating_point_0_0_stub.vhdl
-- Design      : design_1_floating_point_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_floating_point_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_floating_point_0_1;

architecture stub of design_1_floating_point_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_a_tvalid,s_axis_a_tdata[15:0],s_axis_b_tvalid,s_axis_b_tdata[15:0],s_axis_c_tvalid,s_axis_c_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "floating_point_v7_1_15,Vivado 2022.2";
begin
end;
