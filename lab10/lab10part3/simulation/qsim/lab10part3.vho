-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/26/2022 01:17:54"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab10part3 IS
    PORT (
	sw9 : IN std_logic;
	key0 : IN std_logic;
	clk : IN std_logic;
	p_W : BUFFER std_logic;
	ADDR : BUFFER std_logic_vector(8 DOWNTO 0);
	DOUT : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_2 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_4 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_5 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_7 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_1 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_0 : BUFFER std_logic_vector(8 DOWNTO 0);
	data_in : BUFFER std_logic_vector(8 DOWNTO 0);
	IR : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_3 : BUFFER std_logic_vector(8 DOWNTO 0);
	Tstep_Q : BUFFER std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab10part3;

-- Design Ports Information
-- p_W	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_2[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_4[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_7[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[8]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_3[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab10part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_p_W : std_logic;
SIGNAL ww_ADDR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_4 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_5 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_7 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_3 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p1|reg0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \p1|fsm|Ain~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux28~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|fsm|Gin~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~34\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|reg0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~42_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|Wr_en~1_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|regG|Q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector5~4_combout\ : std_logic;
SIGNAL \p1|ir0|Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|decX|Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~2_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~5_combout\ : std_logic;
SIGNAL \p1|ir0|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~3_combout\ : std_logic;
SIGNAL \p1|reg0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|regG|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Equal0~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~9_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|reg1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|reg5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~36_combout\ : std_logic;
SIGNAL \p1|fsm|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~7_combout\ : std_logic;
SIGNAL \p1|pc0|v[0]~0_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~2\ : std_logic;
SIGNAL \p1|pc0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~6\ : std_logic;
SIGNAL \p1|pc0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~10\ : std_logic;
SIGNAL \p1|pc0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~14\ : std_logic;
SIGNAL \p1|pc0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~18\ : std_logic;
SIGNAL \p1|pc0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~22\ : std_logic;
SIGNAL \p1|pc0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~26\ : std_logic;
SIGNAL \p1|pc0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|mux0|y[7]~30_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~40_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~56_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~31_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~32_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~2_combout\ : std_logic;
SIGNAL \p1|reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~28_combout\ : std_logic;
SIGNAL \p1|reg0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~29_combout\ : std_logic;
SIGNAL \p1|regDout|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regDout|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~24_combout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~25_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~26_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~21_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~22_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~23_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~6_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~43_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~44_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~41_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|dexY|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~39_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~48_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~8_combout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~18_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~19_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~20_combout\ : std_logic;
SIGNAL \p1|reg2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~15_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~16_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~17_combout\ : std_logic;
SIGNAL \p1|reg0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|fsm|Selector19~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector19~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.TX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~38_combout\ : std_logic;
SIGNAL \p1|reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~37_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~52_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~11_combout\ : std_logic;
SIGNAL \p1|regDout|Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~7_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~4_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~7_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~6_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~10_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~30\ : std_logic;
SIGNAL \p1|pc0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|mux0|y[8]~33_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~34_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~35_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \p1|ir0|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Wr_en~0_combout\ : std_logic;
SIGNAL \p1|ff0|Q~q\ : std_logic;
SIGNAL \p1|regDout|Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg4|Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Tstep_Q~0_combout\ : std_logic;
SIGNAL \led_en~combout\ : std_logic;
SIGNAL \leds0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|Tstep_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Tstep_Q~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|ALT_INV_Q\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \p1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~56_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~52_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~48_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~44_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~43_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~42_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~41_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~40_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~39_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~38_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~36_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~29_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~27_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~26_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~25_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~24_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~23_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~20_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~19_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~18_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~17_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~16_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~15_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~11_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~10_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~9_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~8_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~7_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \p1|dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Wr_en~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg1|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ : std_logic;

BEGIN

ww_sw9 <= sw9;
ww_key0 <= key0;
ww_clk <= clk;
p_W <= ww_p_W;
ADDR <= ww_ADDR;
DOUT <= ww_DOUT;
reg_2 <= ww_reg_2;
reg_4 <= ww_reg_4;
reg_5 <= ww_reg_5;
reg_7 <= ww_reg_7;
reg_1 <= ww_reg_1;
reg_0 <= ww_reg_0;
data_in <= ww_data_in;
IR <= ww_IR;
reg_3 <= ww_reg_3;
Tstep_Q <= ww_Tstep_Q;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \p1|regDout|Q\(8) & \p1|regDout|Q\(7) & \p1|regDout|Q\(6) & \p1|regDout|Q\(5) & \p1|regDout|Q\(4) & 
\p1|regDout|Q\(3) & \p1|regDout|Q\(2) & \p1|regDout|Q[1]~DUPLICATE_q\ & \p1|regDout|Q[0]~DUPLICATE_q\);

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(0) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\m0|altsyncram_component|auto_generated|q_a\(1) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\m0|altsyncram_component|auto_generated|q_a\(2) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\m0|altsyncram_component|auto_generated|q_a\(3) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\m0|altsyncram_component|auto_generated|q_a\(4) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\m0|altsyncram_component|auto_generated|q_a\(5) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\m0|altsyncram_component|auto_generated|q_a\(6) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\m0|altsyncram_component|auto_generated|q_a\(7) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\m0|altsyncram_component|auto_generated|q_a\(8) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \m0|altsyncram_component|auto_generated|q_a\(1);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \m0|altsyncram_component|auto_generated|q_a\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \m0|altsyncram_component|auto_generated|q_a\(3);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \m0|altsyncram_component|auto_generated|q_a\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \m0|altsyncram_component|auto_generated|q_a\(5);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \m0|altsyncram_component|auto_generated|q_a\(6);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \m0|altsyncram_component|auto_generated|q_a\(7);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \m0|altsyncram_component|auto_generated|q_a\(8);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \m0|altsyncram_component|auto_generated|q_a\(0);
\p1|pc0|ALT_INV_v\(8) <= NOT \p1|pc0|v\(8);
\p1|pc0|ALT_INV_v\(7) <= NOT \p1|pc0|v\(7);
\p1|pc0|ALT_INV_v\(6) <= NOT \p1|pc0|v\(6);
\p1|pc0|ALT_INV_v\(5) <= NOT \p1|pc0|v\(5);
\p1|pc0|ALT_INV_v\(4) <= NOT \p1|pc0|v\(4);
\p1|pc0|ALT_INV_v\(3) <= NOT \p1|pc0|v\(3);
\p1|pc0|ALT_INV_v\(2) <= NOT \p1|pc0|v\(2);
\p1|pc0|ALT_INV_v\(1) <= NOT \p1|pc0|v\(1);
\p1|pc0|ALT_INV_v\(0) <= NOT \p1|pc0|v\(0);
\p1|fsm|ALT_INV_Selector5~2_combout\ <= NOT \p1|fsm|Selector5~2_combout\;
\p1|fsm|ALT_INV_Selector5~1_combout\ <= NOT \p1|fsm|Selector5~1_combout\;
\p1|fsm|ALT_INV_Selector5~0_combout\ <= NOT \p1|fsm|Selector5~0_combout\;
\p1|fsm|ALT_INV_Mux0~0_combout\ <= NOT \p1|fsm|Mux0~0_combout\;
\p1|fsm|ALT_INV_Equal0~1_combout\ <= NOT \p1|fsm|Equal0~1_combout\;
\p1|fsm|ALT_INV_Equal0~0_combout\ <= NOT \p1|fsm|Equal0~0_combout\;
\p1|decX|ALT_INV_Mux0~0_combout\ <= NOT \p1|decX|Mux0~0_combout\;
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|fsm|ALT_INV_y_Q.T3~q\ <= NOT \p1|fsm|y_Q.T3~q\;
\p1|fsm|ALT_INV_y_Q.T2~q\ <= NOT \p1|fsm|y_Q.T2~q\;
\p1|fsm|ALT_INV_y_Q.T1~q\ <= NOT \p1|fsm|y_Q.T1~q\;
\p1|fsm|ALT_INV_Tstep_Q~0_combout\ <= NOT \p1|fsm|Tstep_Q~0_combout\;
\p1|fsm|ALT_INV_y_Q.TXX~q\ <= NOT \p1|fsm|y_Q.TXX~q\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|reg3|ALT_INV_Q\(8) <= NOT \p1|reg3|Q\(8);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|reg3|ALT_INV_Q\(6) <= NOT \p1|reg3|Q\(6);
\p1|reg3|ALT_INV_Q\(5) <= NOT \p1|reg3|Q\(5);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|ir0|ALT_INV_Q\(8) <= NOT \p1|ir0|Q\(8);
\p1|ir0|ALT_INV_Q\(7) <= NOT \p1|ir0|Q\(7);
\p1|ir0|ALT_INV_Q\(6) <= NOT \p1|ir0|Q\(6);
\p1|ir0|ALT_INV_Q\(5) <= NOT \p1|ir0|Q\(5);
\p1|ir0|ALT_INV_Q\(3) <= NOT \p1|ir0|Q\(3);
\p1|ir0|ALT_INV_Q\(2) <= NOT \p1|ir0|Q\(2);
\p1|ir0|ALT_INV_Q\(1) <= NOT \p1|ir0|Q\(1);
\p1|ir0|ALT_INV_Q\(0) <= NOT \p1|ir0|Q\(0);
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|reg0|ALT_INV_Q\(6) <= NOT \p1|reg0|Q\(6);
\p1|reg0|ALT_INV_Q\(5) <= NOT \p1|reg0|Q\(5);
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|reg1|ALT_INV_Q\(6) <= NOT \p1|reg1|Q\(6);
\p1|reg1|ALT_INV_Q\(5) <= NOT \p1|reg1|Q\(5);
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg5|ALT_INV_Q\(6) <= NOT \p1|reg5|Q\(6);
\p1|reg5|ALT_INV_Q\(5) <= NOT \p1|reg5|Q\(5);
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg4|ALT_INV_Q\(6) <= NOT \p1|reg4|Q\(6);
\p1|reg4|ALT_INV_Q\(5) <= NOT \p1|reg4|Q\(5);
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg2|ALT_INV_Q\(6) <= NOT \p1|reg2|Q\(6);
\p1|reg2|ALT_INV_Q\(5) <= NOT \p1|reg2|Q\(5);
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|regDout|ALT_INV_Q\(6) <= NOT \p1|regDout|Q\(6);
\p1|ff0|ALT_INV_Q~q\ <= NOT \p1|ff0|Q~q\;
\p1|mux0|ALT_INV_y[0]~56_combout\ <= NOT \p1|mux0|y[0]~56_combout\;
\p1|mux0|ALT_INV_y[0]~52_combout\ <= NOT \p1|mux0|y[0]~52_combout\;
\p1|mux0|ALT_INV_y[0]~48_combout\ <= NOT \p1|mux0|y[0]~48_combout\;
\p1|mux0|ALT_INV_y[0]~44_combout\ <= NOT \p1|mux0|y[0]~44_combout\;
\p1|fsm|ALT_INV_Selector4~3_combout\ <= NOT \p1|fsm|Selector4~3_combout\;
\p1|mux0|ALT_INV_y[0]~43_combout\ <= NOT \p1|mux0|y[0]~43_combout\;
\p1|mux0|ALT_INV_y[0]~42_combout\ <= NOT \p1|mux0|y[0]~42_combout\;
\p1|mux0|ALT_INV_y[0]~41_combout\ <= NOT \p1|mux0|y[0]~41_combout\;
\p1|mux0|ALT_INV_y[0]~40_combout\ <= NOT \p1|mux0|y[0]~40_combout\;
\p1|mux0|ALT_INV_y[0]~39_combout\ <= NOT \p1|mux0|y[0]~39_combout\;
\p1|mux0|ALT_INV_y[0]~38_combout\ <= NOT \p1|mux0|y[0]~38_combout\;
\p1|mux0|ALT_INV_y[0]~37_combout\ <= NOT \p1|mux0|y[0]~37_combout\;
\p1|mux0|ALT_INV_y[0]~36_combout\ <= NOT \p1|mux0|y[0]~36_combout\;
\p1|fsm|ALT_INV_Selector1~2_combout\ <= NOT \p1|fsm|Selector1~2_combout\;
\p1|fsm|ALT_INV_Selector1~1_combout\ <= NOT \p1|fsm|Selector1~1_combout\;
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|fsm|ALT_INV_Mux28~0_combout\ <= NOT \p1|fsm|Mux28~0_combout\;
\p1|fsm|ALT_INV_Selector19~1_combout\ <= NOT \p1|fsm|Selector19~1_combout\;
\p1|fsm|ALT_INV_Selector15~1_combout\ <= NOT \p1|fsm|Selector15~1_combout\;
\p1|fsm|ALT_INV_Selector10~1_combout\ <= NOT \p1|fsm|Selector10~1_combout\;
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\p1|fsm|ALT_INV_Selector19~0_combout\ <= NOT \p1|fsm|Selector19~0_combout\;
\p1|mux0|ALT_INV_y[8]~35_combout\ <= NOT \p1|mux0|y[8]~35_combout\;
\p1|mux0|ALT_INV_y[8]~34_combout\ <= NOT \p1|mux0|y[8]~34_combout\;
\p1|mux0|ALT_INV_y[8]~33_combout\ <= NOT \p1|mux0|y[8]~33_combout\;
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\p1|mux0|ALT_INV_y[7]~32_combout\ <= NOT \p1|mux0|y[7]~32_combout\;
\p1|mux0|ALT_INV_y[7]~31_combout\ <= NOT \p1|mux0|y[7]~31_combout\;
\p1|mux0|ALT_INV_y[7]~30_combout\ <= NOT \p1|mux0|y[7]~30_combout\;
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|mux0|ALT_INV_y[6]~29_combout\ <= NOT \p1|mux0|y[6]~29_combout\;
\p1|mux0|ALT_INV_y[6]~28_combout\ <= NOT \p1|mux0|y[6]~28_combout\;
\p1|mux0|ALT_INV_y[6]~27_combout\ <= NOT \p1|mux0|y[6]~27_combout\;
\p1|reg6|ALT_INV_Q\(6) <= NOT \p1|reg6|Q\(6);
\p1|mux0|ALT_INV_y[5]~26_combout\ <= NOT \p1|mux0|y[5]~26_combout\;
\p1|mux0|ALT_INV_y[5]~25_combout\ <= NOT \p1|mux0|y[5]~25_combout\;
\p1|mux0|ALT_INV_y[5]~24_combout\ <= NOT \p1|mux0|y[5]~24_combout\;
\p1|reg6|ALT_INV_Q\(5) <= NOT \p1|reg6|Q\(5);
\p1|mux0|ALT_INV_y[4]~23_combout\ <= NOT \p1|mux0|y[4]~23_combout\;
\p1|mux0|ALT_INV_y[4]~22_combout\ <= NOT \p1|mux0|y[4]~22_combout\;
\p1|mux0|ALT_INV_y[4]~21_combout\ <= NOT \p1|mux0|y[4]~21_combout\;
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|mux0|ALT_INV_y[3]~20_combout\ <= NOT \p1|mux0|y[3]~20_combout\;
\p1|mux0|ALT_INV_y[3]~19_combout\ <= NOT \p1|mux0|y[3]~19_combout\;
\p1|mux0|ALT_INV_y[3]~18_combout\ <= NOT \p1|mux0|y[3]~18_combout\;
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|mux0|ALT_INV_y[2]~17_combout\ <= NOT \p1|mux0|y[2]~17_combout\;
\p1|mux0|ALT_INV_y[2]~16_combout\ <= NOT \p1|mux0|y[2]~16_combout\;
\p1|mux0|ALT_INV_y[2]~15_combout\ <= NOT \p1|mux0|y[2]~15_combout\;
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|mux0|ALT_INV_y[1]~14_combout\ <= NOT \p1|mux0|y[1]~14_combout\;
\p1|mux0|ALT_INV_y[1]~13_combout\ <= NOT \p1|mux0|y[1]~13_combout\;
\p1|mux0|ALT_INV_y[1]~12_combout\ <= NOT \p1|mux0|y[1]~12_combout\;
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|mux0|ALT_INV_y[0]~11_combout\ <= NOT \p1|mux0|y[0]~11_combout\;
\p1|mux0|ALT_INV_y[0]~10_combout\ <= NOT \p1|mux0|y[0]~10_combout\;
\p1|mux0|ALT_INV_y[0]~9_combout\ <= NOT \p1|mux0|y[0]~9_combout\;
\p1|mux0|ALT_INV_y[0]~8_combout\ <= NOT \p1|mux0|y[0]~8_combout\;
\p1|mux0|ALT_INV_y[0]~7_combout\ <= NOT \p1|mux0|y[0]~7_combout\;
\p1|mux0|ALT_INV_y[0]~6_combout\ <= NOT \p1|mux0|y[0]~6_combout\;
\p1|mux0|ALT_INV_y[0]~5_combout\ <= NOT \p1|mux0|y[0]~5_combout\;
\p1|mux0|ALT_INV_y[0]~4_combout\ <= NOT \p1|mux0|y[0]~4_combout\;
\p1|fsm|ALT_INV_Selector8~1_combout\ <= NOT \p1|fsm|Selector8~1_combout\;
\p1|fsm|ALT_INV_Selector8~0_combout\ <= NOT \p1|fsm|Selector8~0_combout\;
\p1|fsm|ALT_INV_Mux7~0_combout\ <= NOT \p1|fsm|Mux7~0_combout\;
\p1|dexY|ALT_INV_Mux0~0_combout\ <= NOT \p1|dexY|Mux0~0_combout\;
\p1|decX|ALT_INV_Mux0~7_combout\ <= NOT \p1|decX|Mux0~7_combout\;
\p1|fsm|ALT_INV_Equal0~2_combout\ <= NOT \p1|fsm|Equal0~2_combout\;
\p1|fsm|ALT_INV_Selector5~7_combout\ <= NOT \p1|fsm|Selector5~7_combout\;
\p1|fsm|ALT_INV_Selector1~0_combout\ <= NOT \p1|fsm|Selector1~0_combout\;
\p1|decX|ALT_INV_Mux0~6_combout\ <= NOT \p1|decX|Mux0~6_combout\;
\p1|mux0|ALT_INV_y[0]~3_combout\ <= NOT \p1|mux0|y[0]~3_combout\;
\p1|mux0|ALT_INV_y[0]~2_combout\ <= NOT \p1|mux0|y[0]~2_combout\;
\p1|fsm|ALT_INV_Selector2~3_combout\ <= NOT \p1|fsm|Selector2~3_combout\;
\p1|fsm|ALT_INV_Selector2~2_combout\ <= NOT \p1|fsm|Selector2~2_combout\;
\p1|fsm|ALT_INV_Selector2~1_combout\ <= NOT \p1|fsm|Selector2~1_combout\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|decX|ALT_INV_Mux0~5_combout\ <= NOT \p1|decX|Mux0~5_combout\;
\p1|fsm|ALT_INV_Selector4~2_combout\ <= NOT \p1|fsm|Selector4~2_combout\;
\p1|fsm|ALT_INV_Selector4~1_combout\ <= NOT \p1|fsm|Selector4~1_combout\;
\p1|fsm|ALT_INV_Selector3~2_combout\ <= NOT \p1|fsm|Selector3~2_combout\;
\p1|fsm|ALT_INV_Selector3~1_combout\ <= NOT \p1|fsm|Selector3~1_combout\;
\p1|fsm|ALT_INV_Selector4~0_combout\ <= NOT \p1|fsm|Selector4~0_combout\;
\p1|decX|ALT_INV_Mux0~4_combout\ <= NOT \p1|decX|Mux0~4_combout\;
\p1|fsm|ALT_INV_Selector3~0_combout\ <= NOT \p1|fsm|Selector3~0_combout\;
\p1|decX|ALT_INV_Mux0~3_combout\ <= NOT \p1|decX|Mux0~3_combout\;
\p1|mux0|ALT_INV_y[0]~1_combout\ <= NOT \p1|mux0|y[0]~1_combout\;
\p1|mux0|ALT_INV_y[0]~0_combout\ <= NOT \p1|mux0|y[0]~0_combout\;
\p1|fsm|ALT_INV_Selector5~6_combout\ <= NOT \p1|fsm|Selector5~6_combout\;
\p1|fsm|ALT_INV_Selector5~5_combout\ <= NOT \p1|fsm|Selector5~5_combout\;
\p1|fsm|ALT_INV_Selector7~2_combout\ <= NOT \p1|fsm|Selector7~2_combout\;
\p1|fsm|ALT_INV_Selector7~1_combout\ <= NOT \p1|fsm|Selector7~1_combout\;
\p1|fsm|ALT_INV_Selector6~2_combout\ <= NOT \p1|fsm|Selector6~2_combout\;
\p1|fsm|ALT_INV_Selector6~1_combout\ <= NOT \p1|fsm|Selector6~1_combout\;
\p1|fsm|ALT_INV_Selector5~4_combout\ <= NOT \p1|fsm|Selector5~4_combout\;
\p1|fsm|ALT_INV_Selector5~3_combout\ <= NOT \p1|fsm|Selector5~3_combout\;
\p1|fsm|ALT_INV_Wr_en~1_combout\ <= NOT \p1|fsm|Wr_en~1_combout\;
\p1|fsm|ALT_INV_Selector7~0_combout\ <= NOT \p1|fsm|Selector7~0_combout\;
\p1|decX|ALT_INV_Mux0~2_combout\ <= NOT \p1|decX|Mux0~2_combout\;
\p1|fsm|ALT_INV_Selector6~0_combout\ <= NOT \p1|fsm|Selector6~0_combout\;
\p1|decX|ALT_INV_Mux0~1_combout\ <= NOT \p1|decX|Mux0~1_combout\;
\p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\ <= NOT \p1|fsm|y_Q.T1~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|ir0|Q[8]~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\ <= NOT \p1|ir0|Q[4]~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|ir0|Q[2]~DUPLICATE_q\;
\p1|reg1|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|reg1|Q[2]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[8]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[7]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ <= NOT \p1|regG|Q[1]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ <= NOT \p1|regG|Q[6]~DUPLICATE_q\;

-- Location: IOOBUF_X10_Y45_N19
\p_W~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ff0|Q~q\,
	devoe => ww_devoe,
	o => ww_p_W);

-- Location: IOOBUF_X0_Y20_N22
\ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(0),
	devoe => ww_devoe,
	o => ww_ADDR(0));

-- Location: IOOBUF_X18_Y0_N19
\ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(1),
	devoe => ww_devoe,
	o => ww_ADDR(1));

-- Location: IOOBUF_X22_Y0_N53
\ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(2),
	devoe => ww_devoe,
	o => ww_ADDR(2));

-- Location: IOOBUF_X14_Y45_N36
\ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(3),
	devoe => ww_devoe,
	o => ww_ADDR(3));

-- Location: IOOBUF_X54_Y15_N39
\ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(4),
	devoe => ww_devoe,
	o => ww_ADDR(4));

-- Location: IOOBUF_X14_Y0_N36
\ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(5),
	devoe => ww_devoe,
	o => ww_ADDR(5));

-- Location: IOOBUF_X38_Y0_N19
\ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(6),
	devoe => ww_devoe,
	o => ww_ADDR(6));

-- Location: IOOBUF_X25_Y0_N2
\ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(7),
	devoe => ww_devoe,
	o => ww_ADDR(7));

-- Location: IOOBUF_X33_Y0_N93
\ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(8),
	devoe => ww_devoe,
	o => ww_ADDR(8));

-- Location: IOOBUF_X54_Y14_N45
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X36_Y0_N53
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X54_Y17_N5
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(2),
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X0_Y20_N56
\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(3),
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOOBUF_X34_Y0_N2
\DOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(4),
	devoe => ww_devoe,
	o => ww_DOUT(4));

-- Location: IOOBUF_X54_Y14_N79
\DOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DOUT(5));

-- Location: IOOBUF_X10_Y0_N59
\DOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(6),
	devoe => ww_devoe,
	o => ww_DOUT(6));

-- Location: IOOBUF_X11_Y0_N2
\DOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(7),
	devoe => ww_devoe,
	o => ww_DOUT(7));

-- Location: IOOBUF_X0_Y21_N39
\DOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regDout|Q\(8),
	devoe => ww_devoe,
	o => ww_DOUT(8));

-- Location: IOOBUF_X19_Y0_N2
\reg_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_2(0));

-- Location: IOOBUF_X34_Y0_N19
\reg_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_2(1));

-- Location: IOOBUF_X23_Y0_N59
\reg_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_2(2));

-- Location: IOOBUF_X50_Y0_N36
\reg_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_2(3));

-- Location: IOOBUF_X24_Y0_N19
\reg_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_2(4));

-- Location: IOOBUF_X23_Y0_N42
\reg_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_2(5));

-- Location: IOOBUF_X18_Y45_N53
\reg_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_2(6));

-- Location: IOOBUF_X54_Y15_N56
\reg_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_2(7));

-- Location: IOOBUF_X16_Y0_N76
\reg_2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_2(8));

-- Location: IOOBUF_X24_Y0_N2
\reg_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_4(0));

-- Location: IOOBUF_X54_Y14_N62
\reg_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_4(1));

-- Location: IOOBUF_X34_Y0_N36
\reg_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_4(2));

-- Location: IOOBUF_X52_Y0_N2
\reg_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_4(3));

-- Location: IOOBUF_X14_Y0_N53
\reg_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_4(4));

-- Location: IOOBUF_X14_Y0_N19
\reg_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_reg_4(5));

-- Location: IOOBUF_X33_Y0_N76
\reg_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_4(6));

-- Location: IOOBUF_X25_Y0_N19
\reg_4[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_4(7));

-- Location: IOOBUF_X18_Y0_N2
\reg_4[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg4|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_4(8));

-- Location: IOOBUF_X14_Y45_N19
\reg_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_5(0));

-- Location: IOOBUF_X22_Y0_N36
\reg_5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_5(1));

-- Location: IOOBUF_X14_Y45_N2
\reg_5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_5(2));

-- Location: IOOBUF_X40_Y0_N42
\reg_5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_5(3));

-- Location: IOOBUF_X23_Y0_N93
\reg_5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_5(4));

-- Location: IOOBUF_X10_Y0_N76
\reg_5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_5(5));

-- Location: IOOBUF_X19_Y0_N36
\reg_5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_5(6));

-- Location: IOOBUF_X54_Y14_N96
\reg_5[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_5(7));

-- Location: IOOBUF_X22_Y0_N2
\reg_5[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_5(8));

-- Location: IOOBUF_X24_Y0_N53
\reg_7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(0),
	devoe => ww_devoe,
	o => ww_reg_7(0));

-- Location: IOOBUF_X8_Y45_N93
\reg_7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(1),
	devoe => ww_devoe,
	o => ww_reg_7(1));

-- Location: IOOBUF_X12_Y45_N36
\reg_7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(2),
	devoe => ww_devoe,
	o => ww_reg_7(2));

-- Location: IOOBUF_X14_Y45_N53
\reg_7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(3),
	devoe => ww_devoe,
	o => ww_reg_7(3));

-- Location: IOOBUF_X40_Y0_N93
\reg_7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(4),
	devoe => ww_devoe,
	o => ww_reg_7(4));

-- Location: IOOBUF_X0_Y18_N45
\reg_7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(5),
	devoe => ww_devoe,
	o => ww_reg_7(5));

-- Location: IOOBUF_X25_Y0_N36
\reg_7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(6),
	devoe => ww_devoe,
	o => ww_reg_7(6));

-- Location: IOOBUF_X16_Y45_N93
\reg_7[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(7),
	devoe => ww_devoe,
	o => ww_reg_7(7));

-- Location: IOOBUF_X36_Y0_N2
\reg_7[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|pc0|v\(8),
	devoe => ww_devoe,
	o => ww_reg_7(8));

-- Location: IOOBUF_X36_Y0_N19
\reg_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_1(0));

-- Location: IOOBUF_X10_Y45_N53
\reg_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_1(1));

-- Location: IOOBUF_X11_Y0_N19
\reg_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_1(2));

-- Location: IOOBUF_X38_Y0_N2
\reg_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_1(3));

-- Location: IOOBUF_X34_Y0_N53
\reg_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_1(4));

-- Location: IOOBUF_X12_Y45_N2
\reg_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_1(5));

-- Location: IOOBUF_X16_Y0_N42
\reg_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_1(6));

-- Location: IOOBUF_X10_Y45_N2
\reg_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_1(7));

-- Location: IOOBUF_X14_Y0_N2
\reg_1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg1|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_1(8));

-- Location: IOOBUF_X19_Y0_N19
\reg_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_0(0));

-- Location: IOOBUF_X12_Y45_N53
\reg_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_0(1));

-- Location: IOOBUF_X24_Y0_N36
\reg_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_0(2));

-- Location: IOOBUF_X12_Y0_N19
\reg_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_0(3));

-- Location: IOOBUF_X10_Y0_N42
\reg_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_0(4));

-- Location: IOOBUF_X29_Y0_N53
\reg_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_0(5));

-- Location: IOOBUF_X23_Y0_N76
\reg_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_0(6));

-- Location: IOOBUF_X22_Y0_N19
\reg_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_0(7));

-- Location: IOOBUF_X18_Y0_N36
\reg_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_0(8));

-- Location: IOOBUF_X0_Y20_N39
\data_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_data_in(0));

-- Location: IOOBUF_X33_Y0_N59
\data_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_data_in(1));

-- Location: IOOBUF_X0_Y18_N79
\data_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_data_in(2));

-- Location: IOOBUF_X54_Y19_N5
\data_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_data_in(3));

-- Location: IOOBUF_X33_Y0_N42
\data_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_data_in(4));

-- Location: IOOBUF_X8_Y45_N76
\data_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_data_in(5));

-- Location: IOOBUF_X0_Y18_N96
\data_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_data_in(6));

-- Location: IOOBUF_X12_Y45_N19
\data_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_data_in(7));

-- Location: IOOBUF_X11_Y0_N36
\data_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_data_in(8));

-- Location: IOOBUF_X12_Y0_N2
\IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(0),
	devoe => ww_devoe,
	o => ww_IR(0));

-- Location: IOOBUF_X0_Y18_N62
\IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(1),
	devoe => ww_devoe,
	o => ww_IR(1));

-- Location: IOOBUF_X0_Y19_N56
\IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(2),
	devoe => ww_devoe,
	o => ww_IR(2));

-- Location: IOOBUF_X25_Y0_N53
\IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(3),
	devoe => ww_devoe,
	o => ww_IR(3));

-- Location: IOOBUF_X19_Y0_N53
\IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(4),
	devoe => ww_devoe,
	o => ww_IR(4));

-- Location: IOOBUF_X40_Y0_N76
\IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(5),
	devoe => ww_devoe,
	o => ww_IR(5));

-- Location: IOOBUF_X18_Y0_N53
\IR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(6),
	devoe => ww_devoe,
	o => ww_IR(6));

-- Location: IOOBUF_X11_Y0_N53
\IR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(7),
	devoe => ww_devoe,
	o => ww_IR(7));

-- Location: IOOBUF_X0_Y19_N39
\IR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(8),
	devoe => ww_devoe,
	o => ww_IR(8));

-- Location: IOOBUF_X36_Y0_N36
\reg_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_3(0));

-- Location: IOOBUF_X16_Y45_N76
\reg_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_3(1));

-- Location: IOOBUF_X54_Y15_N22
\reg_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_3(2));

-- Location: IOOBUF_X54_Y17_N22
\reg_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_3(3));

-- Location: IOOBUF_X44_Y0_N53
\reg_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_3(4));

-- Location: IOOBUF_X12_Y0_N53
\reg_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_3(5));

-- Location: IOOBUF_X20_Y45_N36
\reg_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_3(6));

-- Location: IOOBUF_X20_Y45_N2
\reg_3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_3(7));

-- Location: IOOBUF_X12_Y0_N36
\reg_3[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_3(8));

-- Location: IOOBUF_X29_Y0_N19
\Tstep_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|ALT_INV_Tstep_Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(0));

-- Location: IOOBUF_X0_Y19_N22
\Tstep_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|Tstep_Q\(1),
	devoe => ww_devoe,
	o => ww_Tstep_Q(1));

-- Location: IOOBUF_X16_Y0_N93
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|y_Q.T2~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X10_Y45_N36
\Tstep_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|y_Q.T3~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(3));

-- Location: IOOBUF_X0_Y21_N22
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(0),
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X0_Y21_N5
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(1),
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X29_Y0_N2
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(2),
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X16_Y0_N59
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(3),
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X16_Y45_N42
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(4),
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X0_Y21_N56
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(5),
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X10_Y0_N93
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(6),
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X0_Y19_N5
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(7),
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X0_Y20_N5
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(8),
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y10_N12
\p1|reg0|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~11_combout\,
	combout => \p1|reg0|Q[0]~feeder_combout\);

-- Location: IOIBUF_X54_Y18_N44
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: CLKCTRL_G8
\key0~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key0~input_o\,
	outclk => \key0~inputCLKENA0_outclk\);

-- Location: IOIBUF_X29_Y0_N35
\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: FF_X12_Y11_N38
\ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw9~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|Q~q\);

-- Location: FF_X13_Y11_N7
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: LABCELL_X14_Y10_N15
\p1|fsm|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~0_combout\ = ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( (\p1|fsm|y_Q.T1~DUPLICATE_q\ & \p1|ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|Ain~0_combout\);

-- Location: FF_X12_Y12_N55
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: LABCELL_X16_Y9_N36
\p1|fsm|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux28~0_combout\ = ( \p1|ir0|Q\(6) & ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( \p1|ir0|Q\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|Mux28~0_combout\);

-- Location: FF_X14_Y13_N26
\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

-- Location: FF_X14_Y10_N20
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: MLABCELL_X13_Y11_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( (\p1|fsm|y_Q.T2~q\ & \p1|fsm|Mux28~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: MLABCELL_X13_Y11_N33
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~11_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~11_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[0]~11_combout\,
	datad => \p1|regA|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: MLABCELL_X13_Y11_N36
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( !\p1|mux0|y[1]~14_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( !\p1|mux0|y[1]~14_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datab => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datac => \p1|regA|ALT_INV_Q\(1),
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: MLABCELL_X13_Y11_N39
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( \p1|regA|Q\(2) ) + ( !\p1|mux0|y[2]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~30\ ))
-- \p1|addsub0|Add0~34\ = CARRY(( \p1|regA|Q\(2) ) + ( !\p1|mux0|y[2]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[2]~17_combout\,
	datad => \p1|regA|ALT_INV_Q\(2),
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~33_sumout\,
	cout => \p1|addsub0|Add0~34\);

-- Location: LABCELL_X12_Y13_N3
\p1|fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gin~0_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(8) & \p1|fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Gin~0_combout\);

-- Location: FF_X13_Y11_N41
\p1|regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~33_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(2));

-- Location: FF_X13_Y10_N56
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: FF_X13_Y13_N25
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: MLABCELL_X13_Y11_N42
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|mux0|y[3]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~34\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|mux0|y[3]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[3]~20_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(3),
	cin => \p1|addsub0|Add0~34\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: FF_X13_Y11_N44
\p1|regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~17_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(3));

-- Location: MLABCELL_X13_Y10_N48
\p1|reg0|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg0|Q[3]~feeder_combout\);

-- Location: FF_X13_Y10_N49
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: LABCELL_X12_Y11_N45
\p1|mux0|y[0]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~42_combout\ = ( \p1|fsm|y_Q.T3~q\ & ( !\p1|ir0|Q[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|mux0|y[0]~42_combout\);

-- Location: FF_X13_Y11_N14
\p1|fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.TXX~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~q\);

-- Location: MLABCELL_X13_Y11_N21
\p1|fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~3_combout\ = ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & \p1|ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|Selector5~3_combout\);

-- Location: MLABCELL_X13_Y12_N45
\p1|fsm|Wr_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Wr_en~1_combout\ = ( !\p1|ir0|Q\(7) & ( \p1|ir0|Q\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Wr_en~1_combout\);

-- Location: FF_X12_Y12_N19
\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

-- Location: FF_X12_Y12_N8
\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

-- Location: MLABCELL_X13_Y11_N45
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|mux0|y[4]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|mux0|y[4]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[4]~23_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(4),
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: MLABCELL_X13_Y11_N48
\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( !\p1|mux0|y[5]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~6\ = CARRY(( !\p1|mux0|y[5]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[5]~26_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(5),
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~5_sumout\,
	cout => \p1|addsub0|Add0~6\);

-- Location: FF_X13_Y11_N50
\p1|regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~5_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(5));

-- Location: FF_X13_Y10_N50
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: FF_X14_Y13_N37
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: MLABCELL_X13_Y11_N51
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[6]~29_combout\,
	datad => \p1|regA|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: FF_X13_Y11_N52
\p1|regG|Q[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~9_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[6]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y11_N0
\p1|fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~4_combout\ = ( \p1|fsm|y_Q.T2~q\ & ( (!\p1|ir0|Q\(7) & ((\p1|ir0|Q\(6)))) # (\p1|ir0|Q\(7) & (!\p1|ir0|Q[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Selector5~4_combout\);

-- Location: FF_X14_Y11_N47
\p1|ir0|Q[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(4),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[4]~DUPLICATE_q\);

-- Location: FF_X14_Y11_N50
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(5),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: LABCELL_X14_Y11_N33
\p1|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~4_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & \p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~4_combout\);

-- Location: FF_X13_Y12_N34
\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

-- Location: FF_X13_Y12_N59
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: LABCELL_X12_Y13_N57
\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|ir0|Q\(1) & ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(0) & !\p1|ir0|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(2),
	datae => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector4~1_combout\);

-- Location: MLABCELL_X13_Y11_N27
\p1|fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~2_combout\ = ( \p1|fsm|Selector4~1_combout\ & ( ((\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~4_combout\)) # (\p1|fsm|Selector5~4_combout\) ) ) # ( !\p1|fsm|Selector4~1_combout\ & ( (\p1|decX|Mux0~4_combout\ & 
-- (((\p1|fsm|Selector5~4_combout\ & \p1|fsm|Wr_en~1_combout\)) # (\p1|fsm|Selector5~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|decX|ALT_INV_Mux0~4_combout\,
	datad => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~1_combout\,
	combout => \p1|fsm|Selector4~2_combout\);

-- Location: LABCELL_X14_Y11_N6
\p1|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~5_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~5_combout\);

-- Location: FF_X13_Y12_N35
\p1|ir0|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y12_N24
\p1|fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~2_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(0) & (!\p1|ir0|Q[2]~DUPLICATE_q\ & !\p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector2~2_combout\);

-- Location: MLABCELL_X13_Y11_N24
\p1|fsm|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~3_combout\ = ( \p1|fsm|Selector2~2_combout\ & ( ((\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~5_combout\)) # (\p1|fsm|Selector5~4_combout\) ) ) # ( !\p1|fsm|Selector2~2_combout\ & ( (\p1|decX|Mux0~5_combout\ & 
-- (((\p1|fsm|Selector5~4_combout\ & \p1|fsm|Wr_en~1_combout\)) # (\p1|fsm|Selector5~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|decX|ALT_INV_Mux0~5_combout\,
	datad => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~2_combout\,
	combout => \p1|fsm|Selector2~3_combout\);

-- Location: MLABCELL_X13_Y10_N54
\p1|reg0|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg0|Q[7]~feeder_combout\);

-- Location: FF_X13_Y10_N55
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: LABCELL_X12_Y10_N21
\p1|reg2|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg2|Q[7]~feeder_combout\);

-- Location: FF_X13_Y11_N35
\p1|regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~25_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(0));

-- Location: FF_X13_Y11_N38
\p1|regG|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y11_N18
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = (!\p1|regG|Q\(2) & (!\p1|regG|Q\(0) & !\p1|regG|Q[1]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|regG|ALT_INV_Q\(2),
	datac => \p1|regG|ALT_INV_Q\(0),
	datad => \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\,
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: LABCELL_X12_Y11_N57
\p1|fsm|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~2_combout\ = (\p1|fsm|Equal0~1_combout\ & \p1|fsm|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~0_combout\,
	combout => \p1|fsm|Equal0~2_combout\);

-- Location: LABCELL_X12_Y11_N36
\p1|mux0|y[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~9_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & \p1|fsm|y_Q.T3~q\) ) ) # ( !\p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\ $ (!\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|mux0|y[0]~9_combout\);

-- Location: LABCELL_X14_Y11_N9
\p1|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~3_combout\ = ( !\p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(3) & \p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~3_combout\);

-- Location: LABCELL_X14_Y10_N36
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~3_combout\ & ( ((!\p1|ir0|Q[8]~DUPLICATE_q\ & ((!\p1|ir0|Q\(7)))) # (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q\(7)))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~3_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111010010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: FF_X12_Y10_N23
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: LABCELL_X12_Y10_N15
\p1|reg1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg1|Q[7]~feeder_combout\);

-- Location: LABCELL_X14_Y10_N45
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~5_combout\ & ( ((!\p1|ir0|Q\(7) & ((!\p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~5_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111010111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~5_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: FF_X12_Y10_N17
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: MLABCELL_X13_Y10_N33
\p1|reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg4|Q[7]~feeder_combout\);

-- Location: LABCELL_X14_Y10_N39
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~0_combout\ & ( ((!\p1|ir0|Q[8]~DUPLICATE_q\ & ((!\p1|ir0|Q\(7)))) # (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q\(7)))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~0_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111010111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: FF_X13_Y10_N34
\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

-- Location: MLABCELL_X13_Y10_N3
\p1|reg5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg5|Q[7]~feeder_combout\);

-- Location: LABCELL_X14_Y11_N30
\p1|decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~1_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~1_combout\);

-- Location: LABCELL_X14_Y10_N42
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~1_combout\ & ( ((!\p1|ir0|Q\(7) & ((!\p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~1_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111010010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: FF_X13_Y10_N5
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: LABCELL_X14_Y11_N0
\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = ( !\p1|ir0|Q\(1) & ( \p1|ir0|Q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector5~0_combout\);

-- Location: LABCELL_X14_Y11_N24
\p1|mux0|y[0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~36_combout\ = ( !\p1|decX|Mux0~1_combout\ & ( !\p1|decX|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|mux0|y[0]~36_combout\);

-- Location: MLABCELL_X13_Y11_N3
\p1|fsm|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux0~0_combout\ = ( \p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(6) & ((!\p1|ir0|Q\(7)) # ((\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~0_combout\)))) # (\p1|ir0|Q\(6) & (((\p1|ir0|Q\(7))) # (\p1|ir0|Q[8]~DUPLICATE_q\))) ) ) # ( 
-- !\p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(6) $ (\p1|ir0|Q\(7))) # (\p1|ir0|Q[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101110111101110110111011110111011011101011011101101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|Mux0~0_combout\);

-- Location: LABCELL_X14_Y12_N27
\p1|fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~1_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(0) & (\p1|ir0|Q\(2) & !\p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector6~1_combout\);

-- Location: LABCELL_X14_Y12_N3
\p1|fsm|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~2_combout\ = ( \p1|fsm|Selector5~4_combout\ & ( ((\p1|decX|Mux0~1_combout\ & ((\p1|fsm|Selector5~3_combout\) # (\p1|fsm|Wr_en~1_combout\)))) # (\p1|fsm|Selector6~1_combout\) ) ) # ( !\p1|fsm|Selector5~4_combout\ & ( 
-- (\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|decX|ALT_INV_Mux0~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~4_combout\,
	combout => \p1|fsm|Selector6~2_combout\);

-- Location: LABCELL_X14_Y12_N42
\p1|mux0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~1_combout\ = ( !\p1|fsm|Selector6~2_combout\ & ( !\p1|fsm|Selector5~6_combout\ & ( (!\p1|fsm|Selector5~1_combout\) # ((!\p1|fsm|Mux0~0_combout\ & ((\p1|mux0|y[0]~36_combout\))) # (\p1|fsm|Mux0~0_combout\ & (!\p1|fsm|Selector5~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~36_combout\,
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Selector6~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~6_combout\,
	combout => \p1|mux0|y[0]~1_combout\);

-- Location: LABCELL_X14_Y11_N36
\p1|fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~2_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (((\p1|decX|Mux0~0_combout\)))) # (\p1|fsm|Mux0~0_combout\ & (\p1|fsm|Selector5~0_combout\ & (!\p1|ir0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000110111000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datab => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector5~2_combout\);

-- Location: LABCELL_X14_Y12_N12
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\ & ((\p1|decX|Mux0~1_combout\))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector5~0_combout\ & ( 
-- (\p1|fsm|Selector5~1_combout\ & (\p1|decX|Mux0~1_combout\ & !\p1|fsm|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000100010000001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datac => \p1|decX|ALT_INV_Mux0~1_combout\,
	datad => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: LABCELL_X14_Y12_N15
\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(0) & (\p1|ir0|Q\(2) & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector7~1_combout\);

-- Location: LABCELL_X14_Y11_N48
\p1|decX|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~2_combout\ = ( !\p1|ir0|Q\(3) & ( (\p1|ir0|Q[4]~DUPLICATE_q\ & \p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|decX|Mux0~2_combout\);

-- Location: LABCELL_X14_Y12_N0
\p1|fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~2_combout\ = ( \p1|decX|Mux0~2_combout\ & ( ((\p1|fsm|Selector5~4_combout\ & ((\p1|fsm|Selector7~1_combout\) # (\p1|fsm|Wr_en~1_combout\)))) # (\p1|fsm|Selector5~3_combout\) ) ) # ( !\p1|decX|Mux0~2_combout\ & ( 
-- (\p1|fsm|Selector7~1_combout\ & \p1|fsm|Selector5~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011011111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~2_combout\,
	combout => \p1|fsm|Selector7~2_combout\);

-- Location: LABCELL_X14_Y12_N48
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( \p1|fsm|Mux0~0_combout\ & ( (\p1|ir0|Q\(1) & (\p1|ir0|Q\(2) & !\p1|ir0|Q\(0))) ) ) ) # ( \p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Mux0~0_combout\ & ( \p1|decX|Mux0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: LABCELL_X14_Y12_N6
\p1|mux0|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~0_combout\ = ( \p1|fsm|Selector6~2_combout\ & ( \p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~6_combout\) ) ) ) # ( !\p1|fsm|Selector6~2_combout\ & ( \p1|fsm|Selector7~0_combout\ & ( 
-- (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~6_combout\) ) ) ) # ( \p1|fsm|Selector6~2_combout\ & ( !\p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~6_combout\) ) ) ) # ( !\p1|fsm|Selector6~2_combout\ & ( 
-- !\p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & (!\p1|fsm|Selector5~6_combout\ & ((\p1|fsm|Selector7~2_combout\) # (\p1|fsm|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~6_combout\,
	datae => \p1|fsm|ALT_INV_Selector6~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|mux0|y[0]~0_combout\);

-- Location: LABCELL_X14_Y10_N54
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~2_combout\ & ( ((!\p1|ir0|Q\(7) & ((!\p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~2_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111010010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~2_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: FF_X14_Y13_N44
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: MLABCELL_X13_Y13_N30
\p1|pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~1_sumout\ = SUM(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \p1|pc0|Add0~2\ = CARRY(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \p1|pc0|Add0~1_sumout\,
	cout => \p1|pc0|Add0~2\);

-- Location: LABCELL_X12_Y11_N54
\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( \p1|ir0|Q\(7) & ( !\p1|fsm|Selector10~0_combout\ ) ) # ( !\p1|ir0|Q\(7) & ( (!\p1|fsm|Selector10~0_combout\ & ((!\p1|fsm|y_Q.T1~DUPLICATE_q\) # ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q[8]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010101010101000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector10~0_combout\,
	datab => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector10~1_combout\);

-- Location: LABCELL_X12_Y11_N6
\p1|fsm|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~1_combout\ = ( \p1|fsm|Equal0~2_combout\ & ( \p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T3~q\ & !\p1|ir0|Q[8]~DUPLICATE_q\) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & (((\p1|fsm|y_Q.T3~q\)))) # 
-- (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|ir0|Q\(6) & ((\p1|fsm|y_Q.T1~DUPLICATE_q\)))) ) ) ) # ( \p1|fsm|Equal0~2_combout\ & ( !\p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(6) & ((!\p1|ir0|Q[8]~DUPLICATE_q\ & ((\p1|fsm|y_Q.T1~DUPLICATE_q\))) # (\p1|ir0|Q[8]~DUPLICATE_q\ & 
-- (\p1|fsm|y_Q.T3~q\)))) # (\p1|ir0|Q\(6) & (\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\))) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( !\p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(6) & ((!\p1|ir0|Q[8]~DUPLICATE_q\ & ((\p1|fsm|y_Q.T1~DUPLICATE_q\))) # 
-- (\p1|ir0|Q[8]~DUPLICATE_q\ & (\p1|fsm|y_Q.T3~q\)))) # (\p1|ir0|Q\(6) & (\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010110010000100101011001000110000001110100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Equal0~2_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector15~1_combout\);

-- Location: LABCELL_X14_Y11_N51
\p1|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~7_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & \p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~7_combout\);

-- Location: LABCELL_X10_Y11_N0
\p1|pc0|v[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~0_combout\ = ( \p1|fsm|Selector10~1_combout\ & ( (\p1|fsm|Selector15~1_combout\ & \p1|decX|Mux0~7_combout\) ) ) # ( !\p1|fsm|Selector10~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector15~1_combout\,
	datac => \p1|decX|ALT_INV_Mux0~7_combout\,
	dataf => \p1|fsm|ALT_INV_Selector10~1_combout\,
	combout => \p1|pc0|v[0]~0_combout\);

-- Location: FF_X13_Y13_N31
\p1|pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~1_sumout\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(0));

-- Location: MLABCELL_X13_Y13_N33
\p1|pc0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~5_sumout\ = SUM(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))
-- \p1|pc0|Add0~6\ = CARRY(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(1),
	cin => \p1|pc0|Add0~2\,
	sumout => \p1|pc0|Add0~5_sumout\,
	cout => \p1|pc0|Add0~6\);

-- Location: FF_X13_Y13_N34
\p1|pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(1));

-- Location: MLABCELL_X13_Y13_N36
\p1|pc0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~9_sumout\ = SUM(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))
-- \p1|pc0|Add0~10\ = CARRY(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(2),
	cin => \p1|pc0|Add0~6\,
	sumout => \p1|pc0|Add0~9_sumout\,
	cout => \p1|pc0|Add0~10\);

-- Location: FF_X13_Y13_N38
\p1|pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(2));

-- Location: MLABCELL_X13_Y13_N39
\p1|pc0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~13_sumout\ = SUM(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))
-- \p1|pc0|Add0~14\ = CARRY(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(3),
	cin => \p1|pc0|Add0~10\,
	sumout => \p1|pc0|Add0~13_sumout\,
	cout => \p1|pc0|Add0~14\);

-- Location: FF_X13_Y13_N40
\p1|pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~13_sumout\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(3));

-- Location: MLABCELL_X13_Y13_N42
\p1|pc0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~17_sumout\ = SUM(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))
-- \p1|pc0|Add0~18\ = CARRY(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(4),
	cin => \p1|pc0|Add0~14\,
	sumout => \p1|pc0|Add0~17_sumout\,
	cout => \p1|pc0|Add0~18\);

-- Location: FF_X13_Y13_N44
\p1|pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~17_sumout\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(4));

-- Location: MLABCELL_X13_Y13_N45
\p1|pc0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~21_sumout\ = SUM(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~18\ ))
-- \p1|pc0|Add0~22\ = CARRY(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(5),
	cin => \p1|pc0|Add0~18\,
	sumout => \p1|pc0|Add0~21_sumout\,
	cout => \p1|pc0|Add0~22\);

-- Location: FF_X13_Y13_N46
\p1|pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(5));

-- Location: MLABCELL_X13_Y13_N48
\p1|pc0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~25_sumout\ = SUM(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))
-- \p1|pc0|Add0~26\ = CARRY(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(6),
	cin => \p1|pc0|Add0~22\,
	sumout => \p1|pc0|Add0~25_sumout\,
	cout => \p1|pc0|Add0~26\);

-- Location: FF_X13_Y13_N50
\p1|pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~25_sumout\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(6));

-- Location: MLABCELL_X13_Y13_N51
\p1|pc0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~29_sumout\ = SUM(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))
-- \p1|pc0|Add0~30\ = CARRY(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(7),
	cin => \p1|pc0|Add0~26\,
	sumout => \p1|pc0|Add0~29_sumout\,
	cout => \p1|pc0|Add0~30\);

-- Location: FF_X13_Y13_N52
\p1|pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~29_sumout\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(7));

-- Location: LABCELL_X14_Y13_N42
\p1|mux0|y[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~30_combout\ = ( \p1|reg6|Q\(7) & ( \p1|pc0|v\(7) & ( ((!\p1|mux0|y[0]~0_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[0]~0_combout\ & ((\p1|reg5|Q\(7))))) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(7) & ( \p1|pc0|v\(7) & ( 
-- (!\p1|mux0|y[0]~1_combout\ & ((!\p1|mux0|y[0]~0_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[0]~0_combout\ & ((\p1|reg5|Q\(7)))))) # (\p1|mux0|y[0]~1_combout\ & (((!\p1|mux0|y[0]~0_combout\)))) ) ) ) # ( \p1|reg6|Q\(7) & ( !\p1|pc0|v\(7) & ( 
-- (!\p1|mux0|y[0]~1_combout\ & ((!\p1|mux0|y[0]~0_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[0]~0_combout\ & ((\p1|reg5|Q\(7)))))) # (\p1|mux0|y[0]~1_combout\ & (((\p1|mux0|y[0]~0_combout\)))) ) ) ) # ( !\p1|reg6|Q\(7) & ( !\p1|pc0|v\(7) & ( 
-- (!\p1|mux0|y[0]~1_combout\ & ((!\p1|mux0|y[0]~0_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[0]~0_combout\ & ((\p1|reg5|Q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(7),
	datab => \p1|reg5|ALT_INV_Q\(7),
	datac => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(7),
	dataf => \p1|pc0|ALT_INV_v\(7),
	combout => \p1|mux0|y[7]~30_combout\);

-- Location: LABCELL_X14_Y10_N57
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( ((!\p1|ir0|Q\(7) & ((!\p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|mux0|y[0]~9_combout\) 
-- ) ) ) # ( !\p1|fsm|Selector19~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( \p1|mux0|y[0]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111010111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Selector19~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: FF_X14_Y13_N13
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: MLABCELL_X13_Y12_N57
\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( !\p1|ir0|Q\(0) & ( (!\p1|ir0|Q[2]~DUPLICATE_q\ & (\p1|ir0|Q\(7) & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector3~1_combout\);

-- Location: MLABCELL_X13_Y12_N21
\p1|fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~2_combout\ = ( \p1|fsm|Selector3~1_combout\ & ( ((\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~3_combout\)) # (\p1|fsm|Selector5~4_combout\) ) ) # ( !\p1|fsm|Selector3~1_combout\ & ( (\p1|decX|Mux0~3_combout\ & 
-- (((\p1|fsm|Wr_en~1_combout\ & \p1|fsm|Selector5~4_combout\)) # (\p1|fsm|Selector5~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datab => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|decX|ALT_INV_Mux0~3_combout\,
	dataf => \p1|fsm|ALT_INV_Selector3~1_combout\,
	combout => \p1|fsm|Selector3~2_combout\);

-- Location: LABCELL_X14_Y11_N12
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = ( !\p1|ir0|Q\(1) & ( !\p1|ir0|Q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: LABCELL_X14_Y11_N15
\p1|mux0|y[0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~40_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( (!\p1|ir0|Q\(0) & ((!\p1|ir0|Q\(1)) # (\p1|ir0|Q\(2)))) ) ) # ( !\p1|fsm|Selector2~0_combout\ & ( (!\p1|ir0|Q\(1)) # ((\p1|ir0|Q\(0)) # (\p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|mux0|y[0]~40_combout\);

-- Location: MLABCELL_X13_Y12_N12
\p1|mux0|y[0]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~56_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (!\p1|fsm|Selector3~2_combout\ & (!\p1|fsm|Selector2~3_combout\ & ((!\p1|fsm|Selector5~1_combout\) # ((!\p1|decX|Mux0~5_combout\ & !\p1|decX|Mux0~3_combout\))))) ) ) # ( \p1|fsm|Mux0~0_combout\ & 
-- ( (!\p1|fsm|Selector3~2_combout\ & (((!\p1|fsm|Selector2~3_combout\ & ((!\p1|fsm|Selector5~1_combout\) # (\p1|mux0|y[0]~40_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101010000000101010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datab => \p1|decX|ALT_INV_Mux0~5_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~40_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datag => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|mux0|y[0]~56_combout\);

-- Location: LABCELL_X14_Y13_N12
\p1|mux0|y[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~31_combout\ = ( \p1|reg3|Q\(7) & ( \p1|mux0|y[0]~56_combout\ & ( (\p1|mux0|y[7]~30_combout\) # (\p1|mux0|y[0]~2_combout\) ) ) ) # ( !\p1|reg3|Q\(7) & ( \p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & \p1|mux0|y[7]~30_combout\) ) ) 
-- ) # ( \p1|reg3|Q\(7) & ( !\p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(7))) ) ) ) # ( !\p1|reg3|Q\(7) & ( !\p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & 
-- ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(7),
	datab => \p1|reg1|ALT_INV_Q\(7),
	datac => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datad => \p1|mux0|ALT_INV_y[7]~30_combout\,
	datae => \p1|reg3|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[0]~56_combout\,
	combout => \p1|mux0|y[7]~31_combout\);

-- Location: LABCELL_X14_Y13_N48
\p1|mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~32_combout\ = ( \p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[0]~8_combout\) # (\p1|reg0|Q\(7)) ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|q_a\(7)))) # (\p1|mux0|y[0]~8_combout\ & (\p1|regG|Q\(7))) ) ) ) # ( \p1|mux0|y[0]~10_combout\ & ( !\p1|mux0|y[7]~31_combout\ & ( (\p1|reg0|Q\(7) & \p1|mux0|y[0]~8_combout\) ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & 
-- ( !\p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(7)))) # (\p1|mux0|y[0]~8_combout\ & (\p1|regG|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(7),
	datab => \p1|regG|ALT_INV_Q\(7),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \p1|mux0|ALT_INV_y[0]~8_combout\,
	datae => \p1|mux0|ALT_INV_y[0]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[7]~31_combout\,
	combout => \p1|mux0|y[7]~32_combout\);

-- Location: FF_X14_Y13_N50
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: MLABCELL_X13_Y11_N54
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~10\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[7]~32_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(7),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

-- Location: FF_X13_Y11_N56
\p1|regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~13_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(7));

-- Location: FF_X13_Y11_N47
\p1|regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~1_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(4));

-- Location: FF_X13_Y11_N53
\p1|regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~9_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(6));

-- Location: FF_X14_Y10_N2
\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

-- Location: MLABCELL_X13_Y11_N57
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|mux0|y[8]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[8]~35_combout\,
	datab => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~21_sumout\);

-- Location: FF_X13_Y11_N59
\p1|regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~21_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(8));

-- Location: MLABCELL_X13_Y11_N15
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|regG|Q\(8) & ( !\p1|regG|Q\(5) & ( (!\p1|regG|Q\(7) & (!\p1|regG|Q\(4) & (!\p1|regG|Q\(3) & !\p1|regG|Q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(7),
	datab => \p1|regG|ALT_INV_Q\(4),
	datac => \p1|regG|ALT_INV_Q\(3),
	datad => \p1|regG|ALT_INV_Q\(6),
	datae => \p1|regG|ALT_INV_Q\(8),
	dataf => \p1|regG|ALT_INV_Q\(5),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y11_N9
\p1|fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~1_combout\ = ( \p1|ir0|Q\(8) & ( \p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(7)) # ((!\p1|ir0|Q\(6) & !\p1|fsm|Equal0~0_combout\)))) ) ) ) # ( !\p1|ir0|Q\(8) & ( \p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(6) & 
-- \p1|fsm|y_Q.T1~q\) ) ) ) # ( \p1|ir0|Q\(8) & ( !\p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (!\p1|ir0|Q\(7)))) ) ) ) # ( !\p1|ir0|Q\(8) & ( !\p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(6) & \p1|fsm|y_Q.T1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001100110010001000100010001000100011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|Selector5~1_combout\);

-- Location: MLABCELL_X13_Y13_N6
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( \p1|fsm|Mux0~0_combout\ & ( (\p1|ir0|Q\(1) & (!\p1|ir0|Q\(2) & \p1|ir0|Q\(0))) ) ) ) # ( \p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Mux0~0_combout\ & ( \p1|decX|Mux0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~4_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: LABCELL_X14_Y12_N18
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( \p1|fsm|Mux0~0_combout\ & ( (\p1|ir0|Q\(1) & (!\p1|ir0|Q\(2) & !\p1|ir0|Q\(0))) ) ) ) # ( \p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Mux0~0_combout\ & ( \p1|decX|Mux0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~3_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: MLABCELL_X13_Y13_N12
\p1|mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~2_combout\ = ( \p1|fsm|Selector3~2_combout\ & ( \p1|fsm|Selector3~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( !\p1|fsm|Selector3~2_combout\ & ( \p1|fsm|Selector3~0_combout\ & ( 
-- (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( \p1|fsm|Selector3~2_combout\ & ( !\p1|fsm|Selector3~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( !\p1|fsm|Selector3~2_combout\ & ( 
-- !\p1|fsm|Selector3~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector2~3_combout\ & ((\p1|fsm|Selector4~0_combout\) # (\p1|fsm|Selector4~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector3~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|mux0|y[0]~2_combout\);

-- Location: LABCELL_X12_Y10_N18
\p1|reg2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg2|Q[6]~feeder_combout\);

-- Location: FF_X12_Y10_N20
\p1|reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

-- Location: FF_X12_Y10_N14
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: FF_X14_Y13_N7
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: MLABCELL_X13_Y10_N0
\p1|reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg5|Q[6]~feeder_combout\);

-- Location: FF_X13_Y10_N1
\p1|reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

-- Location: MLABCELL_X13_Y10_N30
\p1|reg4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg4|Q[6]~feeder_combout\);

-- Location: FF_X13_Y10_N31
\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

-- Location: FF_X14_Y13_N32
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: LABCELL_X14_Y13_N30
\p1|mux0|y[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~27_combout\ = ( \p1|reg6|Q\(6) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(6)) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(6) & ( \p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & \p1|reg5|Q\(6)) ) ) ) # ( \p1|reg6|Q\(6) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(6)))) # (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(6))) ) ) ) # ( !\p1|reg6|Q\(6) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(6)))) # 
-- (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datab => \p1|pc0|ALT_INV_v\(6),
	datac => \p1|reg5|ALT_INV_Q\(6),
	datad => \p1|reg4|ALT_INV_Q\(6),
	datae => \p1|reg6|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[6]~27_combout\);

-- Location: LABCELL_X14_Y13_N6
\p1|mux0|y[6]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~28_combout\ = ( \p1|reg3|Q\(6) & ( \p1|mux0|y[6]~27_combout\ & ( ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(6)))) # (\p1|mux0|y[0]~56_combout\) ) ) ) # ( !\p1|reg3|Q\(6) & ( 
-- \p1|mux0|y[6]~27_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & (((\p1|mux0|y[0]~56_combout\) # (\p1|reg1|Q\(6))))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(6) & ((!\p1|mux0|y[0]~56_combout\)))) ) ) ) # ( \p1|reg3|Q\(6) & ( !\p1|mux0|y[6]~27_combout\ & ( 
-- (!\p1|mux0|y[0]~2_combout\ & (((\p1|reg1|Q\(6) & !\p1|mux0|y[0]~56_combout\)))) # (\p1|mux0|y[0]~2_combout\ & (((\p1|mux0|y[0]~56_combout\)) # (\p1|reg2|Q\(6)))) ) ) ) # ( !\p1|reg3|Q\(6) & ( !\p1|mux0|y[6]~27_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & 
-- ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datab => \p1|reg2|ALT_INV_Q\(6),
	datac => \p1|reg1|ALT_INV_Q\(6),
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[6]~27_combout\,
	combout => \p1|mux0|y[6]~28_combout\);

-- Location: MLABCELL_X13_Y10_N57
\p1|reg0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg0|Q[6]~feeder_combout\);

-- Location: FF_X13_Y10_N58
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: LABCELL_X14_Y13_N36
\p1|mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~29_combout\ = ( \p1|mux0|y[0]~8_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( \p1|reg0|Q\(6) ) ) ) # ( !\p1|mux0|y[0]~8_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[6]~28_combout\ ) ) ) # ( \p1|mux0|y[0]~8_combout\ & ( 
-- !\p1|mux0|y[0]~10_combout\ & ( \p1|regG|Q[6]~DUPLICATE_q\ ) ) ) # ( !\p1|mux0|y[0]~8_combout\ & ( !\p1|mux0|y[0]~10_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\,
	datab => \p1|mux0|ALT_INV_y[6]~28_combout\,
	datac => \p1|reg0|ALT_INV_Q\(6),
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \p1|mux0|ALT_INV_y[0]~8_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~10_combout\,
	combout => \p1|mux0|y[6]~29_combout\);

-- Location: FF_X13_Y9_N31
\p1|regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(6));

-- Location: LABCELL_X12_Y13_N42
\p1|regDout|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|regDout|Q[1]~feeder_combout\);

-- Location: FF_X12_Y13_N43
\p1|regDout|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q[1]~DUPLICATE_q\);

-- Location: FF_X12_Y13_N47
\p1|regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(2));

-- Location: LABCELL_X12_Y13_N6
\p1|regDout|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|regDout|Q[3]~feeder_combout\);

-- Location: FF_X12_Y13_N7
\p1|regDout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(3));

-- Location: FF_X12_Y11_N13
\p1|regDout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(4));

-- Location: FF_X12_Y13_N53
\p1|regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(5));

-- Location: LABCELL_X12_Y13_N24
\p1|regDout|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|regDout|Q[6]~feeder_combout\);

-- Location: FF_X12_Y13_N25
\p1|regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(6));

-- Location: LABCELL_X12_Y13_N27
\p1|regDout|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|regDout|Q[7]~feeder_combout\);

-- Location: FF_X12_Y13_N29
\p1|regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(7));

-- Location: LABCELL_X12_Y13_N48
\p1|regDout|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~35_combout\,
	combout => \p1|regDout|Q[8]~feeder_combout\);

-- Location: FF_X12_Y13_N49
\p1|regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(8));

-- Location: M10K_X11_Y12_N0
\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400078001BD000D9001B8000E10000700002000600002F00002000580009100153000800005800003000500000100048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram128x9.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram128x9:m0|altsyncram:altsyncram_component|altsyncram_o324:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X12_Y10_N27
\p1|reg1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg1|Q[5]~feeder_combout\);

-- Location: FF_X12_Y10_N28
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: LABCELL_X12_Y10_N9
\p1|reg4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg4|Q[5]~feeder_combout\);

-- Location: FF_X12_Y10_N10
\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

-- Location: FF_X13_Y10_N28
\p1|reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

-- Location: FF_X12_Y12_N44
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: LABCELL_X12_Y12_N42
\p1|mux0|y[5]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~24_combout\ = ( \p1|reg6|Q\(5) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(5)) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(5) & ( \p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & \p1|reg5|Q\(5)) ) ) ) # ( \p1|reg6|Q\(5) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(5)))) # (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(5))) ) ) ) # ( !\p1|reg6|Q\(5) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(5)))) # 
-- (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(5),
	datab => \p1|reg4|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(5),
	datae => \p1|reg6|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[5]~24_combout\);

-- Location: LABCELL_X12_Y10_N45
\p1|reg2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg2|Q[5]~feeder_combout\);

-- Location: FF_X12_Y10_N47
\p1|reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

-- Location: FF_X12_Y12_N13
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: LABCELL_X12_Y12_N12
\p1|mux0|y[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~25_combout\ = ( \p1|reg3|Q\(5) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|mux0|y[0]~56_combout\) # (\p1|reg2|Q\(5)) ) ) ) # ( !\p1|reg3|Q\(5) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|reg2|Q\(5) & !\p1|mux0|y[0]~56_combout\) ) ) ) # ( \p1|reg3|Q\(5) 
-- & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & (\p1|reg1|Q\(5))) # (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[5]~24_combout\))) ) ) ) # ( !\p1|reg3|Q\(5) & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & (\p1|reg1|Q\(5))) # 
-- (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[5]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(5),
	datab => \p1|mux0|ALT_INV_y[5]~24_combout\,
	datac => \p1|reg2|ALT_INV_Q\(5),
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[0]~2_combout\,
	combout => \p1|mux0|y[5]~25_combout\);

-- Location: LABCELL_X12_Y12_N18
\p1|mux0|y[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~26_combout\ = ( \p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( \p1|reg0|Q\(5) ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( \p1|regG|Q\(5) ) ) ) # ( \p1|mux0|y[0]~10_combout\ & ( !\p1|mux0|y[0]~8_combout\ 
-- & ( \p1|mux0|y[5]~25_combout\ ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(5),
	datab => \p1|reg0|ALT_INV_Q\(5),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \p1|mux0|ALT_INV_y[5]~25_combout\,
	datae => \p1|mux0|ALT_INV_y[0]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~8_combout\,
	combout => \p1|mux0|y[5]~26_combout\);

-- Location: FF_X12_Y11_N10
\p1|regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(5));

-- Location: FF_X13_Y10_N16
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: FF_X12_Y10_N26
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: FF_X12_Y10_N44
\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

-- Location: FF_X13_Y10_N26
\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

-- Location: FF_X12_Y10_N7
\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

-- Location: FF_X12_Y12_N2
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: LABCELL_X12_Y12_N0
\p1|mux0|y[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~21_combout\ = ( \p1|reg6|Q\(4) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(4)) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(4) & ( \p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & \p1|reg5|Q\(4)) ) ) ) # ( \p1|reg6|Q\(4) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(4)))) # (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(4))) ) ) ) # ( !\p1|reg6|Q\(4) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & ((\p1|reg4|Q\(4)))) # 
-- (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datab => \p1|reg5|ALT_INV_Q\(4),
	datac => \p1|pc0|ALT_INV_v\(4),
	datad => \p1|reg4|ALT_INV_Q\(4),
	datae => \p1|reg6|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[4]~21_combout\);

-- Location: FF_X12_Y12_N37
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: LABCELL_X12_Y12_N36
\p1|mux0|y[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~22_combout\ = ( \p1|reg3|Q\(4) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|mux0|y[0]~56_combout\) # (\p1|reg2|Q\(4)) ) ) ) # ( !\p1|reg3|Q\(4) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|reg2|Q\(4) & !\p1|mux0|y[0]~56_combout\) ) ) ) # ( \p1|reg3|Q\(4) 
-- & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & (\p1|reg1|Q\(4))) # (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[4]~21_combout\))) ) ) ) # ( !\p1|reg3|Q\(4) & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & (\p1|reg1|Q\(4))) # 
-- (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[4]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(4),
	datab => \p1|reg2|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[4]~21_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[0]~2_combout\,
	combout => \p1|mux0|y[4]~22_combout\);

-- Location: LABCELL_X12_Y12_N6
\p1|mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~23_combout\ = ( \p1|mux0|y[4]~22_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( (!\p1|mux0|y[0]~10_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[0]~10_combout\ & ((\p1|reg0|Q\(4)))) ) ) ) # ( !\p1|mux0|y[4]~22_combout\ & ( \p1|mux0|y[0]~8_combout\ & 
-- ( (!\p1|mux0|y[0]~10_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[0]~10_combout\ & ((\p1|reg0|Q\(4)))) ) ) ) # ( \p1|mux0|y[4]~22_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( (\p1|mux0|y[0]~10_combout\) # (\m0|altsyncram_component|auto_generated|q_a\(4)) ) ) 
-- ) # ( !\p1|mux0|y[4]~22_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( (\m0|altsyncram_component|auto_generated|q_a\(4) & !\p1|mux0|y[0]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \p1|regG|ALT_INV_Q\(4),
	datac => \p1|reg0|ALT_INV_Q\(4),
	datad => \p1|mux0|ALT_INV_y[0]~10_combout\,
	datae => \p1|mux0|ALT_INV_y[4]~22_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~8_combout\,
	combout => \p1|mux0|y[4]~23_combout\);

-- Location: FF_X12_Y11_N35
\p1|regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(4));

-- Location: FF_X14_Y11_N41
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: LABCELL_X14_Y11_N57
\p1|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~0_combout\ = ( \p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(3) & !\p1|ir0|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~0_combout\);

-- Location: MLABCELL_X13_Y12_N54
\p1|fsm|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~5_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(1) & (\p1|ir0|Q[2]~DUPLICATE_q\ & !\p1|ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector5~5_combout\);

-- Location: MLABCELL_X13_Y12_N18
\p1|fsm|Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~6_combout\ = ( \p1|fsm|Selector5~4_combout\ & ( ((\p1|decX|Mux0~0_combout\ & ((\p1|fsm|Wr_en~1_combout\) # (\p1|fsm|Selector5~3_combout\)))) # (\p1|fsm|Selector5~5_combout\) ) ) # ( !\p1|fsm|Selector5~4_combout\ & ( 
-- (\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datab => \p1|fsm|ALT_INV_Wr_en~1_combout\,
	datac => \p1|decX|ALT_INV_Mux0~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~5_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~4_combout\,
	combout => \p1|fsm|Selector5~6_combout\);

-- Location: LABCELL_X14_Y11_N3
\p1|mux0|y[0]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~43_combout\ = ( \p1|ir0|Q\(0) & ( (\p1|ir0|Q\(1) & !\p1|ir0|Q\(2)) ) ) # ( !\p1|ir0|Q\(0) & ( \p1|fsm|Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|fsm|ALT_INV_Selector5~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|mux0|y[0]~43_combout\);

-- Location: MLABCELL_X13_Y12_N36
\p1|mux0|y[0]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~44_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (((\p1|fsm|Selector5~1_combout\ & ((\p1|decX|Mux0~0_combout\) # (\p1|decX|Mux0~4_combout\)))) # (\p1|fsm|Selector4~2_combout\)) # (\p1|fsm|Selector5~6_combout\) ) ) # ( \p1|fsm|Mux0~0_combout\ & ( 
-- ((((\p1|mux0|y[0]~43_combout\ & \p1|fsm|Selector5~1_combout\)) # (\p1|fsm|Selector4~2_combout\))) # (\p1|fsm|Selector5~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101111111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~6_combout\,
	datab => \p1|decX|ALT_INV_Mux0~4_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~43_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|mux0|y[0]~44_combout\);

-- Location: MLABCELL_X13_Y12_N9
\p1|mux0|y[0]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~41_combout\ = ( \p1|mux0|y[0]~44_combout\ & ( \p1|mux0|y[0]~56_combout\ & ( (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T3~q\)) ) ) ) # ( !\p1|mux0|y[0]~44_combout\ & ( \p1|mux0|y[0]~56_combout\ & ( ((!\p1|fsm|y_Q.T3~q\) # (!\p1|ir0|Q\(8) 
-- $ (\p1|ir0|Q\(6)))) # (\p1|ir0|Q\(7)) ) ) ) # ( \p1|mux0|y[0]~44_combout\ & ( !\p1|mux0|y[0]~56_combout\ & ( (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T3~q\)) ) ) ) # ( !\p1|mux0|y[0]~44_combout\ & ( !\p1|mux0|y[0]~56_combout\ & ( (!\p1|ir0|Q\(8) & 
-- (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011111111101101110000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datae => \p1|mux0|ALT_INV_y[0]~44_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~56_combout\,
	combout => \p1|mux0|y[0]~41_combout\);

-- Location: LABCELL_X14_Y11_N39
\p1|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~6_combout\ = ( !\p1|ir0|Q\(5) & ( (!\p1|ir0|Q[4]~DUPLICATE_q\ & !\p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q[4]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~6_combout\);

-- Location: LABCELL_X14_Y11_N27
\p1|fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~2_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( !\p1|ir0|Q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector1~2_combout\);

-- Location: LABCELL_X14_Y11_N18
\p1|fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~1_combout\ = ( \p1|decX|Mux0~6_combout\ & ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector5~4_combout\ & ((!\p1|ir0|Q\(7) & ((\p1|ir0|Q\(8)))) # (\p1|ir0|Q\(7) & (!\p1|ir0|Q\(0))))) ) ) ) # ( !\p1|decX|Mux0~6_combout\ & ( 
-- \p1|fsm|Selector2~0_combout\ & ( (\p1|ir0|Q\(7) & (!\p1|ir0|Q\(0) & \p1|fsm|Selector5~4_combout\)) ) ) ) # ( \p1|decX|Mux0~6_combout\ & ( !\p1|fsm|Selector2~0_combout\ & ( (!\p1|ir0|Q\(7) & (\p1|ir0|Q\(8) & \p1|fsm|Selector5~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000010001000000000001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datae => \p1|decX|ALT_INV_Mux0~6_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector1~1_combout\);

-- Location: LABCELL_X14_Y11_N42
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( !\p1|fsm|Selector1~2_combout\ & ( \p1|fsm|Selector1~1_combout\ & ( (!\p1|decX|Mux0~6_combout\ & (\p1|fsm|Mux0~0_combout\ & \p1|fsm|Selector5~1_combout\)) ) ) ) # ( \p1|fsm|Selector1~2_combout\ & ( 
-- !\p1|fsm|Selector1~1_combout\ & ( (!\p1|decX|Mux0~6_combout\ & ((!\p1|fsm|Mux0~0_combout\) # ((!\p1|fsm|Selector5~1_combout\)))) # (\p1|decX|Mux0~6_combout\ & (((!\p1|fsm|Selector5~3_combout\ & !\p1|fsm|Selector5~1_combout\)))) ) ) ) # ( 
-- !\p1|fsm|Selector1~2_combout\ & ( !\p1|fsm|Selector1~1_combout\ & ( (!\p1|decX|Mux0~6_combout\) # ((!\p1|fsm|Selector5~3_combout\ & ((!\p1|fsm|Selector5~1_combout\) # (\p1|fsm|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010111010111110101000100000000000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~6_combout\,
	datab => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Selector1~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~1_combout\,
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: LABCELL_X12_Y11_N48
\p1|dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|dexY|Mux0~0_combout\ = ( \p1|ir0|Q\(1) & ( (\p1|ir0|Q\(0) & \p1|ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|dexY|Mux0~0_combout\);

-- Location: LABCELL_X12_Y11_N3
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q\(7) & (\p1|ir0|Q\(6) & (\p1|decX|Mux0~7_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q\(7) & (((!\p1|ir0|Q[8]~DUPLICATE_q\)))) ) ) # ( !\p1|dexY|Mux0~0_combout\ & ( 
-- (\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7) & (\p1|decX|Mux0~7_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000110011000001000011001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|decX|ALT_INV_Mux0~7_combout\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|dexY|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: LABCELL_X12_Y11_N30
\p1|fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux7~0_combout\ = ( \p1|fsm|Equal0~2_combout\ & ( \p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q\(7)) # ((!\p1|ir0|Q[8]~DUPLICATE_q\ & \p1|decX|Mux0~7_combout\)) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( \p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q\(7)) # 
-- ((!\p1|ir0|Q[8]~DUPLICATE_q\ & (\p1|decX|Mux0~7_combout\)) # (\p1|ir0|Q[8]~DUPLICATE_q\ & ((!\p1|ir0|Q\(6))))) ) ) ) # ( \p1|fsm|Equal0~2_combout\ & ( !\p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & ((!\p1|ir0|Q\(7) & ((\p1|ir0|Q\(6)))) # 
-- (\p1|ir0|Q\(7) & (\p1|decX|Mux0~7_combout\)))) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( !\p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & ((!\p1|ir0|Q\(7) & ((\p1|ir0|Q\(6)))) # (\p1|ir0|Q\(7) & (\p1|decX|Mux0~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001011111111011100101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|decX|ALT_INV_Mux0~7_combout\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|fsm|ALT_INV_Equal0~2_combout\,
	dataf => \p1|dexY|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Mux7~0_combout\);

-- Location: LABCELL_X12_Y11_N15
\p1|fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~1_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( \p1|fsm|Mux7~0_combout\ & ( (!\p1|fsm|y_Q.T2~q\ & (!\p1|fsm|y_Q.T1~DUPLICATE_q\ & \p1|fsm|y_Q.T0~q\)) ) ) ) # ( !\p1|fsm|Selector8~0_combout\ & ( \p1|fsm|Mux7~0_combout\ & ( 
-- (!\p1|fsm|y_Q.T1~DUPLICATE_q\ & \p1|fsm|y_Q.T0~q\) ) ) ) # ( \p1|fsm|Selector8~0_combout\ & ( !\p1|fsm|Mux7~0_combout\ & ( (!\p1|fsm|y_Q.T2~q\ & \p1|fsm|y_Q.T0~q\) ) ) ) # ( !\p1|fsm|Selector8~0_combout\ & ( !\p1|fsm|Mux7~0_combout\ & ( \p1|fsm|y_Q.T0~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000000000111100000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datae => \p1|fsm|ALT_INV_Selector8~0_combout\,
	dataf => \p1|fsm|ALT_INV_Mux7~0_combout\,
	combout => \p1|fsm|Selector8~1_combout\);

-- Location: MLABCELL_X13_Y10_N9
\p1|mux0|y[0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~39_combout\ = ( !\p1|ir0|Q\(0) & ( \p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(2)) # (!\p1|ir0|Q\(1)) ) ) ) # ( \p1|ir0|Q\(0) & ( !\p1|fsm|Selector5~0_combout\ ) ) # ( !\p1|ir0|Q\(0) & ( !\p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(2)) # 
-- (!\p1|ir0|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111111111111111111110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	datae => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|mux0|y[0]~39_combout\);

-- Location: LABCELL_X14_Y12_N30
\p1|mux0|y[0]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~48_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (!\p1|fsm|Selector7~2_combout\ & (!\p1|fsm|Selector6~2_combout\ & ((!\p1|fsm|Selector5~1_combout\) # ((!\p1|decX|Mux0~2_combout\ & !\p1|decX|Mux0~1_combout\))))) ) ) # ( \p1|fsm|Mux0~0_combout\ & 
-- ( (!\p1|fsm|Selector7~2_combout\ & (((!\p1|fsm|Selector6~2_combout\ & ((!\p1|fsm|Selector5~1_combout\) # (\p1|mux0|y[0]~39_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101010000000101010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datab => \p1|decX|ALT_INV_Mux0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~39_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|mux0|y[0]~48_combout\);

-- Location: MLABCELL_X13_Y13_N18
\p1|mux0|y[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~8_combout\ = ( \p1|fsm|Selector8~1_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (!\p1|fsm|Selector1~0_combout\ & (((\p1|mux0|y[0]~41_combout\)))) # (\p1|fsm|Selector1~0_combout\ & (\p1|mux0|y[0]~42_combout\ & (\p1|ir0|Q\(7)))) ) ) ) # ( 
-- !\p1|fsm|Selector8~1_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (\p1|mux0|y[0]~42_combout\ & \p1|ir0|Q\(7)) ) ) ) # ( \p1|fsm|Selector8~1_combout\ & ( !\p1|mux0|y[0]~48_combout\ & ( (\p1|mux0|y[0]~42_combout\ & \p1|ir0|Q\(7)) ) ) ) # ( 
-- !\p1|fsm|Selector8~1_combout\ & ( !\p1|mux0|y[0]~48_combout\ & ( (\p1|mux0|y[0]~42_combout\ & \p1|ir0|Q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010000111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~42_combout\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|mux0|ALT_INV_y[0]~41_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector8~1_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~48_combout\,
	combout => \p1|mux0|y[0]~8_combout\);

-- Location: LABCELL_X12_Y10_N30
\p1|reg2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg2|Q[3]~feeder_combout\);

-- Location: FF_X12_Y10_N31
\p1|reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

-- Location: LABCELL_X12_Y10_N12
\p1|reg1|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg1|Q[3]~feeder_combout\);

-- Location: FF_X12_Y10_N13
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: FF_X13_Y13_N1
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: FF_X13_Y10_N43
\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: FF_X12_Y10_N55
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: FF_X14_Y12_N56
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: LABCELL_X14_Y12_N54
\p1|mux0|y[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~18_combout\ = ( \p1|reg6|Q\(3) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|mux0|y[0]~1_combout\) # (\p1|reg5|Q\(3)) ) ) ) # ( !\p1|reg6|Q\(3) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(3) & !\p1|mux0|y[0]~1_combout\) ) ) ) # ( \p1|reg6|Q\(3) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(3))) # (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(3)))) ) ) ) # ( !\p1|reg6|Q\(3) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(3))) # 
-- (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(3),
	datab => \p1|reg4|ALT_INV_Q\(3),
	datac => \p1|pc0|ALT_INV_v\(3),
	datad => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datae => \p1|reg6|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[3]~18_combout\);

-- Location: MLABCELL_X13_Y13_N0
\p1|mux0|y[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~19_combout\ = ( \p1|reg3|Q\(3) & ( \p1|mux0|y[3]~18_combout\ & ( ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(3)))) # (\p1|mux0|y[0]~56_combout\) ) ) ) # ( !\p1|reg3|Q\(3) & ( 
-- \p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(3))))) # (\p1|mux0|y[0]~56_combout\ & (((!\p1|mux0|y[0]~2_combout\)))) ) ) ) # ( \p1|reg3|Q\(3) & ( 
-- !\p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(3))))) # (\p1|mux0|y[0]~56_combout\ & (((\p1|mux0|y[0]~2_combout\)))) ) ) ) # ( !\p1|reg3|Q\(3) & ( 
-- !\p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(3),
	datab => \p1|reg1|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datae => \p1|reg3|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~18_combout\,
	combout => \p1|mux0|y[3]~19_combout\);

-- Location: MLABCELL_X13_Y13_N24
\p1|mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~20_combout\ = ( \p1|mux0|y[3]~19_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\) # (\p1|reg0|Q\(3)) ) ) ) # ( !\p1|mux0|y[3]~19_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( (\p1|reg0|Q\(3) & \p1|mux0|y[0]~8_combout\) ) ) 
-- ) # ( \p1|mux0|y[3]~19_combout\ & ( !\p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(3)))) # (\p1|mux0|y[0]~8_combout\ & (\p1|regG|Q\(3))) ) ) ) # ( !\p1|mux0|y[3]~19_combout\ & ( 
-- !\p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(3)))) # (\p1|mux0|y[0]~8_combout\ & (\p1|regG|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(3),
	datab => \p1|reg0|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[0]~8_combout\,
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \p1|mux0|ALT_INV_y[3]~19_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~10_combout\,
	combout => \p1|mux0|y[3]~20_combout\);

-- Location: FF_X14_Y11_N35
\p1|regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(3));

-- Location: LABCELL_X12_Y10_N39
\p1|reg2|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg2|Q[2]~feeder_combout\);

-- Location: FF_X12_Y10_N40
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: LABCELL_X12_Y10_N51
\p1|reg1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg1|Q[2]~feeder_combout\);

-- Location: FF_X12_Y10_N52
\p1|reg1|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N3
\p1|reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg4|Q[2]~feeder_combout\);

-- Location: FF_X12_Y10_N5
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: MLABCELL_X13_Y10_N21
\p1|reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg5|Q[2]~feeder_combout\);

-- Location: FF_X13_Y10_N22
\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: FF_X12_Y12_N50
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: LABCELL_X12_Y12_N48
\p1|mux0|y[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~15_combout\ = ( \p1|reg6|Q\(2) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(2)) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(2) & ( \p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & \p1|reg5|Q\(2)) ) ) ) # ( \p1|reg6|Q\(2) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(2))) # (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(2)))) ) ) ) # ( !\p1|reg6|Q\(2) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(2))) # 
-- (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(2),
	datab => \p1|pc0|ALT_INV_v\(2),
	datac => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(2),
	datae => \p1|reg6|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[2]~15_combout\);

-- Location: FF_X12_Y12_N31
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: LABCELL_X12_Y12_N30
\p1|mux0|y[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~16_combout\ = ( \p1|reg3|Q\(2) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|mux0|y[0]~56_combout\) # (\p1|reg2|Q\(2)) ) ) ) # ( !\p1|reg3|Q\(2) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|reg2|Q\(2) & !\p1|mux0|y[0]~56_combout\) ) ) ) # ( \p1|reg3|Q\(2) 
-- & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & (\p1|reg1|Q[2]~DUPLICATE_q\)) # (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[2]~15_combout\))) ) ) ) # ( !\p1|reg3|Q\(2) & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & 
-- (\p1|reg1|Q[2]~DUPLICATE_q\)) # (\p1|mux0|y[0]~56_combout\ & ((\p1|mux0|y[2]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(2),
	datab => \p1|reg1|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[2]~15_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[0]~2_combout\,
	combout => \p1|mux0|y[2]~16_combout\);

-- Location: LABCELL_X12_Y12_N54
\p1|mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~17_combout\ = ( \p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( \p1|reg0|Q\(2) ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( \p1|regG|Q\(2) ) ) ) # ( \p1|mux0|y[0]~10_combout\ & ( !\p1|mux0|y[0]~8_combout\ 
-- & ( \p1|mux0|y[2]~16_combout\ ) ) ) # ( !\p1|mux0|y[0]~10_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(2),
	datab => \p1|reg0|ALT_INV_Q\(2),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \p1|mux0|ALT_INV_y[2]~16_combout\,
	datae => \p1|mux0|ALT_INV_y[0]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~8_combout\,
	combout => \p1|mux0|y[2]~17_combout\);

-- Location: FF_X12_Y11_N32
\p1|regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(2));

-- Location: MLABCELL_X13_Y10_N51
\p1|reg0|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg0|Q[1]~feeder_combout\);

-- Location: FF_X13_Y10_N53
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: FF_X13_Y11_N37
\p1|regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(1));

-- Location: LABCELL_X12_Y10_N36
\p1|reg2|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg2|Q[1]~feeder_combout\);

-- Location: FF_X12_Y10_N37
\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: LABCELL_X12_Y10_N48
\p1|reg1|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg1|Q[1]~feeder_combout\);

-- Location: FF_X12_Y10_N49
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: FF_X14_Y13_N1
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: LABCELL_X12_Y10_N0
\p1|reg4|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg4|Q[1]~feeder_combout\);

-- Location: FF_X12_Y10_N2
\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

-- Location: MLABCELL_X13_Y10_N18
\p1|reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg5|Q[1]~feeder_combout\);

-- Location: FF_X13_Y10_N20
\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: FF_X14_Y13_N20
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: LABCELL_X14_Y13_N18
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|reg6|Q\(1) & ( \p1|mux0|y[0]~0_combout\ & ( (\p1|reg5|Q\(1)) # (\p1|mux0|y[0]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(1) & ( \p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & \p1|reg5|Q\(1)) ) ) ) # ( \p1|reg6|Q\(1) & 
-- ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(1))) # (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(1)))) ) ) ) # ( !\p1|reg6|Q\(1) & ( !\p1|mux0|y[0]~0_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg4|Q\(1))) # 
-- (\p1|mux0|y[0]~1_combout\ & ((\p1|pc0|v\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(1),
	datab => \p1|pc0|ALT_INV_v\(1),
	datac => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(1),
	datae => \p1|reg6|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[0]~0_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: LABCELL_X14_Y13_N0
\p1|mux0|y[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~13_combout\ = ( \p1|reg3|Q\(1) & ( \p1|mux0|y[1]~12_combout\ & ( ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(1)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(1)))) # (\p1|mux0|y[0]~56_combout\) ) ) ) # ( !\p1|reg3|Q\(1) & ( 
-- \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & (((\p1|mux0|y[0]~56_combout\) # (\p1|reg1|Q\(1))))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(1) & ((!\p1|mux0|y[0]~56_combout\)))) ) ) ) # ( \p1|reg3|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( 
-- (!\p1|mux0|y[0]~2_combout\ & (((\p1|reg1|Q\(1) & !\p1|mux0|y[0]~56_combout\)))) # (\p1|mux0|y[0]~2_combout\ & (((\p1|mux0|y[0]~56_combout\)) # (\p1|reg2|Q\(1)))) ) ) ) # ( !\p1|reg3|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & 
-- ((!\p1|mux0|y[0]~2_combout\ & ((\p1|reg1|Q\(1)))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg2|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(1),
	datab => \p1|reg1|ALT_INV_Q\(1),
	datac => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[1]~13_combout\);

-- Location: LABCELL_X14_Y13_N24
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|mux0|y[1]~13_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\) # (\p1|reg0|Q\(1)) ) ) ) # ( !\p1|mux0|y[1]~13_combout\ & ( \p1|mux0|y[0]~10_combout\ & ( (\p1|reg0|Q\(1) & \p1|mux0|y[0]~8_combout\) ) ) 
-- ) # ( \p1|mux0|y[1]~13_combout\ & ( !\p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & (\m0|altsyncram_component|auto_generated|q_a\(1))) # (\p1|mux0|y[0]~8_combout\ & ((\p1|regG|Q\(1)))) ) ) ) # ( !\p1|mux0|y[1]~13_combout\ & ( 
-- !\p1|mux0|y[0]~10_combout\ & ( (!\p1|mux0|y[0]~8_combout\ & (\m0|altsyncram_component|auto_generated|q_a\(1))) # (\p1|mux0|y[0]~8_combout\ & ((\p1|regG|Q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \p1|reg0|ALT_INV_Q\(1),
	datac => \p1|regG|ALT_INV_Q\(1),
	datad => \p1|mux0|ALT_INV_y[0]~8_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~13_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~10_combout\,
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: FF_X13_Y12_N52
\p1|regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(1));

-- Location: FF_X13_Y11_N2
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(6),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: LABCELL_X16_Y9_N33
\p1|fsm|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector19~0_combout\ = ( !\p1|ir0|Q\(6) & ( \p1|fsm|y_Q.T1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	combout => \p1|fsm|Selector19~0_combout\);

-- Location: LABCELL_X12_Y13_N0
\p1|fsm|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector19~1_combout\ = (\p1|fsm|Selector19~0_combout\ & (!\p1|ir0|Q\(8) $ (\p1|ir0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_Selector19~0_combout\,
	combout => \p1|fsm|Selector19~1_combout\);

-- Location: LABCELL_X12_Y11_N27
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( !\p1|fsm|Selector19~1_combout\ & ( (!\p1|fsm|y_Q.T3~q\ & \p1|fsm|y_Q.T1~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_Selector19~1_combout\,
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: FF_X13_Y11_N23
\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

-- Location: FF_X13_Y12_N7
\p1|fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.T2~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T3~q\);

-- Location: LABCELL_X12_Y11_N18
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T1~DUPLICATE_q\ & ( (!\p1|fsm|y_Q.T3~q\ & !\p1|fsm|Selector19~1_combout\) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T1~DUPLICATE_q\ & ( (!\p1|fsm|y_Q.T3~q\ & 
-- (!\p1|fsm|Selector19~1_combout\ & \ff0|Q~q\)) ) ) ) # ( \p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|y_Q.T1~DUPLICATE_q\ & ( (!\p1|fsm|y_Q.T3~q\ & ((!\p1|fsm|Selector19~1_combout\) # (!\p1|fsm|y_Q.T2~q\))) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|y_Q.T1~DUPLICATE_q\ & 
-- ( (!\p1|fsm|y_Q.T3~q\ & (\ff0|Q~q\ & ((!\p1|fsm|Selector19~1_combout\) # (!\p1|fsm|y_Q.T2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000101010101000100000001000000010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datab => \p1|fsm|ALT_INV_Selector19~1_combout\,
	datac => \ff0|ALT_INV_Q~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: FF_X12_Y11_N20
\p1|fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector0~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T0~q\);

-- Location: LABCELL_X12_Y11_N24
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( !\p1|fsm|y_Q.T0~q\ & ( \ff0|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ff0|ALT_INV_Q~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: FF_X12_Y11_N25
\p1|fsm|y_Q.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector10~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TX~q\);

-- Location: FF_X12_Y11_N56
\p1|fsm|y_Q.TXX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.TX~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TXX~q\);

-- Location: FF_X13_Y11_N13
\p1|fsm|y_Q.T1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.TXX~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~DUPLICATE_q\);

-- Location: LABCELL_X12_Y11_N51
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( (!\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~DUPLICATE_q\ & ((\p1|ir0|Q\(6)) # (\p1|ir0|Q[8]~DUPLICATE_q\)))) ) ) # ( !\p1|fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000100000011000000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: FF_X14_Y12_N40
\p1|regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(0));

-- Location: FF_X13_Y11_N5
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: LABCELL_X14_Y10_N48
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|mux0|y[0]~9_combout\ & ( \p1|fsm|Equal0~2_combout\ & ( \p1|decX|Mux0~6_combout\ ) ) ) # ( !\p1|mux0|y[0]~9_combout\ & ( \p1|fsm|Equal0~2_combout\ & ( (!\p1|ir0|Q\(7) & (\p1|decX|Mux0~6_combout\ & 
-- (!\p1|ir0|Q[8]~DUPLICATE_q\ & \p1|fsm|Selector19~0_combout\))) ) ) ) # ( \p1|mux0|y[0]~9_combout\ & ( !\p1|fsm|Equal0~2_combout\ & ( \p1|decX|Mux0~6_combout\ ) ) ) # ( !\p1|mux0|y[0]~9_combout\ & ( !\p1|fsm|Equal0~2_combout\ & ( (\p1|decX|Mux0~6_combout\ 
-- & (\p1|fsm|Selector19~0_combout\ & (!\p1|ir0|Q\(7) $ (\p1|ir0|Q[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001001100110011001100000000001000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_Selector19~0_combout\,
	datae => \p1|mux0|ALT_INV_y[0]~9_combout\,
	dataf => \p1|fsm|ALT_INV_Equal0~2_combout\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: FF_X13_Y10_N13
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: FF_X14_Y10_N32
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: FF_X12_Y10_N58
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: LABCELL_X12_Y10_N57
\p1|mux0|y[0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~38_combout\ = ( \p1|reg4|Q\(0) & ( \p1|mux0|y[0]~1_combout\ & ( \p1|pc0|v\(0) ) ) ) # ( !\p1|reg4|Q\(0) & ( \p1|mux0|y[0]~1_combout\ & ( \p1|pc0|v\(0) ) ) ) # ( \p1|reg4|Q\(0) & ( !\p1|mux0|y[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|pc0|ALT_INV_v\(0),
	datae => \p1|reg4|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[0]~1_combout\,
	combout => \p1|mux0|y[0]~38_combout\);

-- Location: FF_X12_Y10_N16
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: MLABCELL_X13_Y10_N45
\p1|reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~11_combout\,
	combout => \p1|reg5|Q[0]~feeder_combout\);

-- Location: FF_X13_Y10_N46
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: FF_X14_Y10_N14
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: LABCELL_X14_Y10_N12
\p1|mux0|y[0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~37_combout\ = ( \p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~1_combout\ & (\p1|reg5|Q\(0))) # (\p1|mux0|y[0]~1_combout\ & ((\p1|reg6|Q\(0)))) ) ) # ( !\p1|mux0|y[0]~56_combout\ & ( \p1|reg1|Q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(0),
	datab => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datac => \p1|reg5|ALT_INV_Q\(0),
	datad => \p1|reg6|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[0]~56_combout\,
	combout => \p1|mux0|y[0]~37_combout\);

-- Location: FF_X12_Y10_N34
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: LABCELL_X14_Y10_N30
\p1|mux0|y[0]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~52_combout\ = ( !\p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & ((((\p1|mux0|y[0]~37_combout\))))) # (\p1|mux0|y[0]~2_combout\ & (((\p1|reg2|Q\(0))))) ) ) # ( \p1|mux0|y[0]~56_combout\ & ( (!\p1|mux0|y[0]~2_combout\ & 
-- (((!\p1|mux0|y[0]~0_combout\ & (\p1|mux0|y[0]~38_combout\)) # (\p1|mux0|y[0]~0_combout\ & ((\p1|mux0|y[0]~37_combout\)))))) # (\p1|mux0|y[0]~2_combout\ & (\p1|reg3|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000100011011000110101111101011110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datab => \p1|reg3|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[0]~0_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~38_combout\,
	datae => \p1|mux0|ALT_INV_y[0]~56_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~37_combout\,
	datag => \p1|reg2|ALT_INV_Q\(0),
	combout => \p1|mux0|y[0]~52_combout\);

-- Location: LABCELL_X14_Y10_N18
\p1|mux0|y[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~11_combout\ = ( \p1|mux0|y[0]~52_combout\ & ( \p1|mux0|y[0]~8_combout\ & ( (!\p1|mux0|y[0]~10_combout\ & ((\p1|regG|Q\(0)))) # (\p1|mux0|y[0]~10_combout\ & (\p1|reg0|Q\(0))) ) ) ) # ( !\p1|mux0|y[0]~52_combout\ & ( \p1|mux0|y[0]~8_combout\ & 
-- ( (!\p1|mux0|y[0]~10_combout\ & ((\p1|regG|Q\(0)))) # (\p1|mux0|y[0]~10_combout\ & (\p1|reg0|Q\(0))) ) ) ) # ( \p1|mux0|y[0]~52_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( (\p1|mux0|y[0]~10_combout\) # (\m0|altsyncram_component|auto_generated|q_a\(0)) ) ) 
-- ) # ( !\p1|mux0|y[0]~52_combout\ & ( !\p1|mux0|y[0]~8_combout\ & ( (\m0|altsyncram_component|auto_generated|q_a\(0) & !\p1|mux0|y[0]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \p1|reg0|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[0]~10_combout\,
	datad => \p1|regG|ALT_INV_Q\(0),
	datae => \p1|mux0|ALT_INV_y[0]~52_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~8_combout\,
	combout => \p1|mux0|y[0]~11_combout\);

-- Location: FF_X12_Y13_N10
\p1|regDout|Q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q[0]~DUPLICATE_q\);

-- Location: FF_X13_Y12_N56
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: LABCELL_X14_Y11_N54
\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (((\p1|decX|Mux0~5_combout\)))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q\(0) & (\p1|fsm|Selector2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~5_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector2~1_combout\);

-- Location: MLABCELL_X13_Y12_N27
\p1|mux0|y[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~3_combout\ = ( \p1|fsm|Selector2~3_combout\ & ( (!\p1|fsm|Selector3~0_combout\ & !\p1|fsm|Selector3~2_combout\) ) ) # ( !\p1|fsm|Selector2~3_combout\ & ( !\p1|fsm|Selector2~1_combout\ $ (((!\p1|fsm|Selector3~0_combout\ & 
-- !\p1|fsm|Selector3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[0]~3_combout\);

-- Location: MLABCELL_X13_Y12_N30
\p1|mux0|y[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~7_combout\ = ( \p1|fsm|Selector8~1_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (!\p1|mux0|y[0]~44_combout\ & (((\p1|fsm|Selector1~0_combout\)) # (\p1|mux0|y[0]~56_combout\))) # (\p1|mux0|y[0]~44_combout\ & (((!\p1|mux0|y[0]~3_combout\ & 
-- \p1|fsm|Selector1~0_combout\)))) ) ) ) # ( !\p1|fsm|Selector8~1_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (!\p1|mux0|y[0]~3_combout\ & \p1|fsm|Selector1~0_combout\) ) ) ) # ( \p1|fsm|Selector8~1_combout\ & ( !\p1|mux0|y[0]~48_combout\ & ( 
-- (!\p1|mux0|y[0]~3_combout\ & \p1|fsm|Selector1~0_combout\) ) ) ) # ( !\p1|fsm|Selector8~1_combout\ & ( !\p1|mux0|y[0]~48_combout\ & ( (!\p1|mux0|y[0]~3_combout\ & \p1|fsm|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000010001011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~44_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector8~1_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~48_combout\,
	combout => \p1|mux0|y[0]~7_combout\);

-- Location: MLABCELL_X13_Y12_N0
\p1|fsm|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~3_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( ((((\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~4_combout\)) # (\p1|fsm|Selector4~2_combout\))) ) ) # ( \p1|fsm|Mux0~0_combout\ & ( ((!\p1|ir0|Q[2]~DUPLICATE_q\ & (\p1|fsm|Selector5~1_combout\ 
-- & (\p1|ir0|Q\(0) & \p1|ir0|Q\(1))))) # (\p1|fsm|Selector4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000000000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(1),
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector4~3_combout\);

-- Location: LABCELL_X14_Y12_N24
\p1|mux0|y[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~4_combout\ = ( \p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector7~2_combout\ & !\p1|fsm|Selector7~0_combout\) ) ) # ( !\p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector6~2_combout\ $ (((!\p1|fsm|Selector7~2_combout\ & 
-- !\p1|fsm|Selector7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[0]~4_combout\);

-- Location: LABCELL_X14_Y12_N36
\p1|mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~5_combout\ = ( \p1|fsm|Selector7~0_combout\ & ( !\p1|fsm|Selector2~3_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector6~0_combout\ & !\p1|fsm|Selector2~1_combout\)) ) ) ) # ( !\p1|fsm|Selector7~0_combout\ & ( 
-- !\p1|fsm|Selector2~3_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & ((!\p1|fsm|Selector7~2_combout\) # ((!\p1|fsm|Selector6~2_combout\ & !\p1|fsm|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[0]~5_combout\);

-- Location: MLABCELL_X13_Y10_N39
\p1|fsm|Selector5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~7_combout\ = ( \p1|fsm|Mux0~0_combout\ & ( !\p1|fsm|Selector5~6_combout\ & ( ((!\p1|fsm|Selector5~0_combout\) # (!\p1|fsm|Selector5~1_combout\)) # (\p1|ir0|Q\(0)) ) ) ) # ( !\p1|fsm|Mux0~0_combout\ & ( !\p1|fsm|Selector5~6_combout\ & ( 
-- (!\p1|decX|Mux0~0_combout\) # (!\p1|fsm|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|decX|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~6_combout\,
	combout => \p1|fsm|Selector5~7_combout\);

-- Location: MLABCELL_X13_Y12_N48
\p1|mux0|y[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~6_combout\ = ( \p1|fsm|Selector5~7_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (\p1|mux0|y[0]~5_combout\ & (!\p1|fsm|Selector8~1_combout\ $ (((\p1|mux0|y[0]~4_combout\) # (\p1|fsm|Selector4~3_combout\))))) ) ) ) # ( 
-- !\p1|fsm|Selector5~7_combout\ & ( \p1|mux0|y[0]~48_combout\ & ( (!\p1|fsm|Selector4~3_combout\ & (\p1|fsm|Selector8~1_combout\ & \p1|mux0|y[0]~5_combout\)) ) ) ) # ( \p1|fsm|Selector5~7_combout\ & ( !\p1|mux0|y[0]~48_combout\ & ( 
-- (!\p1|fsm|Selector4~3_combout\ & (\p1|mux0|y[0]~5_combout\ & (!\p1|mux0|y[0]~4_combout\ $ (\p1|fsm|Selector8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000001000000000000010100000000010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector4~3_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector8~1_combout\,
	datad => \p1|mux0|ALT_INV_y[0]~5_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~7_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~48_combout\,
	combout => \p1|mux0|y[0]~6_combout\);

-- Location: MLABCELL_X13_Y12_N42
\p1|mux0|y[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~10_combout\ = ( \p1|mux0|y[0]~6_combout\ & ( (\p1|mux0|y[0]~7_combout\ & !\p1|mux0|y[0]~9_combout\) ) ) # ( !\p1|mux0|y[0]~6_combout\ & ( (\p1|mux0|y[0]~7_combout\ & (!\p1|mux0|y[0]~9_combout\ & ((!\p1|fsm|Selector1~0_combout\) # 
-- (\p1|mux0|y[0]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000010000001100000001000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~3_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~7_combout\,
	datac => \p1|mux0|ALT_INV_y[0]~9_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~6_combout\,
	combout => \p1|mux0|y[0]~10_combout\);

-- Location: FF_X13_Y10_N52
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: MLABCELL_X13_Y13_N54
\p1|pc0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~33_sumout\ = SUM(( \p1|pc0|v\(8) ) + ( GND ) + ( \p1|pc0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(8),
	cin => \p1|pc0|Add0~30\,
	sumout => \p1|pc0|Add0~33_sumout\);

-- Location: FF_X13_Y13_N56
\p1|pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~33_sumout\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(8));

-- Location: FF_X13_Y10_N7
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: FF_X14_Y10_N26
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: FF_X13_Y10_N37
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: LABCELL_X14_Y10_N24
\p1|mux0|y[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~33_combout\ = ( \p1|reg6|Q\(8) & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[0]~1_combout\ & (((!\p1|mux0|y[0]~0_combout\) # (\p1|reg5|Q\(8))))) # (\p1|mux0|y[0]~1_combout\ & (((\p1|mux0|y[0]~0_combout\)) # (\p1|pc0|v\(8)))) ) ) ) # ( !\p1|reg6|Q\(8) 
-- & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[0]~1_combout\ & (((!\p1|mux0|y[0]~0_combout\) # (\p1|reg5|Q\(8))))) # (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(8) & ((!\p1|mux0|y[0]~0_combout\)))) ) ) ) # ( \p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( 
-- (!\p1|mux0|y[0]~1_combout\ & (((\p1|reg5|Q\(8) & \p1|mux0|y[0]~0_combout\)))) # (\p1|mux0|y[0]~1_combout\ & (((\p1|mux0|y[0]~0_combout\)) # (\p1|pc0|v\(8)))) ) ) ) # ( !\p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( (!\p1|mux0|y[0]~1_combout\ & (((\p1|reg5|Q\(8) 
-- & \p1|mux0|y[0]~0_combout\)))) # (\p1|mux0|y[0]~1_combout\ & (\p1|pc0|v\(8) & ((!\p1|mux0|y[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(8),
	datab => \p1|mux0|ALT_INV_y[0]~1_combout\,
	datac => \p1|reg5|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[0]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(8),
	dataf => \p1|reg4|ALT_INV_Q\(8),
	combout => \p1|mux0|y[8]~33_combout\);

-- Location: FF_X12_Y10_N50
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: FF_X12_Y10_N19
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: FF_X14_Y10_N7
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: LABCELL_X14_Y10_N6
\p1|mux0|y[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~34_combout\ = ( \p1|reg3|Q\(8) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|mux0|y[0]~56_combout\) # (\p1|reg2|Q\(8)) ) ) ) # ( !\p1|reg3|Q\(8) & ( \p1|mux0|y[0]~2_combout\ & ( (\p1|reg2|Q\(8) & !\p1|mux0|y[0]~56_combout\) ) ) ) # ( \p1|reg3|Q\(8) 
-- & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[0]~56_combout\ & (\p1|mux0|y[8]~33_combout\)) ) ) ) # ( !\p1|reg3|Q\(8) & ( !\p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[0]~56_combout\ & ((\p1|reg1|Q\(8)))) # 
-- (\p1|mux0|y[0]~56_combout\ & (\p1|mux0|y[8]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[8]~33_combout\,
	datab => \p1|reg1|ALT_INV_Q\(8),
	datac => \p1|reg2|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[0]~56_combout\,
	datae => \p1|reg3|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[0]~2_combout\,
	combout => \p1|mux0|y[8]~34_combout\);

-- Location: LABCELL_X14_Y10_N0
\p1|mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~35_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(8) & ( \p1|mux0|y[8]~34_combout\ & ( (!\p1|mux0|y[0]~8_combout\) # ((!\p1|mux0|y[0]~10_combout\ & (\p1|regG|Q\(8))) # (\p1|mux0|y[0]~10_combout\ & ((\p1|reg0|Q\(8))))) ) ) ) # ( 
-- !\m0|altsyncram_component|auto_generated|q_a\(8) & ( \p1|mux0|y[8]~34_combout\ & ( (!\p1|mux0|y[0]~10_combout\ & (\p1|regG|Q\(8) & ((\p1|mux0|y[0]~8_combout\)))) # (\p1|mux0|y[0]~10_combout\ & (((!\p1|mux0|y[0]~8_combout\) # (\p1|reg0|Q\(8))))) ) ) ) # ( 
-- \m0|altsyncram_component|auto_generated|q_a\(8) & ( !\p1|mux0|y[8]~34_combout\ & ( (!\p1|mux0|y[0]~10_combout\ & (((!\p1|mux0|y[0]~8_combout\)) # (\p1|regG|Q\(8)))) # (\p1|mux0|y[0]~10_combout\ & (((\p1|reg0|Q\(8) & \p1|mux0|y[0]~8_combout\)))) ) ) ) # ( 
-- !\m0|altsyncram_component|auto_generated|q_a\(8) & ( !\p1|mux0|y[8]~34_combout\ & ( (\p1|mux0|y[0]~8_combout\ & ((!\p1|mux0|y[0]~10_combout\ & (\p1|regG|Q\(8))) # (\p1|mux0|y[0]~10_combout\ & ((\p1|reg0|Q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~10_combout\,
	datab => \p1|regG|ALT_INV_Q\(8),
	datac => \p1|reg0|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[0]~8_combout\,
	datae => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \p1|mux0|ALT_INV_y[8]~34_combout\,
	combout => \p1|mux0|y[8]~35_combout\);

-- Location: FF_X13_Y9_N44
\p1|regAddr|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y9_N39
\p1|regAddr|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|regAddr|Q[7]~feeder_combout\);

-- Location: FF_X13_Y9_N41
\p1|regAddr|Q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[7]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y9_N48
wr_en : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = ( !\p1|regAddr|Q[7]~DUPLICATE_q\ & ( (\p1|ff0|Q~q\ & !\p1|regAddr|Q[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \wr_en~combout\);

-- Location: FF_X13_Y11_N8
\p1|ir0|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[8]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y11_N42
\p1|fsm|Wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Wr_en~0_combout\ = ( !\p1|ir0|Q\(7) & ( (\p1|ir0|Q[8]~DUPLICATE_q\ & (\p1|ir0|Q\(6) & \p1|fsm|y_Q.T2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Wr_en~0_combout\);

-- Location: FF_X12_Y13_N5
\p1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|Wr_en~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~q\);

-- Location: FF_X13_Y9_N40
\p1|regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(7));

-- Location: FF_X13_Y9_N43
\p1|regAddr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(8));

-- Location: FF_X12_Y13_N52
\p1|regDout|Q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q[5]~DUPLICATE_q\);

-- Location: FF_X12_Y10_N11
\p1|reg4|Q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q[5]~DUPLICATE_q\);

-- Location: FF_X12_Y10_N53
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: FF_X14_Y11_N46
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(4),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: LABCELL_X12_Y11_N0
\p1|fsm|Tstep_Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Tstep_Q~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.TXX~q\ ) ) # ( !\p1|fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.TXX~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Tstep_Q~0_combout\);

-- Location: LABCELL_X12_Y11_N39
\p1|fsm|Tstep_Q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Tstep_Q\(1) = ( \p1|fsm|y_Q.T1~DUPLICATE_q\ ) # ( !\p1|fsm|y_Q.T1~DUPLICATE_q\ & ( \p1|fsm|y_Q.TXX~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_y_Q.TXX~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	combout => \p1|fsm|Tstep_Q\(1));

-- Location: FF_X12_Y13_N11
\p1|regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(0));

-- Location: MLABCELL_X13_Y9_N24
led_en : cyclonev_lcell_comb
-- Equation(s):
-- \led_en~combout\ = ( \p1|ff0|Q~q\ & ( (!\p1|regAddr|Q[8]~DUPLICATE_q\ & \p1|regAddr|Q[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|ff0|ALT_INV_Q~q\,
	combout => \led_en~combout\);

-- Location: FF_X12_Y13_N34
\leds0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(0));

-- Location: FF_X12_Y13_N44
\p1|regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(1));

-- Location: FF_X12_Y13_N37
\leds0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(1));

-- Location: FF_X12_Y13_N40
\leds0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(2));

-- Location: FF_X12_Y13_N31
\leds0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(3));

-- Location: FF_X12_Y13_N13
\leds0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(4),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(4));

-- Location: FF_X12_Y13_N16
\leds0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(5),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(5));

-- Location: LABCELL_X10_Y1_N3
\leds0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[6]~feeder_combout\ = ( \p1|regDout|Q\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(6),
	combout => \leds0|Q[6]~feeder_combout\);

-- Location: FF_X10_Y1_N4
\leds0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(6));

-- Location: FF_X12_Y13_N22
\leds0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(7),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(7));

-- Location: FF_X12_Y13_N55
\leds0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(8),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(8));

-- Location: LABCELL_X47_Y40_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


