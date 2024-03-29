-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity corr_accel_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    reg_file_6_1_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_6_1_ce0 : OUT STD_LOGIC;
    reg_file_6_1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    reg_file_6_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_6_0_ce0 : OUT STD_LOGIC;
    reg_file_6_0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_1_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_1_ce0 : OUT STD_LOGIC;
    reg_file_2_1_we0 : OUT STD_LOGIC;
    reg_file_2_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_1_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_1_ce1 : OUT STD_LOGIC;
    reg_file_2_1_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_0_ce0 : OUT STD_LOGIC;
    reg_file_2_0_we0 : OUT STD_LOGIC;
    reg_file_2_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    reg_file_2_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    reg_file_2_0_ce1 : OUT STD_LOGIC;
    reg_file_2_0_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_236_p_din0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_236_p_din1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_236_p_dout0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_236_p_ce : OUT STD_LOGIC;
    grp_fu_240_p_din0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_240_p_din1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_240_p_dout0 : IN STD_LOGIC_VECTOR (15 downto 0);
    grp_fu_240_p_ce : OUT STD_LOGIC );
end;


architecture behav of corr_accel_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv12_800 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
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
    signal icmp_ln222_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal reg_file_2_0_addr_reg_290 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_0_addr_reg_290_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_0_addr_reg_290_pp0_iter2_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_0_addr_reg_290_pp0_iter3_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_0_addr_reg_290_pp0_iter4_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_1_addr_reg_301 : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_1_addr_reg_301_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_1_addr_reg_301_pp0_iter2_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_1_addr_reg_301_pp0_iter3_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal reg_file_2_1_addr_reg_301_pp0_iter4_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln227_1_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln227_fu_220_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_14_fu_58 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln223_fu_244_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_14_load : STD_LOGIC_VECTOR (6 downto 0);
    signal i_fu_62 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln227_1_fu_202_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten27_fu_66 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln222_fu_168_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_allocacmp_indvar_flatten27_load : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_fu_180_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln222_1_fu_196_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln227_fu_188_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal lshr_ln_fu_210_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln227_fu_226_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln4_fu_230_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0 : BOOLEAN;
    signal ap_enable_operation_36 : BOOLEAN;
    signal ap_enable_state1_pp0_iter0_stage0 : BOOLEAN;
    signal ap_enable_operation_47 : BOOLEAN;
    signal ap_enable_state2_pp0_iter1_stage0 : BOOLEAN;
    signal ap_enable_operation_64 : BOOLEAN;
    signal ap_enable_state6_pp0_iter5_stage0 : BOOLEAN;
    signal ap_enable_operation_40 : BOOLEAN;
    signal ap_enable_operation_50 : BOOLEAN;
    signal ap_enable_operation_66 : BOOLEAN;
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


    i_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln222_fu_162_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    i_fu_62 <= select_ln227_1_fu_202_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_62 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten27_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln222_fu_162_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    indvar_flatten27_fu_66 <= add_ln222_fu_168_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten27_fu_66 <= ap_const_lv12_0;
                end if;
            end if; 
        end if;
    end process;

    j_14_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln222_fu_162_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    j_14_fu_58 <= add_ln223_fu_244_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_14_fu_58 <= ap_const_lv7_0;
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
                reg_file_2_0_addr_reg_290_pp0_iter1_reg <= reg_file_2_0_addr_reg_290;
                reg_file_2_1_addr_reg_301_pp0_iter1_reg <= reg_file_2_1_addr_reg_301;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                reg_file_2_0_addr_reg_290_pp0_iter2_reg <= reg_file_2_0_addr_reg_290_pp0_iter1_reg;
                reg_file_2_0_addr_reg_290_pp0_iter3_reg <= reg_file_2_0_addr_reg_290_pp0_iter2_reg;
                reg_file_2_0_addr_reg_290_pp0_iter4_reg <= reg_file_2_0_addr_reg_290_pp0_iter3_reg;
                reg_file_2_1_addr_reg_301_pp0_iter2_reg <= reg_file_2_1_addr_reg_301_pp0_iter1_reg;
                reg_file_2_1_addr_reg_301_pp0_iter3_reg <= reg_file_2_1_addr_reg_301_pp0_iter2_reg;
                reg_file_2_1_addr_reg_301_pp0_iter4_reg <= reg_file_2_1_addr_reg_301_pp0_iter3_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln222_fu_162_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                reg_file_2_0_addr_reg_290 <= zext_ln227_1_fu_238_p1(11 - 1 downto 0);
                reg_file_2_1_addr_reg_301 <= zext_ln227_1_fu_238_p1(11 - 1 downto 0);
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
    add_ln222_1_fu_196_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv7_1));
    add_ln222_fu_168_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten27_load) + unsigned(ap_const_lv12_1));
    add_ln223_fu_244_p2 <= std_logic_vector(unsigned(select_ln227_fu_188_p3) + unsigned(ap_const_lv7_2));
    add_ln4_fu_230_p3 <= (trunc_ln227_fu_226_p1 & lshr_ln_fu_210_p4);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);

    ap_block_pp0_assign_proc : process(ap_CS_fsm, ap_block_pp0_stage0_subdone)
    begin
                ap_block_pp0 <= ((ap_ST_fsm_pp0_stage0 = ap_CS_fsm) and (ap_const_boolean_1 = ap_block_pp0_stage0_subdone));
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, icmp_ln222_fu_162_p2, ap_start_int)
    begin
        if (((icmp_ln222_fu_162_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_enable_operation_36_assign_proc : process(icmp_ln222_fu_162_p2)
    begin
                ap_enable_operation_36 <= (icmp_ln222_fu_162_p2 = ap_const_lv1_0);
    end process;


    ap_enable_operation_40_assign_proc : process(icmp_ln222_fu_162_p2)
    begin
                ap_enable_operation_40 <= (icmp_ln222_fu_162_p2 = ap_const_lv1_0);
    end process;

        ap_enable_operation_47 <= (ap_const_boolean_1 = ap_const_boolean_1);
        ap_enable_operation_50 <= (ap_const_boolean_1 = ap_const_boolean_1);
        ap_enable_operation_64 <= (ap_const_boolean_1 = ap_const_boolean_1);
        ap_enable_operation_66 <= (ap_const_boolean_1 = ap_const_boolean_1);
    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_enable_state1_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_start_int)
    begin
                ap_enable_state1_pp0_iter0_stage0 <= ((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state2_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
                ap_enable_state2_pp0_iter1_stage0 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state6_pp0_iter5_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5)
    begin
                ap_enable_state6_pp0_iter5_stage0 <= ((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


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

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_62)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_62;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten27_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten27_fu_66)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten27_load <= ap_const_lv12_0;
        else 
            ap_sig_allocacmp_indvar_flatten27_load <= indvar_flatten27_fu_66;
        end if; 
    end process;


    ap_sig_allocacmp_j_14_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_14_fu_58, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_14_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_j_14_load <= j_14_fu_58;
        end if; 
    end process;

    grp_fu_236_p_ce <= ap_const_logic_1;
    grp_fu_236_p_din0 <= reg_file_2_0_q1;
    grp_fu_236_p_din1 <= reg_file_6_0_q0;
    grp_fu_240_p_ce <= ap_const_logic_1;
    grp_fu_240_p_din0 <= reg_file_2_1_q1;
    grp_fu_240_p_din1 <= reg_file_6_1_q0;
    icmp_ln222_fu_162_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten27_load = ap_const_lv12_800) else "0";
    lshr_ln_fu_210_p4 <= select_ln227_fu_188_p3(5 downto 1);
    reg_file_2_0_address0 <= reg_file_2_0_addr_reg_290_pp0_iter4_reg;
    reg_file_2_0_address1 <= zext_ln227_1_fu_238_p1(11 - 1 downto 0);

    reg_file_2_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_2_0_ce0 <= ap_const_logic_1;
        else 
            reg_file_2_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    reg_file_2_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_2_0_ce1 <= ap_const_logic_1;
        else 
            reg_file_2_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_2_0_d0 <= grp_fu_236_p_dout0;

    reg_file_2_0_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_2_0_we0 <= ap_const_logic_1;
        else 
            reg_file_2_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_2_1_address0 <= reg_file_2_1_addr_reg_301_pp0_iter4_reg;
    reg_file_2_1_address1 <= zext_ln227_1_fu_238_p1(11 - 1 downto 0);

    reg_file_2_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_2_1_ce0 <= ap_const_logic_1;
        else 
            reg_file_2_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    reg_file_2_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_2_1_ce1 <= ap_const_logic_1;
        else 
            reg_file_2_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_2_1_d0 <= grp_fu_240_p_dout0;

    reg_file_2_1_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            reg_file_2_1_we0 <= ap_const_logic_1;
        else 
            reg_file_2_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_0_address0 <= zext_ln227_fu_220_p1(11 - 1 downto 0);

    reg_file_6_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_6_0_ce0 <= ap_const_logic_1;
        else 
            reg_file_6_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    reg_file_6_1_address0 <= zext_ln227_fu_220_p1(11 - 1 downto 0);

    reg_file_6_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            reg_file_6_1_ce0 <= ap_const_logic_1;
        else 
            reg_file_6_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln227_1_fu_202_p3 <= 
        add_ln222_1_fu_196_p2 when (tmp_fu_180_p3(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln227_fu_188_p3 <= 
        ap_const_lv7_0 when (tmp_fu_180_p3(0) = '1') else 
        ap_sig_allocacmp_j_14_load;
    tmp_fu_180_p3 <= ap_sig_allocacmp_j_14_load(6 downto 6);
    trunc_ln227_fu_226_p1 <= select_ln227_1_fu_202_p3(6 - 1 downto 0);
    zext_ln227_1_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln4_fu_230_p3),64));
    zext_ln227_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_fu_210_p4),64));
end behav;
