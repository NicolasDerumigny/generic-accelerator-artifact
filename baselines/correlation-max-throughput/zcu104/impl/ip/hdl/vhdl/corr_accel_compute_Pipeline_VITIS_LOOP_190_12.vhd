-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity corr_accel_compute_Pipeline_VITIS_LOOP_190_12 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    reg_file_5_1_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_5_1_ce0 : OUT STD_LOGIC;
    reg_file_5_1_we0 : OUT STD_LOGIC;
    reg_file_5_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_5_1_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_5_1_ce1 : OUT STD_LOGIC;
    reg_file_5_1_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    reg_file_5_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_5_0_ce0 : OUT STD_LOGIC;
    reg_file_5_0_we0 : OUT STD_LOGIC;
    reg_file_5_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_5_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_5_0_ce1 : OUT STD_LOGIC;
    reg_file_5_0_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    val2_4 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_din0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_din1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_dout0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_ce : OUT STD_LOGIC;
    grp_fu_296_p_din0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_296_p_din1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_296_p_dout0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_296_p_ce : OUT STD_LOGIC );
end;


architecture behav of corr_accel_compute_Pipeline_VITIS_LOOP_190_12 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv7_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal tmp_fu_110_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal reg_file_5_0_addr_7_reg_162 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_0_addr_7_reg_162_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_0_addr_7_reg_162_pp0_iter2_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_0_addr_7_reg_162_pp0_iter3_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_0_addr_7_reg_162_pp0_iter4_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_1_addr_7_reg_168 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_1_addr_7_reg_168_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_1_addr_7_reg_168_pp0_iter2_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_1_addr_7_reg_168_pp0_iter3_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_5_1_addr_7_reg_168_pp0_iter4_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln194_fu_128_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal j_9_fu_46 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln190_fu_134_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j : STD_LOGIC_VECTOR (6 downto 0);
    signal lshr_ln_fu_118_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component corr_accel_hdiv_16ns_16ns_16_5_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component corr_accel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component corr_accel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    j_9_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((tmp_fu_110_p3 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_9_fu_46 <= add_ln190_fu_134_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_9_fu_46 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                    reg_file_5_0_addr_7_reg_162_pp0_iter1_reg(4 downto 0) <= reg_file_5_0_addr_7_reg_162(4 downto 0);
                    reg_file_5_1_addr_7_reg_168_pp0_iter1_reg(4 downto 0) <= reg_file_5_1_addr_7_reg_168(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                    reg_file_5_0_addr_7_reg_162_pp0_iter2_reg(4 downto 0) <= reg_file_5_0_addr_7_reg_162_pp0_iter1_reg(4 downto 0);
                    reg_file_5_0_addr_7_reg_162_pp0_iter3_reg(4 downto 0) <= reg_file_5_0_addr_7_reg_162_pp0_iter2_reg(4 downto 0);
                    reg_file_5_0_addr_7_reg_162_pp0_iter4_reg(4 downto 0) <= reg_file_5_0_addr_7_reg_162_pp0_iter3_reg(4 downto 0);
                    reg_file_5_1_addr_7_reg_168_pp0_iter2_reg(4 downto 0) <= reg_file_5_1_addr_7_reg_168_pp0_iter1_reg(4 downto 0);
                    reg_file_5_1_addr_7_reg_168_pp0_iter3_reg(4 downto 0) <= reg_file_5_1_addr_7_reg_168_pp0_iter2_reg(4 downto 0);
                    reg_file_5_1_addr_7_reg_168_pp0_iter4_reg(4 downto 0) <= reg_file_5_1_addr_7_reg_168_pp0_iter3_reg(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_110_p3 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    reg_file_5_0_addr_7_reg_162(4 downto 0) <= zext_ln194_fu_128_p1(11 - 1 downto 0)(4 downto 0);
                    reg_file_5_1_addr_7_reg_168(4 downto 0) <= zext_ln194_fu_128_p1(11 - 1 downto 0)(4 downto 0);
            end if;
        end if;
    end process;
    reg_file_5_0_addr_7_reg_162(10 downto 5) <= "000000";
    reg_file_5_0_addr_7_reg_162_pp0_iter1_reg(10 downto 5) <= "000000";
    reg_file_5_0_addr_7_reg_162_pp0_iter2_reg(10 downto 5) <= "000000";
    reg_file_5_0_addr_7_reg_162_pp0_iter3_reg(10 downto 5) <= "000000";
    reg_file_5_0_addr_7_reg_162_pp0_iter4_reg(10 downto 5) <= "000000";
    reg_file_5_1_addr_7_reg_168(10 downto 5) <= "000000";
    reg_file_5_1_addr_7_reg_168_pp0_iter1_reg(10 downto 5) <= "000000";
    reg_file_5_1_addr_7_reg_168_pp0_iter2_reg(10 downto 5) <= "000000";
    reg_file_5_1_addr_7_reg_168_pp0_iter3_reg(10 downto 5) <= "000000";
    reg_file_5_1_addr_7_reg_168_pp0_iter4_reg(10 downto 5) <= "000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln190_fu_134_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j) + unsigned(ap_const_lv7_2));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, tmp_fu_110_p3)
    begin
        if (((tmp_fu_110_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_9_fu_46, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_j <= j_9_fu_46;
        end if; 
    end process;

    grp_fu_292_p_ce <= ap_const_logic_1;
    grp_fu_292_p_din0 <= reg_file_5_0_q1;
    grp_fu_292_p_din1 <= val2_4;
    grp_fu_296_p_ce <= ap_const_logic_1;
    grp_fu_296_p_din0 <= reg_file_5_1_q1;
    grp_fu_296_p_din1 <= val2_4;
    lshr_ln_fu_118_p4 <= ap_sig_allocacmp_j(5 downto 1);
    reg_file_5_0_address0 <= reg_file_5_0_addr_7_reg_162_pp0_iter4_reg;
    reg_file_5_0_address1 <= zext_ln194_fu_128_p1(11 - 1 downto 0);

    reg_file_5_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_5_0_ce0 <= ap_const_logic_1;
        else 
            reg_file_5_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    reg_file_5_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_5_0_ce1 <= ap_const_logic_1;
        else 
            reg_file_5_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_5_0_d0 <= grp_fu_292_p_dout0;

    reg_file_5_0_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_5_0_we0 <= ap_const_logic_1;
        else 
            reg_file_5_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_5_1_address0 <= reg_file_5_1_addr_7_reg_168_pp0_iter4_reg;
    reg_file_5_1_address1 <= zext_ln194_fu_128_p1(11 - 1 downto 0);

    reg_file_5_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_5_1_ce0 <= ap_const_logic_1;
        else 
            reg_file_5_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    reg_file_5_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_5_1_ce1 <= ap_const_logic_1;
        else 
            reg_file_5_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_5_1_d0 <= grp_fu_296_p_dout0;

    reg_file_5_1_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_5_1_we0 <= ap_const_logic_1;
        else 
            reg_file_5_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_110_p3 <= ap_sig_allocacmp_j(6 downto 6);
    zext_ln194_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_fu_118_p4),64));
end behav;
