-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity corr_accel_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    reg_file_6_1_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_6_1_ce0 : OUT STD_LOGIC;
    reg_file_6_1_we0 : OUT STD_LOGIC;
    reg_file_6_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_6_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_6_0_ce0 : OUT STD_LOGIC;
    reg_file_6_0_we0 : OUT STD_LOGIC;
    reg_file_6_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_1_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_1_ce0 : OUT STD_LOGIC;
    reg_file_2_1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_0_ce0 : OUT STD_LOGIC;
    reg_file_2_0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_din0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_din1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_dout0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_292_p_ce : OUT STD_LOGIC );
end;


architecture behav of corr_accel_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv13_1000 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln182_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln182_fu_227_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln182_reg_308 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln182_reg_308_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal reg_file_6_0_addr_reg_323 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_6_0_addr_reg_323_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_6_1_addr_reg_328 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_6_1_addr_reg_328_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal val1_fu_272_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln189_fu_243_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_8_fu_76 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln183_fu_251_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_8_load : STD_LOGIC_VECTOR (6 downto 0);
    signal j_7_fu_80 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln182_1_fu_209_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_j_7_load : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten13_fu_84 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln182_fu_177_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_sig_allocacmp_indvar_flatten13_load : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_ln183_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln182_1_fu_203_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln182_fu_195_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln189_fu_231_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal indvars_iv159_udiv_mid2_fu_217_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln2_fu_235_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component corr_accel_hmul_16ns_16ns_16_2_max_dsp_1 IS
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


    component corr_accel_mux_21_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (0 downto 0);
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
    mux_21_16_1_1_U59 : component corr_accel_mux_21_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 1,
        dout_WIDTH => 16)
    port map (
        din0 => reg_file_2_0_q0,
        din1 => reg_file_2_1_q0,
        din2 => trunc_ln182_reg_308,
        dout => val1_fu_272_p4);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    i_8_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln182_fu_171_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_8_fu_76 <= add_ln183_fu_251_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_8_fu_76 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten13_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln182_fu_171_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten13_fu_84 <= add_ln182_fu_177_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten13_fu_84 <= ap_const_lv13_0;
                end if;
            end if; 
        end if;
    end process;

    j_7_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln182_fu_171_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_7_fu_80 <= select_ln182_1_fu_209_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_7_fu_80 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                reg_file_6_0_addr_reg_323_pp0_iter1_reg <= reg_file_6_0_addr_reg_323;
                reg_file_6_1_addr_reg_328_pp0_iter1_reg <= reg_file_6_1_addr_reg_328;
                trunc_ln182_reg_308_pp0_iter1_reg <= trunc_ln182_reg_308;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln182_fu_171_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                reg_file_6_0_addr_reg_323 <= zext_ln189_fu_243_p1(11 - 1 downto 0);
                reg_file_6_1_addr_reg_328 <= zext_ln189_fu_243_p1(11 - 1 downto 0);
                trunc_ln182_reg_308 <= trunc_ln182_fu_227_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln182_1_fu_203_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_7_load) + unsigned(ap_const_lv7_1));
    add_ln182_fu_177_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten13_load) + unsigned(ap_const_lv13_1));
    add_ln183_fu_251_p2 <= std_logic_vector(unsigned(select_ln182_fu_195_p3) + unsigned(ap_const_lv7_1));
    add_ln2_fu_235_p3 <= (trunc_ln189_fu_231_p1 & indvars_iv159_udiv_mid2_fu_217_p4);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln182_fu_171_p2)
    begin
        if (((icmp_ln182_fu_171_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_8_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_8_fu_76, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_8_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_8_load <= i_8_fu_76;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten13_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten13_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten13_load <= ap_const_lv13_0;
        else 
            ap_sig_allocacmp_indvar_flatten13_load <= indvar_flatten13_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_j_7_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_7_fu_80)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_7_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_j_7_load <= j_7_fu_80;
        end if; 
    end process;

    grp_fu_292_p_ce <= ap_const_logic_1;
    grp_fu_292_p_din0 <= val1_fu_272_p4;
    grp_fu_292_p_din1 <= val1_fu_272_p4;
    icmp_ln182_fu_171_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten13_load = ap_const_lv13_1000) else "0";
    icmp_ln183_fu_189_p2 <= "1" when (ap_sig_allocacmp_i_8_load = ap_const_lv7_40) else "0";
    indvars_iv159_udiv_mid2_fu_217_p4 <= select_ln182_1_fu_209_p3(5 downto 1);
    reg_file_2_0_address0 <= zext_ln189_fu_243_p1(11 - 1 downto 0);

    reg_file_2_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_2_0_ce0 <= ap_const_logic_1;
        else 
            reg_file_2_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_2_1_address0 <= zext_ln189_fu_243_p1(11 - 1 downto 0);

    reg_file_2_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_2_1_ce0 <= ap_const_logic_1;
        else 
            reg_file_2_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_0_address0 <= reg_file_6_0_addr_reg_323_pp0_iter1_reg;

    reg_file_6_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            reg_file_6_0_ce0 <= ap_const_logic_1;
        else 
            reg_file_6_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_0_d0 <= grp_fu_292_p_dout0;

    reg_file_6_0_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln182_reg_308_pp0_iter1_reg)
    begin
        if (((trunc_ln182_reg_308_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            reg_file_6_0_we0 <= ap_const_logic_1;
        else 
            reg_file_6_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_1_address0 <= reg_file_6_1_addr_reg_328_pp0_iter1_reg;

    reg_file_6_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            reg_file_6_1_ce0 <= ap_const_logic_1;
        else 
            reg_file_6_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_1_d0 <= grp_fu_292_p_dout0;

    reg_file_6_1_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln182_reg_308_pp0_iter1_reg)
    begin
        if (((trunc_ln182_reg_308_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            reg_file_6_1_we0 <= ap_const_logic_1;
        else 
            reg_file_6_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln182_1_fu_209_p3 <= 
        add_ln182_1_fu_203_p2 when (icmp_ln183_fu_189_p2(0) = '1') else 
        ap_sig_allocacmp_j_7_load;
    select_ln182_fu_195_p3 <= 
        ap_const_lv7_0 when (icmp_ln183_fu_189_p2(0) = '1') else 
        ap_sig_allocacmp_i_8_load;
    trunc_ln182_fu_227_p1 <= select_ln182_1_fu_209_p3(1 - 1 downto 0);
    trunc_ln189_fu_231_p1 <= select_ln182_fu_195_p3(6 - 1 downto 0);
    zext_ln189_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln2_fu_235_p3),64));
end behav;
