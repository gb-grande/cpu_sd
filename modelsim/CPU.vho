-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "10/06/2022 16:28:11"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	display_mem1 : OUT std_logic_vector(6 DOWNTO 0);
	clock_real : IN std_logic;
	rst_key : IN std_logic;
	clock_manual : IN std_logic;
	master_clear : IN std_logic;
	display_mem2 : OUT std_logic_vector(6 DOWNTO 0);
	display_mem3 : OUT std_logic_vector(6 DOWNTO 0);
	display_mem4 : OUT std_logic_vector(6 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- display_mem1[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem2[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem3[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_mem4[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_key	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_manual	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_real	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display_mem1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clock_real : std_logic;
SIGNAL ww_rst_key : std_logic;
SIGNAL ww_clock_manual : std_logic;
SIGNAL ww_master_clear : std_logic;
SIGNAL ww_display_mem2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_mem3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_mem4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \rst_key~input_o\ : std_logic;
SIGNAL \clock_manual~input_o\ : std_logic;
SIGNAL \inst1|out_key~1_combout\ : std_logic;
SIGNAL \clock_real~input_o\ : std_logic;
SIGNAL \clock_real~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|intermediate~1_combout\ : std_logic;
SIGNAL \inst1|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst1|intermediate~0_combout\ : std_logic;
SIGNAL \inst1|Add0~45_sumout\ : std_logic;
SIGNAL \inst1|always0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~46\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~41_sumout\ : std_logic;
SIGNAL \inst1|Add0~42\ : std_logic;
SIGNAL \inst1|Add0~37_sumout\ : std_logic;
SIGNAL \inst1|Add0~38\ : std_logic;
SIGNAL \inst1|Add0~33_sumout\ : std_logic;
SIGNAL \inst1|Add0~34\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Add0~2\ : std_logic;
SIGNAL \inst1|Add0~61_sumout\ : std_logic;
SIGNAL \inst1|Add0~62\ : std_logic;
SIGNAL \inst1|Add0~57_sumout\ : std_logic;
SIGNAL \inst1|Add0~58\ : std_logic;
SIGNAL \inst1|Add0~53_sumout\ : std_logic;
SIGNAL \inst1|Add0~54\ : std_logic;
SIGNAL \inst1|Add0~49_sumout\ : std_logic;
SIGNAL \inst1|out_key~7_combout\ : std_logic;
SIGNAL \inst1|out_key~5_combout\ : std_logic;
SIGNAL \inst1|out_key~6_combout\ : std_logic;
SIGNAL \inst1|out_key~8_combout\ : std_logic;
SIGNAL \inst1|out_key~3_combout\ : std_logic;
SIGNAL \inst1|out_key~_emulated_q\ : std_logic;
SIGNAL \inst1|out_key~2_combout\ : std_logic;
SIGNAL \inst4|inst~0_combout\ : std_logic;
SIGNAL \master_clear~input_o\ : std_logic;
SIGNAL \inst4|inst~q\ : std_logic;
SIGNAL \inst4|inst~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst1~feeder_combout\ : std_logic;
SIGNAL \inst4|inst1~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|inst2~q\ : std_logic;
SIGNAL \inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst2~feeder_combout\ : std_logic;
SIGNAL \inst4|inst2~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst3~feeder_combout\ : std_logic;
SIGNAL \inst4|inst3~q\ : std_logic;
SIGNAL \inst4|inst3~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|inst4~q\ : std_logic;
SIGNAL \inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst4~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst5~q\ : std_logic;
SIGNAL \inst4|inst1~q\ : std_logic;
SIGNAL \inst4|inst21~combout\ : std_logic;
SIGNAL \inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst4|inst6~q\ : std_logic;
SIGNAL \inst4|inst7~q\ : std_logic;
SIGNAL \inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst4|inst7~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|inst54~0_combout\ : std_logic;
SIGNAL \inst6|inst74~0_combout\ : std_logic;
SIGNAL \inst6|inst55~0_combout\ : std_logic;
SIGNAL \inst6|inst46~0_combout\ : std_logic;
SIGNAL \inst6|inst47~0_combout\ : std_logic;
SIGNAL \inst6|inst53~0_combout\ : std_logic;
SIGNAL \inst6|inst40~0_combout\ : std_logic;
SIGNAL \inst7|inst54~0_combout\ : std_logic;
SIGNAL \inst7|inst74~0_combout\ : std_logic;
SIGNAL \inst7|inst55~0_combout\ : std_logic;
SIGNAL \inst7|inst46~0_combout\ : std_logic;
SIGNAL \inst7|inst47~0_combout\ : std_logic;
SIGNAL \inst7|inst53~0_combout\ : std_logic;
SIGNAL \inst7|inst40~0_combout\ : std_logic;
SIGNAL \inst8|inst54~0_combout\ : std_logic;
SIGNAL \inst8|inst74~0_combout\ : std_logic;
SIGNAL \inst8|inst55~0_combout\ : std_logic;
SIGNAL \inst8|inst46~0_combout\ : std_logic;
SIGNAL \inst8|inst47~0_combout\ : std_logic;
SIGNAL \inst8|inst53~0_combout\ : std_logic;
SIGNAL \inst8|inst40~0_combout\ : std_logic;
SIGNAL \inst9|inst54~0_combout\ : std_logic;
SIGNAL \inst9|inst74~0_combout\ : std_logic;
SIGNAL \inst9|inst55~0_combout\ : std_logic;
SIGNAL \inst9|inst46~0_combout\ : std_logic;
SIGNAL \inst9|inst47~0_combout\ : std_logic;
SIGNAL \inst9|inst53~0_combout\ : std_logic;
SIGNAL \inst9|inst40~0_combout\ : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|ALT_INV_inst~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst1~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst3~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_manual~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_key~input_o\ : std_logic;
SIGNAL \ALT_INV_master_clear~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~8_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~7_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~6_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~5_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~_emulated_q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst21~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst9|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst53~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst46~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst55~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst74~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst54~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst53~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst46~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst55~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst74~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst54~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst53~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst46~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst55~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst74~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst54~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst53~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst46~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst55~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst74~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst54~0_combout\ : std_logic;

BEGIN

display_mem1 <= ww_display_mem1;
ww_clock_real <= clock_real;
ww_rst_key <= rst_key;
ww_clock_manual <= clock_manual;
ww_master_clear <= master_clear;
display_mem2 <= ww_display_mem2;
display_mem3 <= ww_display_mem3;
display_mem4 <= ww_display_mem4;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|inst7~DUPLICATE_q\ & \inst4|inst6~q\ & \inst4|inst5~q\ & \inst4|inst4~DUPLICATE_q\ & \inst4|inst3~q\ & \inst4|inst2~DUPLICATE_q\ & \inst4|inst1~DUPLICATE_q\ & \inst4|inst~q\
);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|altsyncram_component|auto_generated|q_a\(8) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|altsyncram_component|auto_generated|q_a\(9) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|altsyncram_component|auto_generated|q_a\(10) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|altsyncram_component|auto_generated|q_a\(11) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|altsyncram_component|auto_generated|q_a\(12) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|altsyncram_component|auto_generated|q_a\(13) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|altsyncram_component|auto_generated|q_a\(14) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|altsyncram_component|auto_generated|q_a\(15) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst1|ALT_INV_counter\(12) <= NOT \inst1|counter\(12);
\inst1|ALT_INV_counter\(13) <= NOT \inst1|counter\(13);
\inst1|ALT_INV_counter\(14) <= NOT \inst1|counter\(14);
\inst1|ALT_INV_counter\(15) <= NOT \inst1|counter\(15);
\inst1|ALT_INV_counter\(0) <= NOT \inst1|counter\(0);
\inst1|ALT_INV_counter\(5) <= NOT \inst1|counter\(5);
\inst1|ALT_INV_counter\(6) <= NOT \inst1|counter\(6);
\inst1|ALT_INV_counter\(7) <= NOT \inst1|counter\(7);
\inst1|ALT_INV_counter\(8) <= NOT \inst1|counter\(8);
\inst1|ALT_INV_counter\(9) <= NOT \inst1|counter\(9);
\inst1|ALT_INV_counter\(10) <= NOT \inst1|counter\(10);
\inst1|ALT_INV_counter\(1) <= NOT \inst1|counter\(1);
\inst1|ALT_INV_counter\(2) <= NOT \inst1|counter\(2);
\inst1|ALT_INV_counter\(3) <= NOT \inst1|counter\(3);
\inst1|ALT_INV_counter\(4) <= NOT \inst1|counter\(4);
\inst1|ALT_INV_counter\(11) <= NOT \inst1|counter\(11);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst|altsyncram_component|auto_generated|q_a\(1);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst|altsyncram_component|auto_generated|q_a\(2);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst|altsyncram_component|auto_generated|q_a\(3);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst|altsyncram_component|auto_generated|q_a\(4);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst|altsyncram_component|auto_generated|q_a\(5);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst|altsyncram_component|auto_generated|q_a\(6);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst|altsyncram_component|auto_generated|q_a\(7);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst|altsyncram_component|auto_generated|q_a\(8);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst|altsyncram_component|auto_generated|q_a\(9);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst|altsyncram_component|auto_generated|q_a\(10);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst|altsyncram_component|auto_generated|q_a\(11);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \inst|altsyncram_component|auto_generated|q_a\(12);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \inst|altsyncram_component|auto_generated|q_a\(13);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \inst|altsyncram_component|auto_generated|q_a\(14);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \inst|altsyncram_component|auto_generated|q_a\(15);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst|altsyncram_component|auto_generated|q_a\(0);
\inst4|ALT_INV_inst~DUPLICATE_q\ <= NOT \inst4|inst~DUPLICATE_q\;
\inst4|ALT_INV_inst1~DUPLICATE_q\ <= NOT \inst4|inst1~DUPLICATE_q\;
\inst4|ALT_INV_inst3~DUPLICATE_q\ <= NOT \inst4|inst3~DUPLICATE_q\;
\ALT_INV_clock_manual~input_o\ <= NOT \clock_manual~input_o\;
\ALT_INV_rst_key~input_o\ <= NOT \rst_key~input_o\;
\ALT_INV_master_clear~input_o\ <= NOT \master_clear~input_o\;
\inst1|ALT_INV_out_key~1_combout\ <= NOT \inst1|out_key~1_combout\;
\inst1|ALT_INV_intermediate~0_combout\ <= NOT \inst1|intermediate~0_combout\;
\inst1|ALT_INV_intermediate~_emulated_q\ <= NOT \inst1|intermediate~_emulated_q\;
\inst1|ALT_INV_out_key~8_combout\ <= NOT \inst1|out_key~8_combout\;
\inst1|ALT_INV_out_key~7_combout\ <= NOT \inst1|out_key~7_combout\;
\inst1|ALT_INV_out_key~6_combout\ <= NOT \inst1|out_key~6_combout\;
\inst1|ALT_INV_out_key~5_combout\ <= NOT \inst1|out_key~5_combout\;
\inst1|ALT_INV_out_key~2_combout\ <= NOT \inst1|out_key~2_combout\;
\inst1|ALT_INV_out_key~_emulated_q\ <= NOT \inst1|out_key~_emulated_q\;
\inst4|ALT_INV_inst1~0_combout\ <= NOT \inst4|inst1~0_combout\;
\inst4|ALT_INV_inst2~0_combout\ <= NOT \inst4|inst2~0_combout\;
\inst4|ALT_INV_inst3~0_combout\ <= NOT \inst4|inst3~0_combout\;
\inst4|ALT_INV_inst21~combout\ <= NOT \inst4|inst21~combout\;
\inst4|ALT_INV_inst~q\ <= NOT \inst4|inst~q\;
\inst4|ALT_INV_inst1~q\ <= NOT \inst4|inst1~q\;
\inst4|ALT_INV_inst2~q\ <= NOT \inst4|inst2~q\;
\inst4|ALT_INV_inst3~q\ <= NOT \inst4|inst3~q\;
\inst4|ALT_INV_inst4~q\ <= NOT \inst4|inst4~q\;
\inst4|ALT_INV_inst5~q\ <= NOT \inst4|inst5~q\;
\inst4|ALT_INV_inst6~q\ <= NOT \inst4|inst6~q\;
\inst4|ALT_INV_inst7~q\ <= NOT \inst4|inst7~q\;
\inst9|ALT_INV_inst40~0_combout\ <= NOT \inst9|inst40~0_combout\;
\inst9|ALT_INV_inst53~0_combout\ <= NOT \inst9|inst53~0_combout\;
\inst9|ALT_INV_inst47~0_combout\ <= NOT \inst9|inst47~0_combout\;
\inst9|ALT_INV_inst46~0_combout\ <= NOT \inst9|inst46~0_combout\;
\inst9|ALT_INV_inst55~0_combout\ <= NOT \inst9|inst55~0_combout\;
\inst9|ALT_INV_inst74~0_combout\ <= NOT \inst9|inst74~0_combout\;
\inst9|ALT_INV_inst54~0_combout\ <= NOT \inst9|inst54~0_combout\;
\inst8|ALT_INV_inst40~0_combout\ <= NOT \inst8|inst40~0_combout\;
\inst8|ALT_INV_inst53~0_combout\ <= NOT \inst8|inst53~0_combout\;
\inst8|ALT_INV_inst47~0_combout\ <= NOT \inst8|inst47~0_combout\;
\inst8|ALT_INV_inst46~0_combout\ <= NOT \inst8|inst46~0_combout\;
\inst8|ALT_INV_inst55~0_combout\ <= NOT \inst8|inst55~0_combout\;
\inst8|ALT_INV_inst74~0_combout\ <= NOT \inst8|inst74~0_combout\;
\inst8|ALT_INV_inst54~0_combout\ <= NOT \inst8|inst54~0_combout\;
\inst7|ALT_INV_inst40~0_combout\ <= NOT \inst7|inst40~0_combout\;
\inst7|ALT_INV_inst53~0_combout\ <= NOT \inst7|inst53~0_combout\;
\inst7|ALT_INV_inst47~0_combout\ <= NOT \inst7|inst47~0_combout\;
\inst7|ALT_INV_inst46~0_combout\ <= NOT \inst7|inst46~0_combout\;
\inst7|ALT_INV_inst55~0_combout\ <= NOT \inst7|inst55~0_combout\;
\inst7|ALT_INV_inst74~0_combout\ <= NOT \inst7|inst74~0_combout\;
\inst7|ALT_INV_inst54~0_combout\ <= NOT \inst7|inst54~0_combout\;
\inst6|ALT_INV_inst40~0_combout\ <= NOT \inst6|inst40~0_combout\;
\inst6|ALT_INV_inst53~0_combout\ <= NOT \inst6|inst53~0_combout\;
\inst6|ALT_INV_inst47~0_combout\ <= NOT \inst6|inst47~0_combout\;
\inst6|ALT_INV_inst46~0_combout\ <= NOT \inst6|inst46~0_combout\;
\inst6|ALT_INV_inst55~0_combout\ <= NOT \inst6|inst55~0_combout\;
\inst6|ALT_INV_inst74~0_combout\ <= NOT \inst6|inst74~0_combout\;
\inst6|ALT_INV_inst54~0_combout\ <= NOT \inst6|inst54~0_combout\;

-- Location: IOOBUF_X40_Y0_N76
\display_mem1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst54~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(6));

-- Location: IOOBUF_X46_Y0_N53
\display_mem1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst74~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(5));

-- Location: IOOBUF_X38_Y0_N19
\display_mem1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst55~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(4));

-- Location: IOOBUF_X36_Y0_N19
\display_mem1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst46~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(3));

-- Location: IOOBUF_X22_Y0_N53
\display_mem1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(2));

-- Location: IOOBUF_X38_Y0_N53
\display_mem1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst53~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(1));

-- Location: IOOBUF_X48_Y0_N42
\display_mem1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst40~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem1(0));

-- Location: IOOBUF_X51_Y0_N19
\display_mem2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst54~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(6));

-- Location: IOOBUF_X51_Y0_N2
\display_mem2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst74~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(5));

-- Location: IOOBUF_X52_Y0_N2
\display_mem2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst55~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(4));

-- Location: IOOBUF_X46_Y0_N19
\display_mem2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst46~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(3));

-- Location: IOOBUF_X40_Y0_N42
\display_mem2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(2));

-- Location: IOOBUF_X46_Y0_N2
\display_mem2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst53~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(1));

-- Location: IOOBUF_X40_Y0_N59
\display_mem2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst40~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem2(0));

-- Location: IOOBUF_X29_Y0_N19
\display_mem3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst54~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(6));

-- Location: IOOBUF_X36_Y0_N2
\display_mem3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst74~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(5));

-- Location: IOOBUF_X43_Y0_N2
\display_mem3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst55~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(4));

-- Location: IOOBUF_X52_Y0_N19
\display_mem3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst46~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(3));

-- Location: IOOBUF_X44_Y0_N19
\display_mem3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(2));

-- Location: IOOBUF_X48_Y0_N59
\display_mem3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst53~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(1));

-- Location: IOOBUF_X52_Y0_N36
\display_mem3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_inst40~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem3(0));

-- Location: IOOBUF_X44_Y0_N2
\display_mem4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst54~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(6));

-- Location: IOOBUF_X0_Y21_N39
\display_mem4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst74~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(5));

-- Location: IOOBUF_X0_Y21_N56
\display_mem4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst55~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(4));

-- Location: IOOBUF_X50_Y0_N19
\display_mem4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst46~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(3));

-- Location: IOOBUF_X43_Y0_N19
\display_mem4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(2));

-- Location: IOOBUF_X22_Y0_N19
\display_mem4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst53~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(1));

-- Location: IOOBUF_X29_Y0_N2
\display_mem4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst40~0_combout\,
	devoe => ww_devoe,
	o => ww_display_mem4(0));

-- Location: IOOBUF_X0_Y19_N22
\led[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(7));

-- Location: IOOBUF_X0_Y19_N5
\led[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6~q\,
	devoe => ww_devoe,
	o => ww_led(6));

-- Location: IOOBUF_X0_Y19_N56
\led[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst5~q\,
	devoe => ww_devoe,
	o => ww_led(5));

-- Location: IOOBUF_X0_Y19_N39
\led[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(4));

-- Location: IOOBUF_X0_Y18_N45
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3~q\,
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X0_Y18_N62
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X0_Y18_N96
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X0_Y18_N79
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst~q\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOIBUF_X10_Y0_N92
\rst_key~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_key,
	o => \rst_key~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\clock_manual~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_manual,
	o => \clock_manual~input_o\);

-- Location: LABCELL_X25_Y1_N18
\inst1|out_key~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~1_combout\ = ( \rst_key~input_o\ & ( \clock_manual~input_o\ & ( \inst1|out_key~1_combout\ ) ) ) # ( !\rst_key~input_o\ & ( \clock_manual~input_o\ ) ) # ( \rst_key~input_o\ & ( !\clock_manual~input_o\ & ( \inst1|out_key~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_out_key~1_combout\,
	datae => \ALT_INV_rst_key~input_o\,
	dataf => \ALT_INV_clock_manual~input_o\,
	combout => \inst1|out_key~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\clock_real~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_real,
	o => \clock_real~input_o\);

-- Location: CLKCTRL_G6
\clock_real~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_real~input_o\,
	outclk => \clock_real~inputCLKENA0_outclk\);

-- Location: MLABCELL_X23_Y1_N27
\inst1|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|intermediate~1_combout\ = ( \clock_manual~input_o\ & ( !\inst1|out_key~1_combout\ ) ) # ( !\clock_manual~input_o\ & ( \inst1|out_key~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_out_key~1_combout\,
	dataf => \ALT_INV_clock_manual~input_o\,
	combout => \inst1|intermediate~1_combout\);

-- Location: FF_X23_Y1_N28
\inst1|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|intermediate~1_combout\,
	clrn => \rst_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|intermediate~_emulated_q\);

-- Location: LABCELL_X24_Y1_N48
\inst1|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|intermediate~0_combout\ = ( \inst1|out_key~1_combout\ & ( (!\rst_key~input_o\ & (\clock_manual~input_o\)) # (\rst_key~input_o\ & ((!\inst1|intermediate~_emulated_q\))) ) ) # ( !\inst1|out_key~1_combout\ & ( (!\rst_key~input_o\ & 
-- (\clock_manual~input_o\)) # (\rst_key~input_o\ & ((\inst1|intermediate~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011101110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_key~input_o\,
	datab => \ALT_INV_clock_manual~input_o\,
	datad => \inst1|ALT_INV_intermediate~_emulated_q\,
	dataf => \inst1|ALT_INV_out_key~1_combout\,
	combout => \inst1|intermediate~0_combout\);

-- Location: LABCELL_X24_Y1_N0
\inst1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~45_sumout\ = SUM(( \inst1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add0~46\ = CARRY(( \inst1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst1|Add0~45_sumout\,
	cout => \inst1|Add0~46\);

-- Location: LABCELL_X24_Y1_N51
\inst1|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|always0~0_combout\ = ( \inst1|intermediate~0_combout\ & ( !\clock_manual~input_o\ ) ) # ( !\inst1|intermediate~0_combout\ & ( \clock_manual~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clock_manual~input_o\,
	dataf => \inst1|ALT_INV_intermediate~0_combout\,
	combout => \inst1|always0~0_combout\);

-- Location: FF_X24_Y1_N2
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~45_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: LABCELL_X24_Y1_N3
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \inst1|counter\(1) ) + ( GND ) + ( \inst1|Add0~46\ ))
-- \inst1|Add0~18\ = CARRY(( \inst1|counter\(1) ) + ( GND ) + ( \inst1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(1),
	cin => \inst1|Add0~46\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: FF_X24_Y1_N5
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~17_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LABCELL_X24_Y1_N6
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \inst1|counter\(2) ) + ( GND ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~14\ = CARRY(( \inst1|counter\(2) ) + ( GND ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_counter\(2),
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: FF_X24_Y1_N8
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~13_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LABCELL_X24_Y1_N9
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \inst1|counter\(3) ) + ( GND ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~10\ = CARRY(( \inst1|counter\(3) ) + ( GND ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(3),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: FF_X24_Y1_N11
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~9_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LABCELL_X24_Y1_N12
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \inst1|counter\(4) ) + ( GND ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~6\ = CARRY(( \inst1|counter\(4) ) + ( GND ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_counter\(4),
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: FF_X24_Y1_N14
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~5_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LABCELL_X24_Y1_N15
\inst1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~41_sumout\ = SUM(( \inst1|counter\(5) ) + ( GND ) + ( \inst1|Add0~6\ ))
-- \inst1|Add0~42\ = CARRY(( \inst1|counter\(5) ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(5),
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~41_sumout\,
	cout => \inst1|Add0~42\);

-- Location: FF_X24_Y1_N17
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~41_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LABCELL_X24_Y1_N18
\inst1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_sumout\ = SUM(( \inst1|counter\(6) ) + ( GND ) + ( \inst1|Add0~42\ ))
-- \inst1|Add0~38\ = CARRY(( \inst1|counter\(6) ) + ( GND ) + ( \inst1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(6),
	cin => \inst1|Add0~42\,
	sumout => \inst1|Add0~37_sumout\,
	cout => \inst1|Add0~38\);

-- Location: FF_X24_Y1_N20
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~37_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LABCELL_X24_Y1_N21
\inst1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_sumout\ = SUM(( \inst1|counter\(7) ) + ( GND ) + ( \inst1|Add0~38\ ))
-- \inst1|Add0~34\ = CARRY(( \inst1|counter\(7) ) + ( GND ) + ( \inst1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(7),
	cin => \inst1|Add0~38\,
	sumout => \inst1|Add0~33_sumout\,
	cout => \inst1|Add0~34\);

-- Location: FF_X24_Y1_N23
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~33_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LABCELL_X24_Y1_N24
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \inst1|counter\(8) ) + ( GND ) + ( \inst1|Add0~34\ ))
-- \inst1|Add0~30\ = CARRY(( \inst1|counter\(8) ) + ( GND ) + ( \inst1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(8),
	cin => \inst1|Add0~34\,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: FF_X24_Y1_N26
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~29_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LABCELL_X24_Y1_N27
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \inst1|counter\(9) ) + ( GND ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~26\ = CARRY(( \inst1|counter\(9) ) + ( GND ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_counter\(9),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: FF_X24_Y1_N29
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~25_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: LABCELL_X24_Y1_N30
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \inst1|counter\(10) ) + ( GND ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~22\ = CARRY(( \inst1|counter\(10) ) + ( GND ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_counter\(10),
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

-- Location: FF_X24_Y1_N32
\inst1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~21_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(10));

-- Location: LABCELL_X24_Y1_N33
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \inst1|counter\(11) ) + ( GND ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~2\ = CARRY(( \inst1|counter\(11) ) + ( GND ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(11),
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~1_sumout\,
	cout => \inst1|Add0~2\);

-- Location: FF_X24_Y1_N35
\inst1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~1_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(11));

-- Location: LABCELL_X24_Y1_N36
\inst1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~61_sumout\ = SUM(( \inst1|counter\(12) ) + ( GND ) + ( \inst1|Add0~2\ ))
-- \inst1|Add0~62\ = CARRY(( \inst1|counter\(12) ) + ( GND ) + ( \inst1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(12),
	cin => \inst1|Add0~2\,
	sumout => \inst1|Add0~61_sumout\,
	cout => \inst1|Add0~62\);

-- Location: FF_X24_Y1_N38
\inst1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~61_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(12));

-- Location: LABCELL_X24_Y1_N39
\inst1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~57_sumout\ = SUM(( \inst1|counter\(13) ) + ( GND ) + ( \inst1|Add0~62\ ))
-- \inst1|Add0~58\ = CARRY(( \inst1|counter\(13) ) + ( GND ) + ( \inst1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(13),
	cin => \inst1|Add0~62\,
	sumout => \inst1|Add0~57_sumout\,
	cout => \inst1|Add0~58\);

-- Location: FF_X24_Y1_N41
\inst1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~57_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(13));

-- Location: LABCELL_X24_Y1_N42
\inst1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~53_sumout\ = SUM(( \inst1|counter\(14) ) + ( GND ) + ( \inst1|Add0~58\ ))
-- \inst1|Add0~54\ = CARRY(( \inst1|counter\(14) ) + ( GND ) + ( \inst1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_counter\(14),
	cin => \inst1|Add0~58\,
	sumout => \inst1|Add0~53_sumout\,
	cout => \inst1|Add0~54\);

-- Location: FF_X24_Y1_N44
\inst1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~53_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(14));

-- Location: LABCELL_X24_Y1_N45
\inst1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~49_sumout\ = SUM(( \inst1|counter\(15) ) + ( GND ) + ( \inst1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(15),
	cin => \inst1|Add0~54\,
	sumout => \inst1|Add0~49_sumout\);

-- Location: FF_X24_Y1_N47
\inst1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|Add0~49_sumout\,
	clrn => \rst_key~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(15));

-- Location: LABCELL_X25_Y1_N12
\inst1|out_key~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~7_combout\ = ( \inst1|counter\(14) & ( \inst1|counter\(15) & ( (\inst1|counter\(13) & (\inst1|counter\(12) & \inst1|counter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(13),
	datac => \inst1|ALT_INV_counter\(12),
	datad => \inst1|ALT_INV_counter\(0),
	datae => \inst1|ALT_INV_counter\(14),
	dataf => \inst1|ALT_INV_counter\(15),
	combout => \inst1|out_key~7_combout\);

-- Location: LABCELL_X25_Y1_N0
\inst1|out_key~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~5_combout\ = ( \inst1|counter\(2) & ( \inst1|counter\(1) & ( (\inst1|counter\(4) & \inst1|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_counter\(4),
	datad => \inst1|ALT_INV_counter\(3),
	datae => \inst1|ALT_INV_counter\(2),
	dataf => \inst1|ALT_INV_counter\(1),
	combout => \inst1|out_key~5_combout\);

-- Location: LABCELL_X25_Y1_N30
\inst1|out_key~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~6_combout\ = ( \inst1|counter\(5) & ( \inst1|counter\(10) & ( (\inst1|counter\(7) & (\inst1|counter\(8) & (\inst1|counter\(6) & \inst1|counter\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_counter\(7),
	datab => \inst1|ALT_INV_counter\(8),
	datac => \inst1|ALT_INV_counter\(6),
	datad => \inst1|ALT_INV_counter\(9),
	datae => \inst1|ALT_INV_counter\(5),
	dataf => \inst1|ALT_INV_counter\(10),
	combout => \inst1|out_key~6_combout\);

-- Location: LABCELL_X24_Y1_N54
\inst1|out_key~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~8_combout\ = ( \inst1|out_key~5_combout\ & ( \inst1|out_key~6_combout\ & ( (!\inst1|counter\(11)) # ((!\inst1|out_key~7_combout\) # (!\inst1|intermediate~0_combout\ $ (!\clock_manual~input_o\))) ) ) ) # ( !\inst1|out_key~5_combout\ & ( 
-- \inst1|out_key~6_combout\ ) ) # ( \inst1|out_key~5_combout\ & ( !\inst1|out_key~6_combout\ ) ) # ( !\inst1|out_key~5_combout\ & ( !\inst1|out_key~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_intermediate~0_combout\,
	datab => \ALT_INV_clock_manual~input_o\,
	datac => \inst1|ALT_INV_counter\(11),
	datad => \inst1|ALT_INV_out_key~7_combout\,
	datae => \inst1|ALT_INV_out_key~5_combout\,
	dataf => \inst1|ALT_INV_out_key~6_combout\,
	combout => \inst1|out_key~8_combout\);

-- Location: LABCELL_X25_Y1_N54
\inst1|out_key~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~3_combout\ = ( \inst1|out_key~1_combout\ & ( \inst1|out_key~2_combout\ & ( (!\inst1|intermediate~0_combout\ & !\inst1|out_key~8_combout\) ) ) ) # ( !\inst1|out_key~1_combout\ & ( \inst1|out_key~2_combout\ & ( (\inst1|out_key~8_combout\) # 
-- (\inst1|intermediate~0_combout\) ) ) ) # ( \inst1|out_key~1_combout\ & ( !\inst1|out_key~2_combout\ & ( (!\inst1|intermediate~0_combout\) # (\inst1|out_key~8_combout\) ) ) ) # ( !\inst1|out_key~1_combout\ & ( !\inst1|out_key~2_combout\ & ( 
-- (\inst1|intermediate~0_combout\ & !\inst1|out_key~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100101110111011101101110111011101111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_intermediate~0_combout\,
	datab => \inst1|ALT_INV_out_key~8_combout\,
	datae => \inst1|ALT_INV_out_key~1_combout\,
	dataf => \inst1|ALT_INV_out_key~2_combout\,
	combout => \inst1|out_key~3_combout\);

-- Location: FF_X25_Y1_N55
\inst1|out_key~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_real~inputCLKENA0_outclk\,
	d => \inst1|out_key~3_combout\,
	clrn => \rst_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_key~_emulated_q\);

-- Location: LABCELL_X26_Y1_N24
\inst1|out_key~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|out_key~2_combout\ = ( \rst_key~input_o\ & ( \inst1|out_key~_emulated_q\ & ( !\inst1|out_key~1_combout\ ) ) ) # ( !\rst_key~input_o\ & ( \inst1|out_key~_emulated_q\ & ( \clock_manual~input_o\ ) ) ) # ( \rst_key~input_o\ & ( 
-- !\inst1|out_key~_emulated_q\ & ( \inst1|out_key~1_combout\ ) ) ) # ( !\rst_key~input_o\ & ( !\inst1|out_key~_emulated_q\ & ( \clock_manual~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_out_key~1_combout\,
	datad => \ALT_INV_clock_manual~input_o\,
	datae => \ALT_INV_rst_key~input_o\,
	dataf => \inst1|ALT_INV_out_key~_emulated_q\,
	combout => \inst1|out_key~2_combout\);

-- Location: LABCELL_X29_Y3_N27
\inst4|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst~0_combout\ = ( !\inst4|inst~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_inst~q\,
	combout => \inst4|inst~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\master_clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_clear,
	o => \master_clear~input_o\);

-- Location: FF_X29_Y3_N52
\inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst~q\);

-- Location: FF_X29_Y3_N53
\inst4|inst~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N39
\inst4|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst1~0_combout\ = ( \inst4|inst~DUPLICATE_q\ & ( !\inst4|inst1~DUPLICATE_q\ ) ) # ( !\inst4|inst~DUPLICATE_q\ & ( \inst4|inst1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst1~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_inst~DUPLICATE_q\,
	combout => \inst4|inst1~0_combout\);

-- Location: LABCELL_X29_Y3_N6
\inst4|inst1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst1~feeder_combout\ = \inst4|inst1~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst1~0_combout\,
	combout => \inst4|inst1~feeder_combout\);

-- Location: FF_X29_Y3_N7
\inst4|inst1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst1~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1~DUPLICATE_q\);

-- Location: FF_X29_Y3_N43
\inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst2~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst2~q\);

-- Location: LABCELL_X29_Y3_N48
\inst4|inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst2~0_combout\ = ( \inst4|inst~q\ & ( \inst4|inst2~q\ & ( !\inst4|inst1~DUPLICATE_q\ ) ) ) # ( !\inst4|inst~q\ & ( \inst4|inst2~q\ ) ) # ( \inst4|inst~q\ & ( !\inst4|inst2~q\ & ( \inst4|inst1~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst1~DUPLICATE_q\,
	datae => \inst4|ALT_INV_inst~q\,
	dataf => \inst4|ALT_INV_inst2~q\,
	combout => \inst4|inst2~0_combout\);

-- Location: LABCELL_X29_Y3_N42
\inst4|inst2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst2~feeder_combout\ = \inst4|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_inst2~0_combout\,
	combout => \inst4|inst2~feeder_combout\);

-- Location: FF_X29_Y3_N44
\inst4|inst2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst2~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst2~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N24
\inst4|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst3~0_combout\ = ( \inst4|inst2~q\ & ( !\inst4|inst3~q\ $ (((!\inst4|inst1~DUPLICATE_q\) # (!\inst4|inst~q\))) ) ) # ( !\inst4|inst2~q\ & ( \inst4|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst1~DUPLICATE_q\,
	datac => \inst4|ALT_INV_inst3~q\,
	datad => \inst4|ALT_INV_inst~q\,
	dataf => \inst4|ALT_INV_inst2~q\,
	combout => \inst4|inst3~0_combout\);

-- Location: LABCELL_X29_Y3_N0
\inst4|inst3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst3~feeder_combout\ = ( \inst4|inst3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_inst3~0_combout\,
	combout => \inst4|inst3~feeder_combout\);

-- Location: FF_X29_Y3_N2
\inst4|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst3~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3~q\);

-- Location: FF_X29_Y3_N1
\inst4|inst3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst3~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3~DUPLICATE_q\);

-- Location: FF_X29_Y3_N22
\inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst4~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4~q\);

-- Location: LABCELL_X29_Y3_N12
\inst4|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst4~0_combout\ = ( \inst4|inst3~DUPLICATE_q\ & ( \inst4|inst4~q\ & ( (!\inst4|inst1~DUPLICATE_q\) # ((!\inst4|inst2~q\) # (!\inst4|inst~q\)) ) ) ) # ( !\inst4|inst3~DUPLICATE_q\ & ( \inst4|inst4~q\ ) ) # ( \inst4|inst3~DUPLICATE_q\ & ( 
-- !\inst4|inst4~q\ & ( (\inst4|inst1~DUPLICATE_q\ & (\inst4|inst2~q\ & \inst4|inst~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000111111111111111111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~DUPLICATE_q\,
	datab => \inst4|ALT_INV_inst2~q\,
	datad => \inst4|ALT_INV_inst~q\,
	datae => \inst4|ALT_INV_inst3~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_inst4~q\,
	combout => \inst4|inst4~0_combout\);

-- Location: FF_X29_Y3_N23
\inst4|inst4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst4~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N18
\inst4|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst5~0_combout\ = ( \inst4|inst5~q\ & ( \inst4|inst4~q\ & ( (!\inst4|inst1~DUPLICATE_q\) # ((!\inst4|inst2~q\) # ((!\inst4|inst~DUPLICATE_q\) # (!\inst4|inst3~DUPLICATE_q\))) ) ) ) # ( !\inst4|inst5~q\ & ( \inst4|inst4~q\ & ( 
-- (\inst4|inst1~DUPLICATE_q\ & (\inst4|inst2~q\ & (\inst4|inst~DUPLICATE_q\ & \inst4|inst3~DUPLICATE_q\))) ) ) ) # ( \inst4|inst5~q\ & ( !\inst4|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~DUPLICATE_q\,
	datab => \inst4|ALT_INV_inst2~q\,
	datac => \inst4|ALT_INV_inst~DUPLICATE_q\,
	datad => \inst4|ALT_INV_inst3~DUPLICATE_q\,
	datae => \inst4|ALT_INV_inst5~q\,
	dataf => \inst4|ALT_INV_inst4~q\,
	combout => \inst4|inst5~0_combout\);

-- Location: FF_X29_Y3_N16
\inst4|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst5~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst5~q\);

-- Location: FF_X29_Y3_N8
\inst4|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	d => \inst4|inst1~feeder_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1~q\);

-- Location: LABCELL_X29_Y3_N33
\inst4|inst21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst21~combout\ = ( \inst4|inst~DUPLICATE_q\ & ( (\inst4|inst2~q\ & (\inst4|inst3~DUPLICATE_q\ & \inst4|inst1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst2~q\,
	datac => \inst4|ALT_INV_inst3~DUPLICATE_q\,
	datad => \inst4|ALT_INV_inst1~q\,
	dataf => \inst4|ALT_INV_inst~DUPLICATE_q\,
	combout => \inst4|inst21~combout\);

-- Location: LABCELL_X29_Y3_N30
\inst4|inst6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst6~0_combout\ = ( \inst4|inst5~q\ & ( !\inst4|inst6~q\ $ (((!\inst4|inst4~q\) # (!\inst4|inst21~combout\))) ) ) # ( !\inst4|inst5~q\ & ( \inst4|inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst4~q\,
	datac => \inst4|ALT_INV_inst6~q\,
	datad => \inst4|ALT_INV_inst21~combout\,
	dataf => \inst4|ALT_INV_inst5~q\,
	combout => \inst4|inst6~0_combout\);

-- Location: FF_X29_Y3_N29
\inst4|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst6~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6~q\);

-- Location: FF_X29_Y3_N37
\inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst7~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7~q\);

-- Location: LABCELL_X29_Y3_N54
\inst4|inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst7~0_combout\ = ( \inst4|inst5~q\ & ( \inst4|inst7~q\ & ( (!\inst4|inst21~combout\) # ((!\inst4|inst6~q\) # (!\inst4|inst4~q\)) ) ) ) # ( !\inst4|inst5~q\ & ( \inst4|inst7~q\ ) ) # ( \inst4|inst5~q\ & ( !\inst4|inst7~q\ & ( 
-- (\inst4|inst21~combout\ & (\inst4|inst6~q\ & \inst4|inst4~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000111111111111111111111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst21~combout\,
	datab => \inst4|ALT_INV_inst6~q\,
	datac => \inst4|ALT_INV_inst4~q\,
	datae => \inst4|ALT_INV_inst5~q\,
	dataf => \inst4|ALT_INV_inst7~q\,
	combout => \inst4|inst7~0_combout\);

-- Location: FF_X29_Y3_N38
\inst4|inst7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2_combout\,
	asdata => \inst4|inst7~0_combout\,
	clrn => \ALT_INV_master_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7~DUPLICATE_q\);

-- Location: M10K_X30_Y3_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080006001062000930206102063020900209001060010040000000000000000000C0806304062020910106005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:inst|altsyncram:altsyncram_component|altsyncram_vcg1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|ALT_INV_out_key~2_combout\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X36_Y1_N27
\inst6|inst54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst54~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(0)) # ((!\inst|altsyncram_component|auto_generated|q_a\(2)) # (\inst|altsyncram_component|auto_generated|q_a\(3))) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|altsyncram_component|auto_generated|q_a\(3)))) # (\inst|altsyncram_component|auto_generated|q_a\(2) & 
-- ((!\inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110101111110101111111100001111111101011111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst54~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\inst6|inst74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst74~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (\inst|altsyncram_component|auto_generated|q_a\(2)) # (\inst|altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(0)) # (!\inst|altsyncram_component|auto_generated|q_a\(3) $ (!\inst|altsyncram_component|auto_generated|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011011110110011101110111011111110110111101100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst74~0_combout\);

-- Location: LABCELL_X36_Y1_N15
\inst6|inst55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst55~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(0)) # (\inst|altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(2) & (!\inst|altsyncram_component|auto_generated|q_a\(0))) # (\inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101010101111111110100000101011111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst55~0_combout\);

-- Location: LABCELL_X36_Y1_N30
\inst6|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst46~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|altsyncram_component|auto_generated|q_a\(0)))) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\inst|altsyncram_component|auto_generated|q_a\(0))) # (\inst|altsyncram_component|auto_generated|q_a\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011111010111101111001011110011010111110101111011110010111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst46~0_combout\);

-- Location: LABCELL_X36_Y1_N51
\inst6|inst47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst47~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|altsyncram_component|auto_generated|q_a\(3)))) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( ((!\inst|altsyncram_component|auto_generated|q_a\(2)) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(3))) # (\inst|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101010111111111000011111111111101010101111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst47~0_combout\);

-- Location: LABCELL_X36_Y1_N54
\inst6|inst53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst53~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(0) & ((!\inst|altsyncram_component|auto_generated|q_a\(2)))) # (\inst|altsyncram_component|auto_generated|q_a\(0) & 
-- (!\inst|altsyncram_component|auto_generated|q_a\(3))) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(2)) # (!\inst|altsyncram_component|auto_generated|q_a\(3) $ 
-- (\inst|altsyncram_component|auto_generated|q_a\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111101101110010101100101011101101111011011100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst53~0_combout\);

-- Location: LABCELL_X36_Y1_N36
\inst6|inst40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|inst40~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst|altsyncram_component|auto_generated|q_a\(0)) # (\inst|altsyncram_component|auto_generated|q_a\(2))) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst|altsyncram_component|auto_generated|q_a\(3) & (!\inst|altsyncram_component|auto_generated|q_a\(2) $ (\inst|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|altsyncram_component|auto_generated|q_a\(2)) # (!\inst|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011011010110111110111111101111010110110101101111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst6|inst40~0_combout\);

-- Location: LABCELL_X41_Y1_N15
\inst7|inst54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst54~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( (\inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(6) $ (!\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111111111111111101011111010111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst54~0_combout\);

-- Location: LABCELL_X41_Y1_N54
\inst7|inst74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst74~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( (\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst|altsyncram_component|auto_generated|q_a\(7) $ (!\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( (\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011111100111100001111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst74~0_combout\);

-- Location: LABCELL_X41_Y1_N27
\inst7|inst55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst55~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( \inst|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(4) & ( (\inst|altsyncram_component|auto_generated|q_a\(6) & \inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(6)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst55~0_combout\);

-- Location: LABCELL_X41_Y1_N18
\inst7|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst46~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(4) & ( (\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011110011111100111100111111001111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst46~0_combout\);

-- Location: LABCELL_X41_Y1_N51
\inst7|inst47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst47~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (!\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(6) $ (!\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (!\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010010110100101101011111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst47~0_combout\);

-- Location: LABCELL_X41_Y1_N42
\inst7|inst53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst53~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(7)) # (!\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111100001111000011110011111100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst53~0_combout\);

-- Location: LABCELL_X41_Y1_N36
\inst7|inst40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|inst40~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(5) & ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst|altsyncram_component|auto_generated|q_a\(7) $ (!\inst|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(5) & ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(6)) # (\inst|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111111111111111100111100001111001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst7|inst40~0_combout\);

-- Location: LABCELL_X36_Y3_N51
\inst8|inst54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst54~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( (\inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111100111111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|inst54~0_combout\);

-- Location: LABCELL_X36_Y3_N54
\inst8|inst74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst74~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( (!\inst|altsyncram_component|auto_generated|q_a\(10)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( \inst|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) & ( (!\inst|altsyncram_component|auto_generated|q_a\(9)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111100001111000011111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst8|inst74~0_combout\);

-- Location: LABCELL_X36_Y3_N12
\inst8|inst55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst55~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( (\inst|altsyncram_component|auto_generated|q_a\(10)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(10)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111111111111111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst8|inst55~0_combout\);

-- Location: LABCELL_X36_Y3_N21
\inst8|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst46~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # 
-- ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) $ (!\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst|altsyncram_component|auto_generated|q_a\(8)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111100111111001100111100001111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|inst46~0_combout\);

-- Location: LABCELL_X36_Y3_N0
\inst8|inst47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst47~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( (!\inst|altsyncram_component|auto_generated|q_a\(9)) # (!\inst|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # 
-- ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) & ( (!\inst|altsyncram_component|auto_generated|q_a\(9)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111100001111000011111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst8|inst47~0_combout\);

-- Location: LABCELL_X36_Y3_N9
\inst8|inst53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst53~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( (\inst|altsyncram_component|auto_generated|q_a\(8) & !\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(10) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) $ (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110011000011110000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|inst53~0_combout\);

-- Location: LABCELL_X36_Y3_N36
\inst8|inst40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst40~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( !\inst|altsyncram_component|auto_generated|q_a\(9) $ (\inst|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(11) & ( \inst|altsyncram_component|auto_generated|q_a\(8) & ( (\inst|altsyncram_component|auto_generated|q_a\(10)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(11) & ( !\inst|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(10)) # (\inst|altsyncram_component|auto_generated|q_a\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111111111111111100111111001111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst8|inst40~0_combout\);

-- Location: LABCELL_X31_Y3_N24
\inst9|inst54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst54~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # 
-- ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13)) # (!\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111100111111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst54~0_combout\);

-- Location: LABCELL_X31_Y3_N9
\inst9|inst74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst74~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # 
-- ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12) & !\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111111111111111111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst74~0_combout\);

-- Location: LABCELL_X31_Y3_N12
\inst9|inst55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst55~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\inst|altsyncram_component|auto_generated|q_a\(13) & !\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111001100110000001100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst55~0_combout\);

-- Location: LABCELL_X31_Y3_N33
\inst9|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst46~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (!\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) 
-- # ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( !\inst|altsyncram_component|auto_generated|q_a\(12) $ (!\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111101011111010101011010010110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst46~0_combout\);

-- Location: LABCELL_X31_Y3_N48
\inst9|inst47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst47~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111111111111111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst47~0_combout\);

-- Location: LABCELL_X31_Y3_N54
\inst9|inst53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst53~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( !\inst|altsyncram_component|auto_generated|q_a\(13) $ (\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(13)) # (!\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110011000011110000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst53~0_combout\);

-- Location: LABCELL_X31_Y3_N3
\inst9|inst40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst40~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # 
-- ( !\inst|altsyncram_component|auto_generated|q_a\(15) & ( \inst|altsyncram_component|auto_generated|q_a\(14) & ( (\inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|altsyncram_component|auto_generated|q_a\(12)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (!\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( 
-- !\inst|altsyncram_component|auto_generated|q_a\(15) & ( !\inst|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst|altsyncram_component|auto_generated|q_a\(12)) # (\inst|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111110101111101001011111010111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|inst40~0_combout\);

-- Location: LABCELL_X29_Y41_N3
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


