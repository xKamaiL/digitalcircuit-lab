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

-- DATE "10/11/2022 22:13:51"

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

ENTITY 	lab9part1 IS
    PORT (
	data_in : IN std_logic_vector(8 DOWNTO 0);
	reset_n : IN std_logic;
	clk : IN std_logic;
	run : IN std_logic;
	done : BUFFER std_logic;
	reg_A : OUT std_logic_vector(8 DOWNTO 0);
	reg_G : OUT std_logic_vector(8 DOWNTO 0);
	reg_IR : OUT std_logic_vector(8 DOWNTO 0);
	reg_0 : OUT std_logic_vector(8 DOWNTO 0);
	reg_1 : OUT std_logic_vector(8 DOWNTO 0);
	Tstep_Q : OUT std_logic_vector(3 DOWNTO 0);
	busWires : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab9part1;

-- Design Ports Information
-- done	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab9part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_run : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_reg_A : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_G : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_IR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_busWires : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \fsm|y_D.T1~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \fsm|y_Q.T1~q\ : std_logic;
SIGNAL \fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T2~q\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T0~q\ : std_logic;
SIGNAL \fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T3~q\ : std_logic;
SIGNAL \fsm|Selector11~0_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \fsm|Selector14~0_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|Selector16~1_combout\ : std_logic;
SIGNAL \fsm|Selector18~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|Selector13~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~0_combout\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|Selector17~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~8_combout\ : std_logic;
SIGNAL \fsm|Selector13~1_combout\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \fsm|Selector12~0_combout\ : std_logic;
SIGNAL \fsm|Selector13~2_combout\ : std_logic;
SIGNAL \fsm|Selector14~1_combout\ : std_logic;
SIGNAL \mux0|y[1]~7_combout\ : std_logic;
SIGNAL \mux0|y[1]~9_combout\ : std_logic;
SIGNAL \mux0|y[1]~6_combout\ : std_logic;
SIGNAL \fsm|Equal0~0_combout\ : std_logic;
SIGNAL \fsm|Gout~combout\ : std_logic;
SIGNAL \mux0|y[1]~12_combout\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~1_combout\ : std_logic;
SIGNAL \fsm|Selector10~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector10~2_combout\ : std_logic;
SIGNAL \reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~2_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~4_combout\ : std_logic;
SIGNAL \reg1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector4~1_combout\ : std_logic;
SIGNAL \mux0|y[1]~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~5_combout\ : std_logic;
SIGNAL \fsm|Equal0~1_combout\ : std_logic;
SIGNAL \fsm|AddSub~combout\ : std_logic;
SIGNAL \addsub0|Add0~38_cout\ : std_logic;
SIGNAL \addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \fsm|Selector3~2_combout\ : std_logic;
SIGNAL \mux0|y[1]~10_combout\ : std_logic;
SIGNAL \mux0|y[1]~11_combout\ : std_logic;
SIGNAL \mux0|y[0]~13_combout\ : std_logic;
SIGNAL \regA|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Ain~combout\ : std_logic;
SIGNAL \reg7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[1]~14_combout\ : std_logic;
SIGNAL \mux0|y[1]~15_combout\ : std_logic;
SIGNAL \addsub0|Add0~2\ : std_logic;
SIGNAL \addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \mux0|y[1]~16_combout\ : std_logic;
SIGNAL \reg0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \addsub0|Add0~6\ : std_logic;
SIGNAL \addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[2]~17_combout\ : std_logic;
SIGNAL \mux0|y[2]~18_combout\ : std_logic;
SIGNAL \mux0|y[2]~19_combout\ : std_logic;
SIGNAL \reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[3]~20_combout\ : std_logic;
SIGNAL \mux0|y[3]~21_combout\ : std_logic;
SIGNAL \addsub0|Add0~10\ : std_logic;
SIGNAL \addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \mux0|y[3]~22_combout\ : std_logic;
SIGNAL \regA|Q[3]~feeder_combout\ : std_logic;
SIGNAL \addsub0|Add0~14\ : std_logic;
SIGNAL \addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \mux0|y[4]~23_combout\ : std_logic;
SIGNAL \mux0|y[4]~24_combout\ : std_logic;
SIGNAL \mux0|y[4]~25_combout\ : std_logic;
SIGNAL \regA|Q[4]~feeder_combout\ : std_logic;
SIGNAL \addsub0|Add0~18\ : std_logic;
SIGNAL \addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \mux0|y[5]~26_combout\ : std_logic;
SIGNAL \mux0|y[5]~27_combout\ : std_logic;
SIGNAL \mux0|y[5]~28_combout\ : std_logic;
SIGNAL \addsub0|Add0~22\ : std_logic;
SIGNAL \addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \reg7|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~29_combout\ : std_logic;
SIGNAL \mux0|y[6]~30_combout\ : std_logic;
SIGNAL \mux0|y[6]~31_combout\ : std_logic;
SIGNAL \reg0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \addsub0|Add0~26\ : std_logic;
SIGNAL \addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \reg1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~32_combout\ : std_logic;
SIGNAL \mux0|y[7]~33_combout\ : std_logic;
SIGNAL \mux0|y[7]~34_combout\ : std_logic;
SIGNAL \regA|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[8]~35_combout\ : std_logic;
SIGNAL \mux0|y[8]~36_combout\ : std_logic;
SIGNAL \addsub0|Add0~30\ : std_logic;
SIGNAL \addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \mux0|y[8]~37_combout\ : std_logic;
SIGNAL \regA|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~37_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~36_combout\ : std_logic;
SIGNAL \reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[7]~34_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~33_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~31_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~30_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~29_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~28_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~27_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~26_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~25_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~24_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~23_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~22_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~21_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~20_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~18_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~17_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~16_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~13_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~11_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~10_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~9_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~8_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~7_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~6_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~4_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~3_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_run~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \fsm|ALT_INV_AddSub~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Ain~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Gout~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_run <= run;
done <= ww_done;
reg_A <= ww_reg_A;
reg_G <= ww_reg_G;
reg_IR <= ww_reg_IR;
reg_0 <= ww_reg_0;
reg_1 <= ww_reg_1;
Tstep_Q <= ww_Tstep_Q;
busWires <= ww_busWires;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\fsm|ALT_INV_Selector3~1_combout\ <= NOT \fsm|Selector3~1_combout\;
\fsm|ALT_INV_Selector3~0_combout\ <= NOT \fsm|Selector3~0_combout\;
\mux0|ALT_INV_y[8]~37_combout\ <= NOT \mux0|y[8]~37_combout\;
\mux0|ALT_INV_y[8]~36_combout\ <= NOT \mux0|y[8]~36_combout\;
\reg2|ALT_INV_Q\(8) <= NOT \reg2|Q\(8);
\reg3|ALT_INV_Q\(8) <= NOT \reg3|Q\(8);
\mux0|ALT_INV_y[8]~35_combout\ <= NOT \mux0|y[8]~35_combout\;
\reg5|ALT_INV_Q\(8) <= NOT \reg5|Q\(8);
\reg4|ALT_INV_Q\(8) <= NOT \reg4|Q\(8);
\reg6|ALT_INV_Q\(8) <= NOT \reg6|Q\(8);
\reg7|ALT_INV_Q\(8) <= NOT \reg7|Q\(8);
\mux0|ALT_INV_y[7]~34_combout\ <= NOT \mux0|y[7]~34_combout\;
\mux0|ALT_INV_y[7]~33_combout\ <= NOT \mux0|y[7]~33_combout\;
\reg2|ALT_INV_Q\(7) <= NOT \reg2|Q\(7);
\reg3|ALT_INV_Q\(7) <= NOT \reg3|Q\(7);
\mux0|ALT_INV_y[7]~32_combout\ <= NOT \mux0|y[7]~32_combout\;
\reg5|ALT_INV_Q\(7) <= NOT \reg5|Q\(7);
\reg4|ALT_INV_Q\(7) <= NOT \reg4|Q\(7);
\reg6|ALT_INV_Q\(7) <= NOT \reg6|Q\(7);
\reg7|ALT_INV_Q\(7) <= NOT \reg7|Q\(7);
\mux0|ALT_INV_y[6]~31_combout\ <= NOT \mux0|y[6]~31_combout\;
\mux0|ALT_INV_y[6]~30_combout\ <= NOT \mux0|y[6]~30_combout\;
\reg2|ALT_INV_Q\(6) <= NOT \reg2|Q\(6);
\reg3|ALT_INV_Q\(6) <= NOT \reg3|Q\(6);
\mux0|ALT_INV_y[6]~29_combout\ <= NOT \mux0|y[6]~29_combout\;
\reg5|ALT_INV_Q\(6) <= NOT \reg5|Q\(6);
\reg4|ALT_INV_Q\(6) <= NOT \reg4|Q\(6);
\reg6|ALT_INV_Q\(6) <= NOT \reg6|Q\(6);
\reg7|ALT_INV_Q\(6) <= NOT \reg7|Q\(6);
\mux0|ALT_INV_y[5]~28_combout\ <= NOT \mux0|y[5]~28_combout\;
\mux0|ALT_INV_y[5]~27_combout\ <= NOT \mux0|y[5]~27_combout\;
\reg2|ALT_INV_Q\(5) <= NOT \reg2|Q\(5);
\reg3|ALT_INV_Q\(5) <= NOT \reg3|Q\(5);
\mux0|ALT_INV_y[5]~26_combout\ <= NOT \mux0|y[5]~26_combout\;
\reg5|ALT_INV_Q\(5) <= NOT \reg5|Q\(5);
\reg4|ALT_INV_Q\(5) <= NOT \reg4|Q\(5);
\reg6|ALT_INV_Q\(5) <= NOT \reg6|Q\(5);
\reg7|ALT_INV_Q\(5) <= NOT \reg7|Q\(5);
\mux0|ALT_INV_y[4]~25_combout\ <= NOT \mux0|y[4]~25_combout\;
\mux0|ALT_INV_y[4]~24_combout\ <= NOT \mux0|y[4]~24_combout\;
\reg2|ALT_INV_Q\(4) <= NOT \reg2|Q\(4);
\reg3|ALT_INV_Q\(4) <= NOT \reg3|Q\(4);
\mux0|ALT_INV_y[4]~23_combout\ <= NOT \mux0|y[4]~23_combout\;
\reg5|ALT_INV_Q\(4) <= NOT \reg5|Q\(4);
\reg4|ALT_INV_Q\(4) <= NOT \reg4|Q\(4);
\reg6|ALT_INV_Q\(4) <= NOT \reg6|Q\(4);
\reg7|ALT_INV_Q\(4) <= NOT \reg7|Q\(4);
\mux0|ALT_INV_y[3]~22_combout\ <= NOT \mux0|y[3]~22_combout\;
\mux0|ALT_INV_y[3]~21_combout\ <= NOT \mux0|y[3]~21_combout\;
\reg2|ALT_INV_Q\(3) <= NOT \reg2|Q\(3);
\reg3|ALT_INV_Q\(3) <= NOT \reg3|Q\(3);
\mux0|ALT_INV_y[3]~20_combout\ <= NOT \mux0|y[3]~20_combout\;
\reg5|ALT_INV_Q\(3) <= NOT \reg5|Q\(3);
\reg4|ALT_INV_Q\(3) <= NOT \reg4|Q\(3);
\reg6|ALT_INV_Q\(3) <= NOT \reg6|Q\(3);
\reg7|ALT_INV_Q\(3) <= NOT \reg7|Q\(3);
\mux0|ALT_INV_y[2]~19_combout\ <= NOT \mux0|y[2]~19_combout\;
\mux0|ALT_INV_y[2]~18_combout\ <= NOT \mux0|y[2]~18_combout\;
\reg2|ALT_INV_Q\(2) <= NOT \reg2|Q\(2);
\reg3|ALT_INV_Q\(2) <= NOT \reg3|Q\(2);
\mux0|ALT_INV_y[2]~17_combout\ <= NOT \mux0|y[2]~17_combout\;
\reg5|ALT_INV_Q\(2) <= NOT \reg5|Q\(2);
\reg4|ALT_INV_Q\(2) <= NOT \reg4|Q\(2);
\reg6|ALT_INV_Q\(2) <= NOT \reg6|Q\(2);
\reg7|ALT_INV_Q\(2) <= NOT \reg7|Q\(2);
\mux0|ALT_INV_y[1]~16_combout\ <= NOT \mux0|y[1]~16_combout\;
\mux0|ALT_INV_y[1]~15_combout\ <= NOT \mux0|y[1]~15_combout\;
\reg2|ALT_INV_Q\(1) <= NOT \reg2|Q\(1);
\reg3|ALT_INV_Q\(1) <= NOT \reg3|Q\(1);
\mux0|ALT_INV_y[1]~14_combout\ <= NOT \mux0|y[1]~14_combout\;
\reg5|ALT_INV_Q\(1) <= NOT \reg5|Q\(1);
\reg4|ALT_INV_Q\(1) <= NOT \reg4|Q\(1);
\reg6|ALT_INV_Q\(1) <= NOT \reg6|Q\(1);
\reg7|ALT_INV_Q\(1) <= NOT \reg7|Q\(1);
\mux0|ALT_INV_y[0]~13_combout\ <= NOT \mux0|y[0]~13_combout\;
\mux0|ALT_INV_y[1]~12_combout\ <= NOT \mux0|y[1]~12_combout\;
\mux0|ALT_INV_y[1]~11_combout\ <= NOT \mux0|y[1]~11_combout\;
\mux0|ALT_INV_y[1]~10_combout\ <= NOT \mux0|y[1]~10_combout\;
\mux0|ALT_INV_y[1]~9_combout\ <= NOT \mux0|y[1]~9_combout\;
\mux0|ALT_INV_y[1]~8_combout\ <= NOT \mux0|y[1]~8_combout\;
\mux0|ALT_INV_y[1]~7_combout\ <= NOT \mux0|y[1]~7_combout\;
\mux0|ALT_INV_y[1]~6_combout\ <= NOT \mux0|y[1]~6_combout\;
\mux0|ALT_INV_y[0]~5_combout\ <= NOT \mux0|y[0]~5_combout\;
\mux0|ALT_INV_y[1]~4_combout\ <= NOT \mux0|y[1]~4_combout\;
\mux0|ALT_INV_y[1]~3_combout\ <= NOT \mux0|y[1]~3_combout\;
\reg2|ALT_INV_Q\(0) <= NOT \reg2|Q\(0);
\reg3|ALT_INV_Q\(0) <= NOT \reg3|Q\(0);
\mux0|ALT_INV_y[0]~2_combout\ <= NOT \mux0|y[0]~2_combout\;
\mux0|ALT_INV_y[1]~1_combout\ <= NOT \mux0|y[1]~1_combout\;
\mux0|ALT_INV_y[1]~0_combout\ <= NOT \mux0|y[1]~0_combout\;
\reg5|ALT_INV_Q\(0) <= NOT \reg5|Q\(0);
\reg4|ALT_INV_Q\(0) <= NOT \reg4|Q\(0);
\reg6|ALT_INV_Q\(0) <= NOT \reg6|Q\(0);
\reg7|ALT_INV_Q\(0) <= NOT \reg7|Q\(0);
\fsm|ALT_INV_y_Q.T2~q\ <= NOT \fsm|y_Q.T2~q\;
\fsm|ALT_INV_y_Q.T0~q\ <= NOT \fsm|y_Q.T0~q\;
\reg1|ALT_INV_Q\(8) <= NOT \reg1|Q\(8);
\reg1|ALT_INV_Q\(7) <= NOT \reg1|Q\(7);
\reg1|ALT_INV_Q\(6) <= NOT \reg1|Q\(6);
\reg1|ALT_INV_Q\(5) <= NOT \reg1|Q\(5);
\reg1|ALT_INV_Q\(4) <= NOT \reg1|Q\(4);
\reg1|ALT_INV_Q\(3) <= NOT \reg1|Q\(3);
\reg1|ALT_INV_Q\(2) <= NOT \reg1|Q\(2);
\reg1|ALT_INV_Q\(1) <= NOT \reg1|Q\(1);
\reg1|ALT_INV_Q\(0) <= NOT \reg1|Q\(0);
\reg0|ALT_INV_Q\(8) <= NOT \reg0|Q\(8);
\reg0|ALT_INV_Q\(7) <= NOT \reg0|Q\(7);
\reg0|ALT_INV_Q\(6) <= NOT \reg0|Q\(6);
\reg0|ALT_INV_Q\(5) <= NOT \reg0|Q\(5);
\reg0|ALT_INV_Q\(4) <= NOT \reg0|Q\(4);
\reg0|ALT_INV_Q\(3) <= NOT \reg0|Q\(3);
\reg0|ALT_INV_Q\(2) <= NOT \reg0|Q\(2);
\reg0|ALT_INV_Q\(1) <= NOT \reg0|Q\(1);
\reg0|ALT_INV_Q\(0) <= NOT \reg0|Q\(0);
\ir0|ALT_INV_Q\(6) <= NOT \ir0|Q\(6);
\ir0|ALT_INV_Q\(5) <= NOT \ir0|Q\(5);
\ALT_INV_run~input_o\ <= NOT \run~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\fsm|ALT_INV_AddSub~combout\ <= NOT \fsm|AddSub~combout\;
\fsm|ALT_INV_Ain~combout\ <= NOT \fsm|Ain~combout\;
\fsm|ALT_INV_Gout~combout\ <= NOT \fsm|Gout~combout\;
\fsm|ALT_INV_R0toR7out\(7) <= NOT \fsm|R0toR7out\(7);
\fsm|ALT_INV_R0toR7out\(0) <= NOT \fsm|R0toR7out\(0);
\fsm|ALT_INV_R0toR7out\(2) <= NOT \fsm|R0toR7out\(2);
\fsm|ALT_INV_R0toR7out\(3) <= NOT \fsm|R0toR7out\(3);
\fsm|ALT_INV_R0toR7out\(1) <= NOT \fsm|R0toR7out\(1);
\fsm|ALT_INV_R0toR7out\(5) <= NOT \fsm|R0toR7out\(5);
\fsm|ALT_INV_R0toR7out\(6) <= NOT \fsm|R0toR7out\(6);
\fsm|ALT_INV_R0toR7out\(4) <= NOT \fsm|R0toR7out\(4);
\fsm|ALT_INV_Equal0~1_combout\ <= NOT \fsm|Equal0~1_combout\;
\fsm|ALT_INV_Equal0~0_combout\ <= NOT \fsm|Equal0~0_combout\;
\fsm|ALT_INV_Selector2~0_combout\ <= NOT \fsm|Selector2~0_combout\;
\fsm|ALT_INV_Selector17~0_combout\ <= NOT \fsm|Selector17~0_combout\;
\fsm|ALT_INV_Selector15~0_combout\ <= NOT \fsm|Selector15~0_combout\;
\fsm|ALT_INV_Selector14~1_combout\ <= NOT \fsm|Selector14~1_combout\;
\fsm|ALT_INV_Selector16~1_combout\ <= NOT \fsm|Selector16~1_combout\;
\fsm|ALT_INV_Selector16~0_combout\ <= NOT \fsm|Selector16~0_combout\;
\fsm|ALT_INV_Selector12~0_combout\ <= NOT \fsm|Selector12~0_combout\;
\fsm|ALT_INV_Selector14~0_combout\ <= NOT \fsm|Selector14~0_combout\;
\fsm|ALT_INV_Selector0~1_combout\ <= NOT \fsm|Selector0~1_combout\;
\fsm|ALT_INV_Selector0~0_combout\ <= NOT \fsm|Selector0~0_combout\;
\fsm|ALT_INV_Selector18~0_combout\ <= NOT \fsm|Selector18~0_combout\;
\fsm|ALT_INV_Selector13~2_combout\ <= NOT \fsm|Selector13~2_combout\;
\fsm|ALT_INV_Selector13~1_combout\ <= NOT \fsm|Selector13~1_combout\;
\fsm|ALT_INV_Selector13~0_combout\ <= NOT \fsm|Selector13~0_combout\;
\fsm|ALT_INV_Selector10~1_combout\ <= NOT \fsm|Selector10~1_combout\;
\fsm|ALT_INV_Selector10~0_combout\ <= NOT \fsm|Selector10~0_combout\;
\fsm|ALT_INV_Selector4~0_combout\ <= NOT \fsm|Selector4~0_combout\;
\ir0|ALT_INV_Q\(4) <= NOT \ir0|Q\(4);
\ir0|ALT_INV_Q\(3) <= NOT \ir0|Q\(3);
\ir0|ALT_INV_Q\(2) <= NOT \ir0|Q\(2);
\ir0|ALT_INV_Q\(1) <= NOT \ir0|Q\(1);
\ir0|ALT_INV_Q\(0) <= NOT \ir0|Q\(0);
\regA|ALT_INV_Q\(8) <= NOT \regA|Q\(8);
\regA|ALT_INV_Q\(7) <= NOT \regA|Q\(7);
\regA|ALT_INV_Q\(6) <= NOT \regA|Q\(6);
\regA|ALT_INV_Q\(5) <= NOT \regA|Q\(5);
\regA|ALT_INV_Q\(4) <= NOT \regA|Q\(4);
\regA|ALT_INV_Q\(3) <= NOT \regA|Q\(3);
\regA|ALT_INV_Q\(2) <= NOT \regA|Q\(2);
\regA|ALT_INV_Q\(1) <= NOT \regA|Q\(1);
\regA|ALT_INV_Q\(0) <= NOT \regA|Q\(0);
\fsm|ALT_INV_y_Q.T1~q\ <= NOT \fsm|y_Q.T1~q\;
\ir0|ALT_INV_Q\(7) <= NOT \ir0|Q\(7);
\ir0|ALT_INV_Q\(8) <= NOT \ir0|Q\(8);
\fsm|ALT_INV_y_Q.T3~q\ <= NOT \fsm|y_Q.T3~q\;
\regG|ALT_INV_Q\(8) <= NOT \regG|Q\(8);
\regG|ALT_INV_Q\(7) <= NOT \regG|Q\(7);
\regG|ALT_INV_Q\(6) <= NOT \regG|Q\(6);
\regG|ALT_INV_Q\(5) <= NOT \regG|Q\(5);
\regG|ALT_INV_Q\(4) <= NOT \regG|Q\(4);
\regG|ALT_INV_Q\(3) <= NOT \regG|Q\(3);
\regG|ALT_INV_Q\(2) <= NOT \regG|Q\(2);
\regG|ALT_INV_Q\(1) <= NOT \regG|Q\(1);
\regG|ALT_INV_Q\(0) <= NOT \regG|Q\(0);

-- Location: IOOBUF_X44_Y0_N2
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector11~0_combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X19_Y0_N2
\reg_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_A(0));

-- Location: IOOBUF_X23_Y0_N59
\reg_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_A(1));

-- Location: IOOBUF_X22_Y0_N53
\reg_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_A(2));

-- Location: IOOBUF_X19_Y0_N19
\reg_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_A(3));

-- Location: IOOBUF_X22_Y0_N36
\reg_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_A(4));

-- Location: IOOBUF_X19_Y0_N36
\reg_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_A(5));

-- Location: IOOBUF_X22_Y0_N2
\reg_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_A(6));

-- Location: IOOBUF_X24_Y0_N53
\reg_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_A(7));

-- Location: IOOBUF_X33_Y0_N76
\reg_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_A(8));

-- Location: IOOBUF_X34_Y0_N36
\reg_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_G(0));

-- Location: IOOBUF_X36_Y0_N36
\reg_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_G(1));

-- Location: IOOBUF_X36_Y0_N53
\reg_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_G(2));

-- Location: IOOBUF_X40_Y0_N93
\reg_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_G(3));

-- Location: IOOBUF_X29_Y0_N36
\reg_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_G(4));

-- Location: IOOBUF_X33_Y0_N42
\reg_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_G(5));

-- Location: IOOBUF_X23_Y0_N76
\reg_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_G(6));

-- Location: IOOBUF_X25_Y0_N36
\reg_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_G(7));

-- Location: IOOBUF_X22_Y0_N19
\reg_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_G(8));

-- Location: IOOBUF_X10_Y0_N93
\reg_IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_IR(0));

-- Location: IOOBUF_X10_Y0_N42
\reg_IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_IR(1));

-- Location: IOOBUF_X18_Y0_N36
\reg_IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_IR(2));

-- Location: IOOBUF_X18_Y0_N2
\reg_IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_IR(3));

-- Location: IOOBUF_X18_Y0_N19
\reg_IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_IR(4));

-- Location: IOOBUF_X11_Y0_N2
\reg_IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_IR(5));

-- Location: IOOBUF_X16_Y0_N76
\reg_IR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_IR(6));

-- Location: IOOBUF_X11_Y0_N53
\reg_IR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_IR(7));

-- Location: IOOBUF_X14_Y0_N53
\reg_IR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_IR(8));

-- Location: IOOBUF_X23_Y0_N42
\reg_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_0(0));

-- Location: IOOBUF_X25_Y0_N53
\reg_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_0(1));

-- Location: IOOBUF_X33_Y0_N59
\reg_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_0(2));

-- Location: IOOBUF_X34_Y0_N2
\reg_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_0(3));

-- Location: IOOBUF_X10_Y0_N59
\reg_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_0(4));

-- Location: IOOBUF_X40_Y0_N42
\reg_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_0(5));

-- Location: IOOBUF_X33_Y0_N93
\reg_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_0(6));

-- Location: IOOBUF_X38_Y0_N19
\reg_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_0(7));

-- Location: IOOBUF_X29_Y0_N53
\reg_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_0(8));

-- Location: IOOBUF_X23_Y0_N93
\reg_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_1(0));

-- Location: IOOBUF_X0_Y18_N62
\reg_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_1(1));

-- Location: IOOBUF_X29_Y0_N2
\reg_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_1(2));

-- Location: IOOBUF_X43_Y0_N53
\reg_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_1(3));

-- Location: IOOBUF_X38_Y0_N53
\reg_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_1(4));

-- Location: IOOBUF_X24_Y0_N19
\reg_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_1(5));

-- Location: IOOBUF_X34_Y0_N19
\reg_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_1(6));

-- Location: IOOBUF_X25_Y0_N19
\reg_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_1(7));

-- Location: IOOBUF_X12_Y0_N36
\reg_1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_1(8));

-- Location: IOOBUF_X24_Y0_N36
\Tstep_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T0~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(0));

-- Location: IOOBUF_X12_Y0_N53
\Tstep_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T1~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(1));

-- Location: IOOBUF_X16_Y0_N59
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T2~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X14_Y0_N2
\Tstep_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T3~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(3));

-- Location: IOOBUF_X11_Y0_N36
\busWires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_busWires(0));

-- Location: IOOBUF_X12_Y0_N19
\busWires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_busWires(1));

-- Location: IOOBUF_X14_Y0_N19
\busWires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_busWires(2));

-- Location: IOOBUF_X16_Y0_N93
\busWires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_busWires(3));

-- Location: IOOBUF_X14_Y0_N36
\busWires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_busWires(4));

-- Location: IOOBUF_X11_Y0_N19
\busWires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[5]~28_combout\,
	devoe => ww_devoe,
	o => ww_busWires(5));

-- Location: IOOBUF_X12_Y0_N2
\busWires[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[6]~31_combout\,
	devoe => ww_devoe,
	o => ww_busWires(6));

-- Location: IOOBUF_X16_Y0_N42
\busWires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_busWires(7));

-- Location: IOOBUF_X10_Y0_N76
\busWires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[8]~37_combout\,
	devoe => ww_devoe,
	o => ww_busWires(8));

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

-- Location: IOIBUF_X36_Y0_N18
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X13_Y4_N44
\ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(7));

-- Location: IOIBUF_X29_Y0_N18
\run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: MLABCELL_X13_Y3_N21
\fsm|y_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T1~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( \run~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ALT_INV_run~input_o\,
	combout => \fsm|y_D.T1~0_combout\);

-- Location: IOIBUF_X18_Y0_N52
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X13_Y4_N56
\fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_D.T1~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T1~q\);

-- Location: LABCELL_X12_Y4_N45
\fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T2~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(7) & !\ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|y_D.T2~0_combout\);

-- Location: FF_X13_Y4_N35
\fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_D.T2~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T2~q\);

-- Location: MLABCELL_X13_Y3_N0
\fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = ( \fsm|y_Q.T0~q\ & ( \fsm|y_Q.T2~q\ & ( (\ir0|Q\(7) & !\ir0|Q\(8)) ) ) ) # ( !\fsm|y_Q.T0~q\ & ( \fsm|y_Q.T2~q\ & ( ((\ir0|Q\(7) & !\ir0|Q\(8))) # (\run~input_o\) ) ) ) # ( \fsm|y_Q.T0~q\ & ( !\fsm|y_Q.T2~q\ & ( (\ir0|Q\(7) & 
-- (\fsm|y_Q.T1~q\ & !\ir0|Q\(8))) ) ) ) # ( !\fsm|y_Q.T0~q\ & ( !\fsm|y_Q.T2~q\ & ( ((\ir0|Q\(7) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(8)))) # (\run~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000100010000000001011111000011110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ALT_INV_run~input_o\,
	datad => \ir0|ALT_INV_Q\(8),
	datae => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|Selector1~0_combout\);

-- Location: FF_X13_Y3_N2
\fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|Selector1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T0~q\);

-- Location: FF_X13_Y4_N8
\ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(8));

-- Location: LABCELL_X14_Y3_N18
\fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T3~0_combout\ = ( \ir0|Q\(7) & ( \fsm|y_Q.T2~q\ & ( !\ir0|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(8),
	datae => \ir0|ALT_INV_Q\(7),
	dataf => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|y_D.T3~0_combout\);

-- Location: FF_X13_Y3_N5
\fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_D.T3~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T3~q\);

-- Location: MLABCELL_X13_Y3_N24
\fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector11~0_combout\ = ( \ir0|Q\(7) & ( \fsm|y_Q.T3~q\ ) ) # ( !\ir0|Q\(7) & ( ((!\ir0|Q\(8) & \fsm|y_Q.T1~q\)) # (\fsm|y_Q.T3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_y_Q.T3~q\,
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector11~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X13_Y4_N5
\ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(1));

-- Location: IOIBUF_X38_Y0_N35
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X13_Y4_N41
\ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(6));

-- Location: IOIBUF_X19_Y0_N52
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X13_Y4_N38
\ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(0));

-- Location: MLABCELL_X13_Y4_N27
\fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector14~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(0) & (((!\ir0|Q\(6) & !\ir0|Q\(7))) # (\fsm|y_Q.T2~q\))) ) ) # ( !\fsm|y_Q.T1~q\ & ( (\fsm|y_Q.T2~q\ & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000110101010000000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector14~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X13_Y4_N11
\ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(5));

-- Location: MLABCELL_X13_Y4_N9
\fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(7) & !\ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector16~0_combout\);

-- Location: IOIBUF_X0_Y18_N95
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X13_Y4_N14
\ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(2));

-- Location: IOIBUF_X24_Y0_N1
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X13_Y4_N20
\ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(4));

-- Location: IOIBUF_X40_Y0_N75
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X13_Y4_N23
\ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(3));

-- Location: MLABCELL_X13_Y4_N30
\fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = (!\ir0|Q\(4) & \ir0|Q\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(3),
	combout => \fsm|Selector4~0_combout\);

-- Location: MLABCELL_X13_Y4_N12
\fsm|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~1_combout\ = ( \fsm|Selector4~0_combout\ & ( ((!\ir0|Q\(1) & (\fsm|Selector14~0_combout\ & !\ir0|Q\(2)))) # (\fsm|Selector16~0_combout\) ) ) # ( !\fsm|Selector4~0_combout\ & ( (!\ir0|Q\(1) & (\fsm|Selector14~0_combout\ & !\ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000101111000011110010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datab => \fsm|ALT_INV_Selector14~0_combout\,
	datac => \fsm|ALT_INV_Selector16~0_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector4~0_combout\,
	combout => \fsm|Selector16~1_combout\);

-- Location: LABCELL_X12_Y4_N3
\fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~0_combout\ = ( \fsm|y_Q.T1~q\ & ( !\ir0|Q\(8) ) ) # ( !\fsm|y_Q.T1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector18~0_combout\);

-- Location: MLABCELL_X13_Y4_N36
\fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(1) = ( \fsm|Selector18~0_combout\ & ( \fsm|Selector16~1_combout\ ) ) # ( !\fsm|Selector18~0_combout\ & ( \fsm|R0toR7out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_Selector16~1_combout\,
	dataf => \fsm|ALT_INV_Selector18~0_combout\,
	combout => \fsm|R0toR7out\(1));

-- Location: MLABCELL_X13_Y4_N3
\fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(4) & (\ir0|Q\(7) & !\ir0|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(4),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(3),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector0~0_combout\);

-- Location: MLABCELL_X13_Y4_N48
\fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~0_combout\ = ( \ir0|Q\(6) & ( (\fsm|y_Q.T2~q\ & !\ir0|Q\(0)) ) ) # ( !\ir0|Q\(6) & ( (!\ir0|Q\(0) & (((!\ir0|Q\(7) & \fsm|y_Q.T1~q\)) # (\fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011010000010100001101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(0),
	datad => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Selector13~0_combout\);

-- Location: MLABCELL_X13_Y4_N18
\fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~0_combout\ = ( \ir0|Q\(2) & ( (\fsm|Selector0~0_combout\ & !\ir0|Q\(5)) ) ) # ( !\ir0|Q\(2) & ( (!\fsm|Selector0~0_combout\ & (((\fsm|Selector13~0_combout\ & \ir0|Q\(1))))) # (\fsm|Selector0~0_combout\ & ((!\ir0|Q\(5)) # 
-- ((\fsm|Selector13~0_combout\ & \ir0|Q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111010001000100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector0~0_combout\,
	datab => \ir0|ALT_INV_Q\(5),
	datac => \fsm|ALT_INV_Selector13~0_combout\,
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector15~0_combout\);

-- Location: MLABCELL_X13_Y4_N39
\fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(2) = (!\fsm|Selector18~0_combout\ & ((\fsm|R0toR7out\(2)))) # (\fsm|Selector18~0_combout\ & (\fsm|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector15~0_combout\,
	datab => \fsm|ALT_INV_Selector18~0_combout\,
	datac => \fsm|ALT_INV_R0toR7out\(2),
	combout => \fsm|R0toR7out\(2));

-- Location: MLABCELL_X13_Y4_N57
\fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (!\ir0|Q\(4) & !\ir0|Q\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(3),
	combout => \fsm|Selector3~0_combout\);

-- Location: LABCELL_X12_Y4_N30
\fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~0_combout\ = ( \fsm|Selector3~0_combout\ & ( ((\fsm|Selector13~0_combout\ & (!\ir0|Q\(1) & !\ir0|Q\(2)))) # (\fsm|Selector16~0_combout\) ) ) # ( !\fsm|Selector3~0_combout\ & ( (\fsm|Selector13~0_combout\ & (!\ir0|Q\(1) & !\ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000001110101010101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector16~0_combout\,
	datab => \fsm|ALT_INV_Selector13~0_combout\,
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector17~0_combout\);

-- Location: LABCELL_X12_Y4_N24
\fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(0) = ( \fsm|Selector17~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|R0toR7out\(0)) ) ) # ( !\fsm|Selector17~0_combout\ & ( (\fsm|R0toR7out\(0) & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector17~0_combout\,
	combout => \fsm|R0toR7out\(0));

-- Location: MLABCELL_X13_Y4_N24
\mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~8_combout\ = ( !\fsm|R0toR7out\(0) & ( !\fsm|R0toR7out\(1) $ (\fsm|R0toR7out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(0),
	combout => \mux0|y[1]~8_combout\);

-- Location: LABCELL_X12_Y4_N36
\fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~1_combout\ = (\fsm|y_Q.T1~q\ & (\ir0|Q\(7) & \ir0|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector13~1_combout\);

-- Location: MLABCELL_X13_Y4_N21
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = (\ir0|Q\(4) & \ir0|Q\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(3),
	combout => \fsm|Selector10~0_combout\);

-- Location: LABCELL_X12_Y4_N0
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = ( \fsm|Selector10~0_combout\ & ( ((\ir0|Q\(1) & (\fsm|Selector14~0_combout\ & \ir0|Q\(2)))) # (\fsm|Selector13~1_combout\) ) ) # ( !\fsm|Selector10~0_combout\ & ( (\ir0|Q\(1) & (\fsm|Selector14~0_combout\ & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datab => \fsm|ALT_INV_Selector14~0_combout\,
	datac => \fsm|ALT_INV_Selector13~1_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|Selector2~0_combout\);

-- Location: LABCELL_X12_Y4_N33
\fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(7) = ( \fsm|Selector2~0_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|R0toR7out\(7)) ) ) # ( !\fsm|Selector2~0_combout\ & ( (\fsm|R0toR7out\(7) & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(7),
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|R0toR7out\(7));

-- Location: LABCELL_X12_Y4_N18
\fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = ( \ir0|Q\(2) & ( (!\fsm|Selector0~0_combout\ & (\fsm|Selector13~0_combout\ & ((\ir0|Q\(1))))) # (\fsm|Selector0~0_combout\ & (((\fsm|Selector13~0_combout\ & \ir0|Q\(1))) # (\ir0|Q\(5)))) ) ) # ( !\ir0|Q\(2) & ( 
-- (\fsm|Selector0~0_combout\ & \ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector0~0_combout\,
	datab => \fsm|ALT_INV_Selector13~0_combout\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector0~1_combout\);

-- Location: LABCELL_X12_Y4_N39
\fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(6) = ( \fsm|Selector0~1_combout\ & ( (\fsm|Selector18~0_combout\) # (\fsm|R0toR7out\(6)) ) ) # ( !\fsm|Selector0~1_combout\ & ( (\fsm|R0toR7out\(6) & !\fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(6),
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_Selector0~1_combout\,
	combout => \fsm|R0toR7out\(6));

-- Location: LABCELL_X12_Y4_N54
\fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector12~0_combout\ = ( \fsm|Selector14~0_combout\ & ( (!\ir0|Q\(1) & (((\fsm|Selector13~1_combout\ & \fsm|Selector4~0_combout\)) # (\ir0|Q\(2)))) # (\ir0|Q\(1) & (\fsm|Selector13~1_combout\ & (\fsm|Selector4~0_combout\))) ) ) # ( 
-- !\fsm|Selector14~0_combout\ & ( (\fsm|Selector13~1_combout\ & \fsm|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datab => \fsm|ALT_INV_Selector13~1_combout\,
	datac => \fsm|ALT_INV_Selector4~0_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector14~0_combout\,
	combout => \fsm|Selector12~0_combout\);

-- Location: LABCELL_X12_Y4_N21
\fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(5) = ( \fsm|R0toR7out\(5) & ( (!\fsm|Selector18~0_combout\) # (\fsm|Selector12~0_combout\) ) ) # ( !\fsm|R0toR7out\(5) & ( (\fsm|Selector12~0_combout\ & \fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector12~0_combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \fsm|R0toR7out\(5));

-- Location: LABCELL_X12_Y4_N51
\fsm|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~2_combout\ = ( \fsm|Selector3~0_combout\ & ( ((\fsm|Selector13~0_combout\ & (\ir0|Q\(2) & !\ir0|Q\(1)))) # (\fsm|Selector13~1_combout\) ) ) # ( !\fsm|Selector3~0_combout\ & ( (\fsm|Selector13~0_combout\ & (\ir0|Q\(2) & !\ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector13~1_combout\,
	datab => \fsm|ALT_INV_Selector13~0_combout\,
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector13~2_combout\);

-- Location: LABCELL_X12_Y4_N27
\fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(4) = ( \fsm|R0toR7out\(4) & ( (!\fsm|Selector18~0_combout\) # (\fsm|Selector13~2_combout\) ) ) # ( !\fsm|R0toR7out\(4) & ( (\fsm|Selector13~2_combout\ & \fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector13~2_combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	dataf => \fsm|ALT_INV_R0toR7out\(4),
	combout => \fsm|R0toR7out\(4));

-- Location: MLABCELL_X13_Y4_N33
\fsm|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector14~1_combout\ = ( \fsm|Selector10~0_combout\ & ( ((\fsm|Selector14~0_combout\ & (!\ir0|Q\(2) & \ir0|Q\(1)))) # (\fsm|Selector16~0_combout\) ) ) # ( !\fsm|Selector10~0_combout\ & ( (\fsm|Selector14~0_combout\ & (!\ir0|Q\(2) & \ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001010101011101010101010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector16~0_combout\,
	datab => \fsm|ALT_INV_Selector14~0_combout\,
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|Selector14~1_combout\);

-- Location: MLABCELL_X13_Y4_N0
\fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(3) = (!\fsm|Selector18~0_combout\ & ((\fsm|R0toR7out\(3)))) # (\fsm|Selector18~0_combout\ & (\fsm|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector18~0_combout\,
	datac => \fsm|ALT_INV_Selector14~1_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(3),
	combout => \fsm|R0toR7out\(3));

-- Location: LABCELL_X12_Y4_N12
\mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~7_combout\ = ( \fsm|R0toR7out\(3) & ( !\fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out\(7) & (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(5) & !\fsm|R0toR7out\(4)))) ) ) ) # ( !\fsm|R0toR7out\(3) & ( !\fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out\(7) & 
-- ((!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(5) $ (!\fsm|R0toR7out\(4)))) # (\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(5) & !\fsm|R0toR7out\(4))))) # (\fsm|R0toR7out\(7) & (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(5) & !\fsm|R0toR7out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100010000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(7),
	datab => \fsm|ALT_INV_R0toR7out\(6),
	datac => \fsm|ALT_INV_R0toR7out\(5),
	datad => \fsm|ALT_INV_R0toR7out\(4),
	datae => \fsm|ALT_INV_R0toR7out\(3),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|y[1]~7_combout\);

-- Location: MLABCELL_X13_Y4_N45
\mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~9_combout\ = ( \fsm|y_Q.T1~q\ & ( \mux0|y[1]~7_combout\ & ( (!\ir0|Q\(8) & (!\ir0|Q\(7) & \ir0|Q\(6))) ) ) ) # ( \fsm|y_Q.T1~q\ & ( !\mux0|y[1]~7_combout\ & ( ((!\ir0|Q\(8) & (!\ir0|Q\(7) & \ir0|Q\(6)))) # (\mux0|y[1]~8_combout\) ) ) ) # ( 
-- !\fsm|y_Q.T1~q\ & ( !\mux0|y[1]~7_combout\ & ( \mux0|y[1]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011101010100000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~8_combout\,
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \mux0|ALT_INV_y[1]~7_combout\,
	combout => \mux0|y[1]~9_combout\);

-- Location: MLABCELL_X13_Y4_N54
\mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~6_combout\ = ( !\fsm|R0toR7out\(6) & ( (!\fsm|R0toR7out\(4) & (!\fsm|R0toR7out\(5) & (!\fsm|R0toR7out\(3) & !\fsm|R0toR7out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(4),
	datab => \fsm|ALT_INV_R0toR7out\(5),
	datac => \fsm|ALT_INV_R0toR7out\(3),
	datad => \fsm|ALT_INV_R0toR7out\(7),
	dataf => \fsm|ALT_INV_R0toR7out\(6),
	combout => \mux0|y[1]~6_combout\);

-- Location: MLABCELL_X13_Y4_N51
\fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal0~0_combout\ = (\ir0|Q\(7) & !\ir0|Q\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Equal0~0_combout\);

-- Location: LABCELL_X16_Y4_N48
\fsm|Gout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Gout~combout\ = ( \fsm|y_Q.T3~q\ & ( \fsm|Gout~combout\ ) ) # ( \fsm|y_Q.T3~q\ & ( !\fsm|Gout~combout\ & ( \fsm|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Equal0~0_combout\,
	datae => \fsm|ALT_INV_y_Q.T3~q\,
	dataf => \fsm|ALT_INV_Gout~combout\,
	combout => \fsm|Gout~combout\);

-- Location: LABCELL_X14_Y4_N0
\mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~12_combout\ = ( \fsm|R0toR7out\(2) & ( !\fsm|Gout~combout\ & ( (!\mux0|y[1]~9_combout\ & (!\fsm|R0toR7out\(0) & ((\fsm|R0toR7out\(1)) # (\mux0|y[1]~6_combout\)))) ) ) ) # ( !\fsm|R0toR7out\(2) & ( !\fsm|Gout~combout\ & ( (!\mux0|y[1]~9_combout\ 
-- & ((!\mux0|y[1]~6_combout\ & (!\fsm|R0toR7out\(1) & !\fsm|R0toR7out\(0))) # (\mux0|y[1]~6_combout\ & ((!\fsm|R0toR7out\(1)) # (!\fsm|R0toR7out\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100000001010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~9_combout\,
	datab => \mux0|ALT_INV_y[1]~6_combout\,
	datac => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_R0toR7out\(0),
	datae => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_Gout~combout\,
	combout => \mux0|y[1]~12_combout\);

-- Location: MLABCELL_X13_Y3_N42
\fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = ( !\ir0|Q\(8) & ( \ir0|Q\(7) & ( (\fsm|y_Q.T3~q\ & !\ir0|Q\(5)) ) ) ) # ( !\ir0|Q\(8) & ( !\ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & !\ir0|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T3~q\,
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(5),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector3~1_combout\);

-- Location: LABCELL_X12_Y5_N48
\fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = ( \fsm|Selector3~1_combout\ & ( \fsm|Selector10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector10~0_combout\,
	dataf => \fsm|ALT_INV_Selector3~1_combout\,
	combout => \fsm|Selector6~0_combout\);

-- Location: FF_X13_Y5_N20
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LABCELL_X12_Y4_N42
\mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~0_combout\ = ( \fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(4) ) ) # ( !\fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(4) & \fsm|R0toR7out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(4),
	datac => \fsm|ALT_INV_R0toR7out\(6),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|y[1]~0_combout\);

-- Location: LABCELL_X12_Y4_N57
\mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~1_combout\ = ( !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|y[1]~1_combout\);

-- Location: MLABCELL_X13_Y3_N33
\fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~1_combout\ = ( \ir0|Q\(7) & ( (\fsm|y_Q.T3~q\ & (\ir0|Q\(5) & !\ir0|Q\(8))) ) ) # ( !\ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & (\ir0|Q\(5) & !\ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T3~q\,
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector10~1_combout\);

-- Location: MLABCELL_X13_Y3_N6
\fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = ( !\ir0|Q\(3) & ( \ir0|Q\(4) & ( \fsm|Selector10~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector10~1_combout\,
	datae => \ir0|ALT_INV_Q\(3),
	dataf => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector9~0_combout\);

-- Location: FF_X12_Y4_N8
\reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(0));

-- Location: MLABCELL_X13_Y3_N57
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( \fsm|Selector10~1_combout\ & ( \fsm|Selector4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector4~0_combout\,
	dataf => \fsm|ALT_INV_Selector10~1_combout\,
	combout => \fsm|Selector8~0_combout\);

-- Location: FF_X12_Y4_N50
\reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(0));

-- Location: LABCELL_X12_Y5_N24
\fsm|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~2_combout\ = (\fsm|Selector10~1_combout\ & \fsm|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector10~1_combout\,
	datac => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|Selector10~2_combout\);

-- Location: FF_X12_Y4_N47
\reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(0));

-- Location: LABCELL_X10_Y4_N0
\reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \reg4|Q[0]~feeder_combout\);

-- Location: MLABCELL_X13_Y3_N30
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \fsm|Selector10~1_combout\ & ( \fsm|Selector3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_Selector3~0_combout\,
	dataf => \fsm|ALT_INV_Selector10~1_combout\,
	combout => \fsm|Selector7~0_combout\);

-- Location: FF_X10_Y4_N1
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[0]~feeder_combout\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LABCELL_X12_Y4_N9
\mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~2_combout\ = ( \reg7|Q\(0) & ( \reg4|Q\(0) & ( (!\mux0|y[1]~0_combout\) # ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(0)))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(0)))) ) ) ) # ( !\reg7|Q\(0) & ( \reg4|Q\(0) & ( (!\mux0|y[1]~0_combout\ & 
-- (!\mux0|y[1]~1_combout\)) # (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(0)))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(0))))) ) ) ) # ( \reg7|Q\(0) & ( !\reg4|Q\(0) & ( (!\mux0|y[1]~0_combout\ & (\mux0|y[1]~1_combout\)) # 
-- (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(0)))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(0))))) ) ) ) # ( !\reg7|Q\(0) & ( !\reg4|Q\(0) & ( (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(0)))) # (\mux0|y[1]~1_combout\ & 
-- (\reg6|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~0_combout\,
	datab => \mux0|ALT_INV_y[1]~1_combout\,
	datac => \reg6|ALT_INV_Q\(0),
	datad => \reg5|ALT_INV_Q\(0),
	datae => \reg7|ALT_INV_Q\(0),
	dataf => \reg4|ALT_INV_Q\(0),
	combout => \mux0|y[0]~2_combout\);

-- Location: MLABCELL_X13_Y3_N54
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \fsm|Selector3~1_combout\ & ( (\ir0|Q\(4) & !\ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(4),
	datac => \ir0|ALT_INV_Q\(3),
	dataf => \fsm|ALT_INV_Selector3~1_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: FF_X13_Y5_N59
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: MLABCELL_X13_Y5_N3
\mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~4_combout\ = ( !\fsm|R0toR7out\(1) & ( !\fsm|R0toR7out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|y[1]~4_combout\);

-- Location: LABCELL_X14_Y3_N3
\reg1|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \reg1|Q[0]~feeder_combout\);

-- Location: MLABCELL_X13_Y3_N12
\fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~1_combout\ = ( \fsm|Selector3~1_combout\ & ( \fsm|Selector4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector4~0_combout\,
	dataf => \fsm|ALT_INV_Selector3~1_combout\,
	combout => \fsm|Selector4~1_combout\);

-- Location: FF_X14_Y3_N4
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[0]~feeder_combout\,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: MLABCELL_X13_Y5_N0
\mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~3_combout\ = ( \fsm|R0toR7out\(3) & ( !\fsm|R0toR7out\(1) ) ) # ( !\fsm|R0toR7out\(3) & ( (\fsm|R0toR7out\(2) & !\fsm|R0toR7out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(2),
	datab => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_R0toR7out\(3),
	combout => \mux0|y[1]~3_combout\);

-- Location: MLABCELL_X13_Y5_N21
\mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~5_combout\ = ( \reg1|Q\(0) & ( \mux0|y[1]~3_combout\ & ( (!\mux0|y[1]~4_combout\ & ((\reg2|Q\(0)))) # (\mux0|y[1]~4_combout\ & (\reg3|Q\(0))) ) ) ) # ( !\reg1|Q\(0) & ( \mux0|y[1]~3_combout\ & ( (!\mux0|y[1]~4_combout\ & ((\reg2|Q\(0)))) # 
-- (\mux0|y[1]~4_combout\ & (\reg3|Q\(0))) ) ) ) # ( \reg1|Q\(0) & ( !\mux0|y[1]~3_combout\ & ( (!\mux0|y[1]~4_combout\) # (\mux0|y[0]~2_combout\) ) ) ) # ( !\reg1|Q\(0) & ( !\mux0|y[1]~3_combout\ & ( (\mux0|y[0]~2_combout\ & \mux0|y[1]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(0),
	datab => \mux0|ALT_INV_y[0]~2_combout\,
	datac => \reg2|ALT_INV_Q\(0),
	datad => \mux0|ALT_INV_y[1]~4_combout\,
	datae => \reg1|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[1]~3_combout\,
	combout => \mux0|y[0]~5_combout\);

-- Location: MLABCELL_X13_Y4_N15
\fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal0~1_combout\ = ( !\ir0|Q\(8) & ( (\ir0|Q\(6) & \ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Equal0~1_combout\);

-- Location: LABCELL_X14_Y4_N12
\fsm|AddSub\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|AddSub~combout\ = ( \fsm|Equal0~1_combout\ & ( (\fsm|AddSub~combout\) # (\fsm|y_Q.T2~q\) ) ) # ( !\fsm|Equal0~1_combout\ & ( (!\fsm|y_Q.T2~q\ & \fsm|AddSub~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T2~q\,
	datad => \fsm|ALT_INV_AddSub~combout\,
	dataf => \fsm|ALT_INV_Equal0~1_combout\,
	combout => \fsm|AddSub~combout\);

-- Location: LABCELL_X14_Y4_N30
\addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~38_cout\ = CARRY(( \fsm|AddSub~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_AddSub~combout\,
	cin => GND,
	cout => \addsub0|Add0~38_cout\);

-- Location: LABCELL_X14_Y4_N33
\addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~1_sumout\ = SUM(( !\mux0|y[0]~13_combout\ $ (!\fsm|AddSub~combout\) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))
-- \addsub0|Add0~2\ = CARRY(( !\mux0|y[0]~13_combout\ $ (!\fsm|AddSub~combout\) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[0]~13_combout\,
	datac => \fsm|ALT_INV_AddSub~combout\,
	dataf => \regA|ALT_INV_Q\(0),
	cin => \addsub0|Add0~38_cout\,
	sumout => \addsub0|Add0~1_sumout\,
	cout => \addsub0|Add0~2\);

-- Location: FF_X14_Y4_N35
\regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~1_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(0));

-- Location: MLABCELL_X13_Y3_N51
\fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~2_combout\ = ( \fsm|Selector3~0_combout\ & ( \fsm|Selector3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_Selector3~0_combout\,
	dataf => \fsm|ALT_INV_Selector3~1_combout\,
	combout => \fsm|Selector3~2_combout\);

-- Location: FF_X14_Y4_N7
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[0]~13_combout\,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: LABCELL_X14_Y4_N15
\mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~10_combout\ = ( \ir0|Q\(6) & ( (\fsm|Gout~combout\ & ((!\fsm|y_Q.T1~q\) # ((\ir0|Q\(8)) # (\ir0|Q\(7))))) ) ) # ( !\ir0|Q\(6) & ( \fsm|Gout~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000101010101010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Gout~combout\,
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \mux0|y[1]~10_combout\);

-- Location: LABCELL_X14_Y4_N18
\mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~11_combout\ = ( \fsm|R0toR7out\(2) & ( !\mux0|y[1]~10_combout\ ) ) # ( !\fsm|R0toR7out\(2) & ( !\mux0|y[1]~10_combout\ & ( ((!\mux0|y[1]~6_combout\) # ((!\fsm|R0toR7out\(0)) # (\fsm|R0toR7out\(1)))) # (\mux0|y[1]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~9_combout\,
	datab => \mux0|ALT_INV_y[1]~6_combout\,
	datac => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_R0toR7out\(0),
	datae => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \mux0|ALT_INV_y[1]~10_combout\,
	combout => \mux0|y[1]~11_combout\);

-- Location: LABCELL_X14_Y4_N6
\mux0|y[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~13_combout\ = ( \reg0|Q\(0) & ( \mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\ & ((\data_in[0]~input_o\))) # (\mux0|y[1]~12_combout\ & (\mux0|y[0]~5_combout\)) ) ) ) # ( !\reg0|Q\(0) & ( \mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\ 
-- & ((\data_in[0]~input_o\))) # (\mux0|y[1]~12_combout\ & (\mux0|y[0]~5_combout\)) ) ) ) # ( \reg0|Q\(0) & ( !\mux0|y[1]~11_combout\ & ( (\regG|Q\(0)) # (\mux0|y[1]~12_combout\) ) ) ) # ( !\reg0|Q\(0) & ( !\mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\ 
-- & \regG|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~12_combout\,
	datab => \mux0|ALT_INV_y[0]~5_combout\,
	datac => \regG|ALT_INV_Q\(0),
	datad => \ALT_INV_data_in[0]~input_o\,
	datae => \reg0|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[1]~11_combout\,
	combout => \mux0|y[0]~13_combout\);

-- Location: LABCELL_X14_Y3_N51
\regA|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \regA|Q[0]~feeder_combout\);

-- Location: MLABCELL_X13_Y4_N6
\fsm|Ain\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Ain~combout\ = ( \fsm|Equal0~0_combout\ & ( (\fsm|Ain~combout\) # (\fsm|y_Q.T1~q\) ) ) # ( !\fsm|Equal0~0_combout\ & ( (!\fsm|y_Q.T1~q\ & \fsm|Ain~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_Ain~combout\,
	dataf => \fsm|ALT_INV_Equal0~0_combout\,
	combout => \fsm|Ain~combout\);

-- Location: FF_X14_Y3_N53
\regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[0]~feeder_combout\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(0));

-- Location: FF_X14_Y4_N11
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: FF_X14_Y5_N56
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: FF_X14_Y3_N55
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X14_Y4_N26
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: FF_X14_Y5_N2
\reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(1));

-- Location: LABCELL_X12_Y5_N21
\reg7|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[1]~feeder_combout\ = \mux0|y[1]~16_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[1]~16_combout\,
	combout => \reg7|Q[1]~feeder_combout\);

-- Location: FF_X12_Y5_N22
\reg7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[1]~feeder_combout\,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(1));

-- Location: FF_X13_Y3_N10
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: FF_X13_Y4_N49
\reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(1));

-- Location: LABCELL_X14_Y5_N3
\mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~14_combout\ = ( \reg4|Q\(1) & ( \reg5|Q\(1) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(1)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(1)))) ) ) ) # ( !\reg4|Q\(1) & ( \reg5|Q\(1) & ( (!\mux0|y[1]~1_combout\ & 
-- (((\mux0|y[1]~0_combout\)))) # (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(1)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(1))))) ) ) ) # ( \reg4|Q\(1) & ( !\reg5|Q\(1) & ( (!\mux0|y[1]~1_combout\ & (((!\mux0|y[1]~0_combout\)))) # 
-- (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(1)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(1))))) ) ) ) # ( !\reg4|Q\(1) & ( !\reg5|Q\(1) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(1)))) # (\mux0|y[1]~0_combout\ & 
-- (\reg6|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|ALT_INV_Q\(1),
	datab => \mux0|ALT_INV_y[1]~1_combout\,
	datac => \reg7|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[1]~0_combout\,
	datae => \reg4|ALT_INV_Q\(1),
	dataf => \reg5|ALT_INV_Q\(1),
	combout => \mux0|y[1]~14_combout\);

-- Location: LABCELL_X14_Y5_N57
\mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~15_combout\ = ( \mux0|y[1]~4_combout\ & ( \mux0|y[1]~14_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg3|Q\(1)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( \mux0|y[1]~14_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(1))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(1)))) ) ) ) # ( \mux0|y[1]~4_combout\ & ( !\mux0|y[1]~14_combout\ & ( (\reg3|Q\(1) & \mux0|y[1]~3_combout\) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( !\mux0|y[1]~14_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(1))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(1),
	datab => \mux0|ALT_INV_y[1]~3_combout\,
	datac => \reg1|ALT_INV_Q\(1),
	datad => \reg2|ALT_INV_Q\(1),
	datae => \mux0|ALT_INV_y[1]~4_combout\,
	dataf => \mux0|ALT_INV_y[1]~14_combout\,
	combout => \mux0|y[1]~15_combout\);

-- Location: LABCELL_X14_Y4_N36
\addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~5_sumout\ = SUM(( !\mux0|y[1]~16_combout\ $ (!\fsm|AddSub~combout\) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))
-- \addsub0|Add0~6\ = CARRY(( !\mux0|y[1]~16_combout\ $ (!\fsm|AddSub~combout\) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~16_combout\,
	datac => \fsm|ALT_INV_AddSub~combout\,
	dataf => \regA|ALT_INV_Q\(1),
	cin => \addsub0|Add0~2\,
	sumout => \addsub0|Add0~5_sumout\,
	cout => \addsub0|Add0~6\);

-- Location: FF_X14_Y4_N38
\regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~5_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(1));

-- Location: LABCELL_X14_Y4_N27
\mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~16_combout\ = ( \regG|Q\(1) & ( \mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\ & (\data_in[1]~input_o\)) # (\mux0|y[1]~12_combout\ & ((\mux0|y[1]~15_combout\))) ) ) ) # ( !\regG|Q\(1) & ( \mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\ 
-- & (\data_in[1]~input_o\)) # (\mux0|y[1]~12_combout\ & ((\mux0|y[1]~15_combout\))) ) ) ) # ( \regG|Q\(1) & ( !\mux0|y[1]~11_combout\ & ( (!\mux0|y[1]~12_combout\) # (\reg0|Q\(1)) ) ) ) # ( !\regG|Q\(1) & ( !\mux0|y[1]~11_combout\ & ( 
-- (\mux0|y[1]~12_combout\ & \reg0|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~12_combout\,
	datab => \ALT_INV_data_in[1]~input_o\,
	datac => \reg0|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[1]~15_combout\,
	datae => \regG|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[1]~11_combout\,
	combout => \mux0|y[1]~16_combout\);

-- Location: FF_X14_Y3_N32
\regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(1));

-- Location: LABCELL_X14_Y3_N45
\reg0|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[2]~feeder_combout\ = ( \mux0|y[2]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~19_combout\,
	combout => \reg0|Q[2]~feeder_combout\);

-- Location: FF_X14_Y3_N47
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[2]~feeder_combout\,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: LABCELL_X14_Y4_N39
\addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~9_sumout\ = SUM(( \regA|Q\(2) ) + ( !\mux0|y[2]~19_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~6\ ))
-- \addsub0|Add0~10\ = CARRY(( \regA|Q\(2) ) + ( !\mux0|y[2]~19_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[2]~19_combout\,
	datac => \fsm|ALT_INV_AddSub~combout\,
	datad => \regA|ALT_INV_Q\(2),
	cin => \addsub0|Add0~6\,
	sumout => \addsub0|Add0~9_sumout\,
	cout => \addsub0|Add0~10\);

-- Location: FF_X14_Y4_N41
\regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~9_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(2));

-- Location: LABCELL_X14_Y3_N54
\reg1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[2]~feeder_combout\ = \mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[2]~19_combout\,
	combout => \reg1|Q[2]~feeder_combout\);

-- Location: FF_X14_Y3_N56
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[2]~feeder_combout\,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X13_Y5_N8
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: FF_X13_Y5_N38
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X12_Y5_N28
\reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(2));

-- Location: LABCELL_X14_Y6_N27
\reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[2]~feeder_combout\ = \mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[2]~19_combout\,
	combout => \reg4|Q[2]~feeder_combout\);

-- Location: FF_X14_Y6_N28
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[2]~feeder_combout\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: FF_X13_Y5_N44
\reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(2));

-- Location: LABCELL_X14_Y6_N6
\reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[2]~feeder_combout\ = \mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[2]~19_combout\,
	combout => \reg5|Q[2]~feeder_combout\);

-- Location: FF_X14_Y6_N7
\reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[2]~feeder_combout\,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(2));

-- Location: MLABCELL_X13_Y5_N45
\mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~17_combout\ = ( \mux0|y[1]~1_combout\ & ( \reg5|Q\(2) & ( (!\mux0|y[1]~0_combout\ & (\reg7|Q\(2))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(2)))) ) ) ) # ( !\mux0|y[1]~1_combout\ & ( \reg5|Q\(2) & ( (\mux0|y[1]~0_combout\) # (\reg4|Q\(2)) ) ) ) # 
-- ( \mux0|y[1]~1_combout\ & ( !\reg5|Q\(2) & ( (!\mux0|y[1]~0_combout\ & (\reg7|Q\(2))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(2)))) ) ) ) # ( !\mux0|y[1]~1_combout\ & ( !\reg5|Q\(2) & ( (\reg4|Q\(2) & !\mux0|y[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|ALT_INV_Q\(2),
	datab => \reg4|ALT_INV_Q\(2),
	datac => \reg6|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[1]~0_combout\,
	datae => \mux0|ALT_INV_y[1]~1_combout\,
	dataf => \reg5|ALT_INV_Q\(2),
	combout => \mux0|y[2]~17_combout\);

-- Location: MLABCELL_X13_Y5_N39
\mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~18_combout\ = ( \reg3|Q\(2) & ( \mux0|y[2]~17_combout\ & ( ((!\mux0|y[1]~3_combout\ & (\reg1|Q\(2))) # (\mux0|y[1]~3_combout\ & ((\reg2|Q\(2))))) # (\mux0|y[1]~4_combout\) ) ) ) # ( !\reg3|Q\(2) & ( \mux0|y[2]~17_combout\ & ( 
-- (!\mux0|y[1]~3_combout\ & (((\mux0|y[1]~4_combout\)) # (\reg1|Q\(2)))) # (\mux0|y[1]~3_combout\ & (((\reg2|Q\(2) & !\mux0|y[1]~4_combout\)))) ) ) ) # ( \reg3|Q\(2) & ( !\mux0|y[2]~17_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(2) & 
-- ((!\mux0|y[1]~4_combout\)))) # (\mux0|y[1]~3_combout\ & (((\mux0|y[1]~4_combout\) # (\reg2|Q\(2))))) ) ) ) # ( !\reg3|Q\(2) & ( !\mux0|y[2]~17_combout\ & ( (!\mux0|y[1]~4_combout\ & ((!\mux0|y[1]~3_combout\ & (\reg1|Q\(2))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~3_combout\,
	datab => \reg1|ALT_INV_Q\(2),
	datac => \reg2|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[1]~4_combout\,
	datae => \reg3|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~17_combout\,
	combout => \mux0|y[2]~18_combout\);

-- Location: MLABCELL_X13_Y5_N9
\mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~19_combout\ = ( \data_in[2]~input_o\ & ( \mux0|y[2]~18_combout\ & ( ((!\mux0|y[1]~12_combout\ & ((\regG|Q\(2)))) # (\mux0|y[1]~12_combout\ & (\reg0|Q\(2)))) # (\mux0|y[1]~11_combout\) ) ) ) # ( !\data_in[2]~input_o\ & ( \mux0|y[2]~18_combout\ & 
-- ( (!\mux0|y[1]~12_combout\ & (((\regG|Q\(2) & !\mux0|y[1]~11_combout\)))) # (\mux0|y[1]~12_combout\ & (((\mux0|y[1]~11_combout\)) # (\reg0|Q\(2)))) ) ) ) # ( \data_in[2]~input_o\ & ( !\mux0|y[2]~18_combout\ & ( (!\mux0|y[1]~12_combout\ & 
-- (((\mux0|y[1]~11_combout\) # (\regG|Q\(2))))) # (\mux0|y[1]~12_combout\ & (\reg0|Q\(2) & ((!\mux0|y[1]~11_combout\)))) ) ) ) # ( !\data_in[2]~input_o\ & ( !\mux0|y[2]~18_combout\ & ( (!\mux0|y[1]~11_combout\ & ((!\mux0|y[1]~12_combout\ & ((\regG|Q\(2)))) 
-- # (\mux0|y[1]~12_combout\ & (\reg0|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~12_combout\,
	datab => \reg0|ALT_INV_Q\(2),
	datac => \regG|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[1]~11_combout\,
	datae => \ALT_INV_data_in[2]~input_o\,
	dataf => \mux0|ALT_INV_y[2]~18_combout\,
	combout => \mux0|y[2]~19_combout\);

-- Location: FF_X14_Y3_N14
\regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(2));

-- Location: LABCELL_X14_Y3_N0
\reg1|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[3]~feeder_combout\ = ( \mux0|y[3]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg1|Q[3]~feeder_combout\);

-- Location: FF_X14_Y3_N2
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[3]~feeder_combout\,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: FF_X13_Y5_N11
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: FF_X13_Y5_N26
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X12_Y5_N56
\reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(3));

-- Location: FF_X13_Y5_N14
\reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(3));

-- Location: LABCELL_X14_Y6_N21
\reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[3]~feeder_combout\ = ( \mux0|y[3]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg5|Q[3]~feeder_combout\);

-- Location: FF_X14_Y6_N23
\reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[3]~feeder_combout\,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(3));

-- Location: LABCELL_X14_Y6_N0
\reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[3]~feeder_combout\ = ( \mux0|y[3]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg4|Q[3]~feeder_combout\);

-- Location: FF_X14_Y6_N1
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[3]~feeder_combout\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: MLABCELL_X13_Y5_N15
\mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~20_combout\ = ( \reg5|Q\(3) & ( \reg4|Q\(3) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & (\reg7|Q\(3))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(3))))) ) ) ) # ( !\reg5|Q\(3) & ( \reg4|Q\(3) & ( (!\mux0|y[1]~0_combout\ & 
-- (((!\mux0|y[1]~1_combout\)) # (\reg7|Q\(3)))) # (\mux0|y[1]~0_combout\ & (((\reg6|Q\(3) & \mux0|y[1]~1_combout\)))) ) ) ) # ( \reg5|Q\(3) & ( !\reg4|Q\(3) & ( (!\mux0|y[1]~0_combout\ & (\reg7|Q\(3) & ((\mux0|y[1]~1_combout\)))) # (\mux0|y[1]~0_combout\ & 
-- (((!\mux0|y[1]~1_combout\) # (\reg6|Q\(3))))) ) ) ) # ( !\reg5|Q\(3) & ( !\reg4|Q\(3) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & (\reg7|Q\(3))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~0_combout\,
	datab => \reg7|ALT_INV_Q\(3),
	datac => \reg6|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[1]~1_combout\,
	datae => \reg5|ALT_INV_Q\(3),
	dataf => \reg4|ALT_INV_Q\(3),
	combout => \mux0|y[3]~20_combout\);

-- Location: MLABCELL_X13_Y5_N27
\mux0|y[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~21_combout\ = ( \mux0|y[1]~4_combout\ & ( \mux0|y[3]~20_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg3|Q\(3)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( \mux0|y[3]~20_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(3))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(3)))) ) ) ) # ( \mux0|y[1]~4_combout\ & ( !\mux0|y[3]~20_combout\ & ( (\mux0|y[1]~3_combout\ & \reg3|Q\(3)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( !\mux0|y[3]~20_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(3))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~3_combout\,
	datab => \reg1|ALT_INV_Q\(3),
	datac => \reg2|ALT_INV_Q\(3),
	datad => \reg3|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[1]~4_combout\,
	dataf => \mux0|ALT_INV_y[3]~20_combout\,
	combout => \mux0|y[3]~21_combout\);

-- Location: LABCELL_X14_Y4_N42
\addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~13_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[3]~22_combout\) ) + ( \regA|Q\(3) ) + ( \addsub0|Add0~10\ ))
-- \addsub0|Add0~14\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[3]~22_combout\) ) + ( \regA|Q\(3) ) + ( \addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[3]~22_combout\,
	cin => \addsub0|Add0~10\,
	sumout => \addsub0|Add0~13_sumout\,
	cout => \addsub0|Add0~14\);

-- Location: FF_X14_Y4_N44
\regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~13_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(3));

-- Location: FF_X14_Y4_N5
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: MLABCELL_X13_Y5_N54
\mux0|y[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~22_combout\ = ( \mux0|y[1]~12_combout\ & ( \data_in[3]~input_o\ & ( (!\mux0|y[1]~11_combout\ & ((\reg0|Q\(3)))) # (\mux0|y[1]~11_combout\ & (\mux0|y[3]~21_combout\)) ) ) ) # ( !\mux0|y[1]~12_combout\ & ( \data_in[3]~input_o\ & ( 
-- (\mux0|y[1]~11_combout\) # (\regG|Q\(3)) ) ) ) # ( \mux0|y[1]~12_combout\ & ( !\data_in[3]~input_o\ & ( (!\mux0|y[1]~11_combout\ & ((\reg0|Q\(3)))) # (\mux0|y[1]~11_combout\ & (\mux0|y[3]~21_combout\)) ) ) ) # ( !\mux0|y[1]~12_combout\ & ( 
-- !\data_in[3]~input_o\ & ( (\regG|Q\(3) & !\mux0|y[1]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[3]~21_combout\,
	datab => \regG|ALT_INV_Q\(3),
	datac => \mux0|ALT_INV_y[1]~11_combout\,
	datad => \reg0|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[1]~12_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \mux0|y[3]~22_combout\);

-- Location: LABCELL_X14_Y3_N6
\regA|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[3]~feeder_combout\ = ( \mux0|y[3]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \regA|Q[3]~feeder_combout\);

-- Location: FF_X14_Y3_N8
\regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[3]~feeder_combout\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(3));

-- Location: FF_X12_Y3_N14
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: LABCELL_X14_Y4_N45
\addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~17_sumout\ = SUM(( \regA|Q\(4) ) + ( !\mux0|y[4]~25_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~14\ ))
-- \addsub0|Add0~18\ = CARRY(( \regA|Q\(4) ) + ( !\mux0|y[4]~25_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[4]~25_combout\,
	datac => \fsm|ALT_INV_AddSub~combout\,
	datad => \regA|ALT_INV_Q\(4),
	cin => \addsub0|Add0~14\,
	sumout => \addsub0|Add0~17_sumout\,
	cout => \addsub0|Add0~18\);

-- Location: FF_X14_Y4_N47
\regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~17_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(4));

-- Location: FF_X12_Y5_N44
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: FF_X13_Y5_N53
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: FF_X13_Y3_N20
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: FF_X12_Y5_N2
\reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(4));

-- Location: FF_X12_Y5_N20
\reg7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(4));

-- Location: FF_X12_Y3_N35
\reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(4));

-- Location: FF_X13_Y3_N49
\reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(4));

-- Location: LABCELL_X12_Y5_N3
\mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~23_combout\ = ( \reg5|Q\(4) & ( \reg4|Q\(4) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(4)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(4)))) ) ) ) # ( !\reg5|Q\(4) & ( \reg4|Q\(4) & ( (!\mux0|y[1]~1_combout\ & 
-- (((!\mux0|y[1]~0_combout\)))) # (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(4)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(4))))) ) ) ) # ( \reg5|Q\(4) & ( !\reg4|Q\(4) & ( (!\mux0|y[1]~1_combout\ & (((\mux0|y[1]~0_combout\)))) # 
-- (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(4)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(4))))) ) ) ) # ( !\reg5|Q\(4) & ( !\reg4|Q\(4) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(4)))) # (\mux0|y[1]~0_combout\ & 
-- (\reg6|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|ALT_INV_Q\(4),
	datab => \mux0|ALT_INV_y[1]~1_combout\,
	datac => \mux0|ALT_INV_y[1]~0_combout\,
	datad => \reg7|ALT_INV_Q\(4),
	datae => \reg5|ALT_INV_Q\(4),
	dataf => \reg4|ALT_INV_Q\(4),
	combout => \mux0|y[4]~23_combout\);

-- Location: LABCELL_X12_Y5_N45
\mux0|y[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~24_combout\ = ( \mux0|y[1]~4_combout\ & ( \mux0|y[4]~23_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg3|Q\(4)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( \mux0|y[4]~23_combout\ & ( (!\mux0|y[1]~3_combout\ & ((\reg1|Q\(4)))) # (\mux0|y[1]~3_combout\ & 
-- (\reg2|Q\(4))) ) ) ) # ( \mux0|y[1]~4_combout\ & ( !\mux0|y[4]~23_combout\ & ( (\mux0|y[1]~3_combout\ & \reg3|Q\(4)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( !\mux0|y[4]~23_combout\ & ( (!\mux0|y[1]~3_combout\ & ((\reg1|Q\(4)))) # (\mux0|y[1]~3_combout\ & 
-- (\reg2|Q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~3_combout\,
	datab => \reg3|ALT_INV_Q\(4),
	datac => \reg2|ALT_INV_Q\(4),
	datad => \reg1|ALT_INV_Q\(4),
	datae => \mux0|ALT_INV_y[1]~4_combout\,
	dataf => \mux0|ALT_INV_y[4]~23_combout\,
	combout => \mux0|y[4]~24_combout\);

-- Location: MLABCELL_X13_Y3_N39
\mux0|y[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~25_combout\ = ( \regG|Q\(4) & ( \mux0|y[4]~24_combout\ & ( (!\mux0|y[1]~12_combout\ & ((!\mux0|y[1]~11_combout\) # ((\data_in[4]~input_o\)))) # (\mux0|y[1]~12_combout\ & (((\reg0|Q\(4))) # (\mux0|y[1]~11_combout\))) ) ) ) # ( !\regG|Q\(4) & ( 
-- \mux0|y[4]~24_combout\ & ( (!\mux0|y[1]~12_combout\ & (\mux0|y[1]~11_combout\ & ((\data_in[4]~input_o\)))) # (\mux0|y[1]~12_combout\ & (((\reg0|Q\(4))) # (\mux0|y[1]~11_combout\))) ) ) ) # ( \regG|Q\(4) & ( !\mux0|y[4]~24_combout\ & ( 
-- (!\mux0|y[1]~12_combout\ & ((!\mux0|y[1]~11_combout\) # ((\data_in[4]~input_o\)))) # (\mux0|y[1]~12_combout\ & (!\mux0|y[1]~11_combout\ & (\reg0|Q\(4)))) ) ) ) # ( !\regG|Q\(4) & ( !\mux0|y[4]~24_combout\ & ( (!\mux0|y[1]~12_combout\ & 
-- (\mux0|y[1]~11_combout\ & ((\data_in[4]~input_o\)))) # (\mux0|y[1]~12_combout\ & (!\mux0|y[1]~11_combout\ & (\reg0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~12_combout\,
	datab => \mux0|ALT_INV_y[1]~11_combout\,
	datac => \reg0|ALT_INV_Q\(4),
	datad => \ALT_INV_data_in[4]~input_o\,
	datae => \regG|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[4]~24_combout\,
	combout => \mux0|y[4]~25_combout\);

-- Location: LABCELL_X14_Y3_N33
\regA|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[4]~feeder_combout\ = \mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[4]~25_combout\,
	combout => \regA|Q[4]~feeder_combout\);

-- Location: FF_X14_Y3_N35
\regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[4]~feeder_combout\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(4));

-- Location: FF_X14_Y3_N44
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: LABCELL_X14_Y4_N48
\addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~21_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[5]~28_combout\) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~18\ ))
-- \addsub0|Add0~22\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[5]~28_combout\) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[5]~28_combout\,
	cin => \addsub0|Add0~18\,
	sumout => \addsub0|Add0~21_sumout\,
	cout => \addsub0|Add0~22\);

-- Location: FF_X14_Y4_N50
\regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~21_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(5));

-- Location: FF_X14_Y5_N13
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: FF_X14_Y5_N32
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: FF_X13_Y3_N25
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: FF_X12_Y5_N53
\reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(5));

-- Location: FF_X13_Y5_N32
\reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(5));

-- Location: FF_X14_Y6_N40
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: FF_X14_Y6_N43
\reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(5));

-- Location: MLABCELL_X13_Y5_N33
\mux0|y[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~26_combout\ = ( \reg4|Q\(5) & ( \reg5|Q\(5) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & (\reg7|Q\(5))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(5))))) ) ) ) # ( !\reg4|Q\(5) & ( \reg5|Q\(5) & ( (!\mux0|y[1]~0_combout\ & (\reg7|Q\(5) 
-- & ((\mux0|y[1]~1_combout\)))) # (\mux0|y[1]~0_combout\ & (((!\mux0|y[1]~1_combout\) # (\reg6|Q\(5))))) ) ) ) # ( \reg4|Q\(5) & ( !\reg5|Q\(5) & ( (!\mux0|y[1]~0_combout\ & (((!\mux0|y[1]~1_combout\)) # (\reg7|Q\(5)))) # (\mux0|y[1]~0_combout\ & 
-- (((\reg6|Q\(5) & \mux0|y[1]~1_combout\)))) ) ) ) # ( !\reg4|Q\(5) & ( !\reg5|Q\(5) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & (\reg7|Q\(5))) # (\mux0|y[1]~0_combout\ & ((\reg6|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~0_combout\,
	datab => \reg7|ALT_INV_Q\(5),
	datac => \reg6|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[1]~1_combout\,
	datae => \reg4|ALT_INV_Q\(5),
	dataf => \reg5|ALT_INV_Q\(5),
	combout => \mux0|y[5]~26_combout\);

-- Location: LABCELL_X14_Y5_N15
\mux0|y[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~27_combout\ = ( \reg1|Q\(5) & ( \mux0|y[5]~26_combout\ & ( (!\mux0|y[1]~3_combout\) # ((!\mux0|y[1]~4_combout\ & ((\reg2|Q\(5)))) # (\mux0|y[1]~4_combout\ & (\reg3|Q\(5)))) ) ) ) # ( !\reg1|Q\(5) & ( \mux0|y[5]~26_combout\ & ( 
-- (!\mux0|y[1]~3_combout\ & (((\mux0|y[1]~4_combout\)))) # (\mux0|y[1]~3_combout\ & ((!\mux0|y[1]~4_combout\ & ((\reg2|Q\(5)))) # (\mux0|y[1]~4_combout\ & (\reg3|Q\(5))))) ) ) ) # ( \reg1|Q\(5) & ( !\mux0|y[5]~26_combout\ & ( (!\mux0|y[1]~3_combout\ & 
-- (((!\mux0|y[1]~4_combout\)))) # (\mux0|y[1]~3_combout\ & ((!\mux0|y[1]~4_combout\ & ((\reg2|Q\(5)))) # (\mux0|y[1]~4_combout\ & (\reg3|Q\(5))))) ) ) ) # ( !\reg1|Q\(5) & ( !\mux0|y[5]~26_combout\ & ( (\mux0|y[1]~3_combout\ & ((!\mux0|y[1]~4_combout\ & 
-- ((\reg2|Q\(5)))) # (\mux0|y[1]~4_combout\ & (\reg3|Q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(5),
	datab => \reg2|ALT_INV_Q\(5),
	datac => \mux0|ALT_INV_y[1]~3_combout\,
	datad => \mux0|ALT_INV_y[1]~4_combout\,
	datae => \reg1|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~26_combout\,
	combout => \mux0|y[5]~27_combout\);

-- Location: LABCELL_X14_Y5_N33
\mux0|y[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~28_combout\ = ( \mux0|y[1]~12_combout\ & ( \mux0|y[5]~27_combout\ & ( (\mux0|y[1]~11_combout\) # (\reg0|Q\(5)) ) ) ) # ( !\mux0|y[1]~12_combout\ & ( \mux0|y[5]~27_combout\ & ( (!\mux0|y[1]~11_combout\ & ((\regG|Q\(5)))) # 
-- (\mux0|y[1]~11_combout\ & (\data_in[5]~input_o\)) ) ) ) # ( \mux0|y[1]~12_combout\ & ( !\mux0|y[5]~27_combout\ & ( (\reg0|Q\(5) & !\mux0|y[1]~11_combout\) ) ) ) # ( !\mux0|y[1]~12_combout\ & ( !\mux0|y[5]~27_combout\ & ( (!\mux0|y[1]~11_combout\ & 
-- ((\regG|Q\(5)))) # (\mux0|y[1]~11_combout\ & (\data_in[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[5]~input_o\,
	datab => \reg0|ALT_INV_Q\(5),
	datac => \mux0|ALT_INV_y[1]~11_combout\,
	datad => \regG|ALT_INV_Q\(5),
	datae => \mux0|ALT_INV_y[1]~12_combout\,
	dataf => \mux0|ALT_INV_y[5]~27_combout\,
	combout => \mux0|y[5]~28_combout\);

-- Location: FF_X14_Y3_N38
\regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(5));

-- Location: LABCELL_X14_Y4_N51
\addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~25_sumout\ = SUM(( \regA|Q\(6) ) + ( !\mux0|y[6]~31_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~22\ ))
-- \addsub0|Add0~26\ = CARRY(( \regA|Q\(6) ) + ( !\mux0|y[6]~31_combout\ $ (!\fsm|AddSub~combout\) ) + ( \addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[6]~31_combout\,
	datab => \fsm|ALT_INV_AddSub~combout\,
	datad => \regA|ALT_INV_Q\(6),
	cin => \addsub0|Add0~22\,
	sumout => \addsub0|Add0~25_sumout\,
	cout => \addsub0|Add0~26\);

-- Location: FF_X14_Y4_N53
\regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~25_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(6));

-- Location: FF_X14_Y3_N26
\reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: FF_X14_Y5_N38
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: FF_X14_Y3_N59
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: FF_X14_Y5_N20
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: FF_X14_Y5_N44
\reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(6));

-- Location: FF_X14_Y6_N53
\reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(6));

-- Location: LABCELL_X12_Y5_N30
\reg7|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[6]~feeder_combout\ = ( \mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~31_combout\,
	combout => \reg7|Q[6]~feeder_combout\);

-- Location: FF_X12_Y5_N31
\reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[6]~feeder_combout\,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(6));

-- Location: FF_X13_Y3_N16
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: LABCELL_X14_Y5_N45
\mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~29_combout\ = ( \reg7|Q\(6) & ( \reg4|Q\(6) & ( (!\mux0|y[1]~0_combout\) # ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(6)))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(6)))) ) ) ) # ( !\reg7|Q\(6) & ( \reg4|Q\(6) & ( (!\mux0|y[1]~1_combout\ & 
-- (((!\mux0|y[1]~0_combout\) # (\reg5|Q\(6))))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(6) & ((\mux0|y[1]~0_combout\)))) ) ) ) # ( \reg7|Q\(6) & ( !\reg4|Q\(6) & ( (!\mux0|y[1]~1_combout\ & (((\reg5|Q\(6) & \mux0|y[1]~0_combout\)))) # (\mux0|y[1]~1_combout\ & 
-- (((!\mux0|y[1]~0_combout\)) # (\reg6|Q\(6)))) ) ) ) # ( !\reg7|Q\(6) & ( !\reg4|Q\(6) & ( (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\ & ((\reg5|Q\(6)))) # (\mux0|y[1]~1_combout\ & (\reg6|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~1_combout\,
	datab => \reg6|ALT_INV_Q\(6),
	datac => \reg5|ALT_INV_Q\(6),
	datad => \mux0|ALT_INV_y[1]~0_combout\,
	datae => \reg7|ALT_INV_Q\(6),
	dataf => \reg4|ALT_INV_Q\(6),
	combout => \mux0|y[6]~29_combout\);

-- Location: LABCELL_X14_Y5_N21
\mux0|y[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~30_combout\ = ( \mux0|y[1]~4_combout\ & ( \mux0|y[6]~29_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg3|Q\(6)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( \mux0|y[6]~29_combout\ & ( (!\mux0|y[1]~3_combout\ & ((\reg1|Q\(6)))) # (\mux0|y[1]~3_combout\ & 
-- (\reg2|Q\(6))) ) ) ) # ( \mux0|y[1]~4_combout\ & ( !\mux0|y[6]~29_combout\ & ( (\mux0|y[1]~3_combout\ & \reg3|Q\(6)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( !\mux0|y[6]~29_combout\ & ( (!\mux0|y[1]~3_combout\ & ((\reg1|Q\(6)))) # (\mux0|y[1]~3_combout\ & 
-- (\reg2|Q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(6),
	datab => \mux0|ALT_INV_y[1]~3_combout\,
	datac => \reg1|ALT_INV_Q\(6),
	datad => \reg3|ALT_INV_Q\(6),
	datae => \mux0|ALT_INV_y[1]~4_combout\,
	dataf => \mux0|ALT_INV_y[6]~29_combout\,
	combout => \mux0|y[6]~30_combout\);

-- Location: LABCELL_X14_Y5_N39
\mux0|y[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~31_combout\ = ( \data_in[6]~input_o\ & ( \mux0|y[6]~30_combout\ & ( ((!\mux0|y[1]~12_combout\ & (\regG|Q\(6))) # (\mux0|y[1]~12_combout\ & ((\reg0|Q\(6))))) # (\mux0|y[1]~11_combout\) ) ) ) # ( !\data_in[6]~input_o\ & ( \mux0|y[6]~30_combout\ & 
-- ( (!\mux0|y[1]~12_combout\ & (\regG|Q\(6) & (!\mux0|y[1]~11_combout\))) # (\mux0|y[1]~12_combout\ & (((\reg0|Q\(6)) # (\mux0|y[1]~11_combout\)))) ) ) ) # ( \data_in[6]~input_o\ & ( !\mux0|y[6]~30_combout\ & ( (!\mux0|y[1]~12_combout\ & 
-- (((\mux0|y[1]~11_combout\)) # (\regG|Q\(6)))) # (\mux0|y[1]~12_combout\ & (((!\mux0|y[1]~11_combout\ & \reg0|Q\(6))))) ) ) ) # ( !\data_in[6]~input_o\ & ( !\mux0|y[6]~30_combout\ & ( (!\mux0|y[1]~11_combout\ & ((!\mux0|y[1]~12_combout\ & (\regG|Q\(6))) # 
-- (\mux0|y[1]~12_combout\ & ((\reg0|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~12_combout\,
	datab => \regG|ALT_INV_Q\(6),
	datac => \mux0|ALT_INV_y[1]~11_combout\,
	datad => \reg0|ALT_INV_Q\(6),
	datae => \ALT_INV_data_in[6]~input_o\,
	dataf => \mux0|ALT_INV_y[6]~30_combout\,
	combout => \mux0|y[6]~31_combout\);

-- Location: FF_X14_Y3_N11
\regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(6));

-- Location: LABCELL_X14_Y3_N27
\reg0|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg0|Q[7]~feeder_combout\);

-- Location: FF_X14_Y3_N29
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[7]~feeder_combout\,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

-- Location: LABCELL_X14_Y4_N54
\addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~29_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[7]~34_combout\) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))
-- \addsub0|Add0~30\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[7]~34_combout\) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_AddSub~combout\,
	datac => \mux0|ALT_INV_y[7]~34_combout\,
	dataf => \regA|ALT_INV_Q\(7),
	cin => \addsub0|Add0~26\,
	sumout => \addsub0|Add0~29_sumout\,
	cout => \addsub0|Add0~30\);

-- Location: FF_X14_Y4_N56
\regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~29_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(7));

-- Location: FF_X14_Y5_N26
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: LABCELL_X14_Y3_N57
\reg1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg1|Q[7]~feeder_combout\);

-- Location: FF_X14_Y3_N58
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[7]~feeder_combout\,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: FF_X14_Y5_N50
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: FF_X14_Y5_N8
\reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(7));

-- Location: LABCELL_X12_Y5_N9
\reg7|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[7]~feeder_combout\ = ( \mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg7|Q[7]~feeder_combout\);

-- Location: FF_X12_Y5_N10
\reg7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[7]~feeder_combout\,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(7));

-- Location: MLABCELL_X13_Y6_N27
\reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg4|Q[7]~feeder_combout\);

-- Location: FF_X13_Y6_N28
\reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[7]~feeder_combout\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(7));

-- Location: MLABCELL_X13_Y6_N9
\reg5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg5|Q[7]~feeder_combout\);

-- Location: FF_X13_Y6_N10
\reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[7]~feeder_combout\,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(7));

-- Location: LABCELL_X14_Y5_N9
\mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~32_combout\ = ( \reg4|Q\(7) & ( \reg5|Q\(7) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(7)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(7)))) ) ) ) # ( !\reg4|Q\(7) & ( \reg5|Q\(7) & ( (!\mux0|y[1]~0_combout\ & 
-- (\mux0|y[1]~1_combout\ & ((\reg7|Q\(7))))) # (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\) # ((\reg6|Q\(7))))) ) ) ) # ( \reg4|Q\(7) & ( !\reg5|Q\(7) & ( (!\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\) # ((\reg7|Q\(7))))) # (\mux0|y[1]~0_combout\ 
-- & (\mux0|y[1]~1_combout\ & (\reg6|Q\(7)))) ) ) ) # ( !\reg4|Q\(7) & ( !\reg5|Q\(7) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(7)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~0_combout\,
	datab => \mux0|ALT_INV_y[1]~1_combout\,
	datac => \reg6|ALT_INV_Q\(7),
	datad => \reg7|ALT_INV_Q\(7),
	datae => \reg4|ALT_INV_Q\(7),
	dataf => \reg5|ALT_INV_Q\(7),
	combout => \mux0|y[7]~32_combout\);

-- Location: LABCELL_X14_Y5_N27
\mux0|y[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~33_combout\ = ( \mux0|y[1]~4_combout\ & ( \mux0|y[7]~32_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg3|Q\(7)) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( \mux0|y[7]~32_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(7))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(7)))) ) ) ) # ( \mux0|y[1]~4_combout\ & ( !\mux0|y[7]~32_combout\ & ( (\reg3|Q\(7) & \mux0|y[1]~3_combout\) ) ) ) # ( !\mux0|y[1]~4_combout\ & ( !\mux0|y[7]~32_combout\ & ( (!\mux0|y[1]~3_combout\ & (\reg1|Q\(7))) # (\mux0|y[1]~3_combout\ & 
-- ((\reg2|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(7),
	datab => \reg1|ALT_INV_Q\(7),
	datac => \mux0|ALT_INV_y[1]~3_combout\,
	datad => \reg2|ALT_INV_Q\(7),
	datae => \mux0|ALT_INV_y[1]~4_combout\,
	dataf => \mux0|ALT_INV_y[7]~32_combout\,
	combout => \mux0|y[7]~33_combout\);

-- Location: LABCELL_X14_Y5_N51
\mux0|y[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~34_combout\ = ( \regG|Q\(7) & ( \mux0|y[7]~33_combout\ & ( (!\mux0|y[1]~11_combout\ & (((!\mux0|y[1]~12_combout\)) # (\reg0|Q\(7)))) # (\mux0|y[1]~11_combout\ & (((\mux0|y[1]~12_combout\) # (\data_in[7]~input_o\)))) ) ) ) # ( !\regG|Q\(7) & ( 
-- \mux0|y[7]~33_combout\ & ( (!\mux0|y[1]~11_combout\ & (\reg0|Q\(7) & ((\mux0|y[1]~12_combout\)))) # (\mux0|y[1]~11_combout\ & (((\mux0|y[1]~12_combout\) # (\data_in[7]~input_o\)))) ) ) ) # ( \regG|Q\(7) & ( !\mux0|y[7]~33_combout\ & ( 
-- (!\mux0|y[1]~11_combout\ & (((!\mux0|y[1]~12_combout\)) # (\reg0|Q\(7)))) # (\mux0|y[1]~11_combout\ & (((\data_in[7]~input_o\ & !\mux0|y[1]~12_combout\)))) ) ) ) # ( !\regG|Q\(7) & ( !\mux0|y[7]~33_combout\ & ( (!\mux0|y[1]~11_combout\ & (\reg0|Q\(7) & 
-- ((\mux0|y[1]~12_combout\)))) # (\mux0|y[1]~11_combout\ & (((\data_in[7]~input_o\ & !\mux0|y[1]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ALT_INV_Q\(7),
	datab => \ALT_INV_data_in[7]~input_o\,
	datac => \mux0|ALT_INV_y[1]~11_combout\,
	datad => \mux0|ALT_INV_y[1]~12_combout\,
	datae => \regG|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[7]~33_combout\,
	combout => \mux0|y[7]~34_combout\);

-- Location: LABCELL_X14_Y3_N48
\regA|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \regA|Q[7]~feeder_combout\);

-- Location: FF_X14_Y3_N50
\regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[7]~feeder_combout\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(7));

-- Location: FF_X14_Y3_N20
\reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(8));

-- Location: FF_X12_Y5_N14
\reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(8));

-- Location: FF_X12_Y5_N7
\reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(8));

-- Location: LABCELL_X10_Y5_N15
\reg4|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[8]~feeder_combout\ = ( \mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \reg4|Q[8]~feeder_combout\);

-- Location: FF_X10_Y5_N16
\reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[8]~feeder_combout\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(8));

-- Location: FF_X12_Y4_N17
\reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(8));

-- Location: LABCELL_X12_Y5_N15
\mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~35_combout\ = ( \reg4|Q\(8) & ( \reg5|Q\(8) & ( (!\mux0|y[1]~1_combout\) # ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(8)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(8)))) ) ) ) # ( !\reg4|Q\(8) & ( \reg5|Q\(8) & ( (!\mux0|y[1]~0_combout\ & 
-- (\mux0|y[1]~1_combout\ & ((\reg7|Q\(8))))) # (\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\) # ((\reg6|Q\(8))))) ) ) ) # ( \reg4|Q\(8) & ( !\reg5|Q\(8) & ( (!\mux0|y[1]~0_combout\ & ((!\mux0|y[1]~1_combout\) # ((\reg7|Q\(8))))) # (\mux0|y[1]~0_combout\ 
-- & (\mux0|y[1]~1_combout\ & (\reg6|Q\(8)))) ) ) ) # ( !\reg4|Q\(8) & ( !\reg5|Q\(8) & ( (\mux0|y[1]~1_combout\ & ((!\mux0|y[1]~0_combout\ & ((\reg7|Q\(8)))) # (\mux0|y[1]~0_combout\ & (\reg6|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~0_combout\,
	datab => \mux0|ALT_INV_y[1]~1_combout\,
	datac => \reg6|ALT_INV_Q\(8),
	datad => \reg7|ALT_INV_Q\(8),
	datae => \reg4|ALT_INV_Q\(8),
	dataf => \reg5|ALT_INV_Q\(8),
	combout => \mux0|y[8]~35_combout\);

-- Location: FF_X12_Y5_N46
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: FF_X13_Y5_N50
\reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[8]~37_combout\,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(8));

-- Location: FF_X13_Y3_N29
\reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(8));

-- Location: LABCELL_X12_Y5_N36
\mux0|y[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~36_combout\ = ( \reg1|Q\(8) & ( \mux0|y[1]~4_combout\ & ( (!\mux0|y[1]~3_combout\ & (\mux0|y[8]~35_combout\)) # (\mux0|y[1]~3_combout\ & ((\reg3|Q\(8)))) ) ) ) # ( !\reg1|Q\(8) & ( \mux0|y[1]~4_combout\ & ( (!\mux0|y[1]~3_combout\ & 
-- (\mux0|y[8]~35_combout\)) # (\mux0|y[1]~3_combout\ & ((\reg3|Q\(8)))) ) ) ) # ( \reg1|Q\(8) & ( !\mux0|y[1]~4_combout\ & ( (!\mux0|y[1]~3_combout\) # (\reg2|Q\(8)) ) ) ) # ( !\reg1|Q\(8) & ( !\mux0|y[1]~4_combout\ & ( (\mux0|y[1]~3_combout\ & \reg2|Q\(8)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[1]~3_combout\,
	datab => \mux0|ALT_INV_y[8]~35_combout\,
	datac => \reg3|ALT_INV_Q\(8),
	datad => \reg2|ALT_INV_Q\(8),
	datae => \reg1|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[1]~4_combout\,
	combout => \mux0|y[8]~36_combout\);

-- Location: LABCELL_X14_Y4_N57
\addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~33_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[8]~37_combout\) ) + ( \regA|Q\(8) ) + ( \addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_AddSub~combout\,
	datad => \mux0|ALT_INV_y[8]~37_combout\,
	dataf => \regA|ALT_INV_Q\(8),
	cin => \addsub0|Add0~30\,
	sumout => \addsub0|Add0~33_sumout\);

-- Location: FF_X14_Y4_N59
\regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~33_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(8));

-- Location: MLABCELL_X13_Y5_N48
\mux0|y[8]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~37_combout\ = ( \regG|Q\(8) & ( \mux0|y[1]~12_combout\ & ( (!\mux0|y[1]~11_combout\ & (\reg0|Q\(8))) # (\mux0|y[1]~11_combout\ & ((\mux0|y[8]~36_combout\))) ) ) ) # ( !\regG|Q\(8) & ( \mux0|y[1]~12_combout\ & ( (!\mux0|y[1]~11_combout\ & 
-- (\reg0|Q\(8))) # (\mux0|y[1]~11_combout\ & ((\mux0|y[8]~36_combout\))) ) ) ) # ( \regG|Q\(8) & ( !\mux0|y[1]~12_combout\ & ( (!\mux0|y[1]~11_combout\) # (\data_in[8]~input_o\) ) ) ) # ( !\regG|Q\(8) & ( !\mux0|y[1]~12_combout\ & ( (\mux0|y[1]~11_combout\ 
-- & \data_in[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ALT_INV_Q\(8),
	datab => \mux0|ALT_INV_y[8]~36_combout\,
	datac => \mux0|ALT_INV_y[1]~11_combout\,
	datad => \ALT_INV_data_in[8]~input_o\,
	datae => \regG|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[1]~12_combout\,
	combout => \mux0|y[8]~37_combout\);

-- Location: LABCELL_X14_Y3_N15
\regA|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[8]~feeder_combout\ = ( \mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \regA|Q[8]~feeder_combout\);

-- Location: FF_X14_Y3_N17
\regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[8]~feeder_combout\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(8));

-- Location: LABCELL_X40_Y37_N3
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


