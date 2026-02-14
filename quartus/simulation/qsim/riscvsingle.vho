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

-- DATE "05/20/2025 11:06:07"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUControl : IN std_logic_vector(2 DOWNTO 0);
	C : OUT std_logic;
	Result : BUFFER std_logic_vector(31 DOWNTO 0);
	Zero : OUT std_logic
	);
END alu;

-- Design Ports Information
-- C	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUControl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux34~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \Result[16]~output_o\ : std_logic;
SIGNAL \Result[17]~output_o\ : std_logic;
SIGNAL \Result[18]~output_o\ : std_logic;
SIGNAL \Result[19]~output_o\ : std_logic;
SIGNAL \Result[20]~output_o\ : std_logic;
SIGNAL \Result[21]~output_o\ : std_logic;
SIGNAL \Result[22]~output_o\ : std_logic;
SIGNAL \Result[23]~output_o\ : std_logic;
SIGNAL \Result[24]~output_o\ : std_logic;
SIGNAL \Result[25]~output_o\ : std_logic;
SIGNAL \Result[26]~output_o\ : std_logic;
SIGNAL \Result[27]~output_o\ : std_logic;
SIGNAL \Result[28]~output_o\ : std_logic;
SIGNAL \Result[29]~output_o\ : std_logic;
SIGNAL \Result[30]~output_o\ : std_logic;
SIGNAL \Result[31]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:19:soma|vs~1_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:10:soma|vs~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:6:soma|vs~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:3:soma|vs~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:1:soma|vs~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:3:soma|vs~2_combout\ : std_logic;
SIGNAL \adder_inst|somadores:3:soma|vs~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:4:soma|vs~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:6:soma|vs~2_combout\ : std_logic;
SIGNAL \adder_inst|somadores:6:soma|vs~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:7:soma|vs~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:8:soma|vs~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:10:soma|vs~1_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:10:soma|vs~2_combout\ : std_logic;
SIGNAL \adder_inst|somadores:11:soma|vs~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:13:soma|vs~1_combout\ : std_logic;
SIGNAL \adder_inst|somadores:13:soma|vs~2_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:13:soma|vs~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:14:soma|vs~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:15:soma|vs~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:16:soma|vs~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:17:soma|vs~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:19:soma|vs~2_combout\ : std_logic;
SIGNAL \adder_inst|somadores:19:soma|vs~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:20:soma|vs~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:21:soma|vs~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:23:soma|vs~1_combout\ : std_logic;
SIGNAL \adder_inst|somadores:23:soma|vs~2_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:23:soma|vs~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:24:soma|vs~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:25:soma|vs~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:28:soma|vs~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:28:soma|vs~1_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:28:soma|vs~2_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \adder_inst|somadores:29:soma|vs~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:30:soma|vs~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ALUControl[2]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \C$latch~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \slt_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~27_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~29_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~31_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~33_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~35_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~37_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~39_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~41_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~43_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~45_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~47_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~49_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~51_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~53_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~55_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~57_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~59_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~61_cout\ : std_logic;
SIGNAL \slt_inst|LessThan0~62_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \adder_inst|somadores:30:soma|s~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:29:soma|s~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:28:soma|s~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:31:soma|s~0_combout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:1:soma|s~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux34~0clkctrl_outclk\ : std_logic;
SIGNAL \Result[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Result[2]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Result[3]$latch~combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Result[4]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Result[5]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Result[6]$latch~combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Result[7]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Result[8]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Result[9]$latch~combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Result[10]$latch~combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Result[11]$latch~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Result[12]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Result[13]$latch~combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Result[14]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Result[15]$latch~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Result[16]$latch~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Result[17]$latch~combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Result[18]$latch~combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Result[19]$latch~combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Result[20]$latch~combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Result[21]$latch~combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Result[22]$latch~combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Result[23]$latch~combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \adder_inst|somadores:24:soma|s~combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Result[24]$latch~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Result[25]$latch~combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Result[26]$latch~combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Result[27]$latch~combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Result[28]$latch~combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Result[29]$latch~combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Result[30]$latch~combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Result[31]$latch~combout\ : std_logic;
SIGNAL \zr~2_combout\ : std_logic;
SIGNAL \zr~0_combout\ : std_logic;
SIGNAL \zr~1_combout\ : std_logic;
SIGNAL \zr~3_combout\ : std_logic;
SIGNAL \zr~4_combout\ : std_logic;
SIGNAL \zr~8_combout\ : std_logic;
SIGNAL \zr~9_combout\ : std_logic;
SIGNAL \zr~6_combout\ : std_logic;
SIGNAL \zr~5_combout\ : std_logic;
SIGNAL \zr~7_combout\ : std_logic;
SIGNAL \zr~10_combout\ : std_logic;
SIGNAL \ALT_INV_zr~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALUControl <= ALUControl;
C <= ww_C;
Result <= ww_Result;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux34~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux34~0_combout\);
\ALT_INV_zr~10_combout\ <= NOT \zr~10_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X38_Y0_N30
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C$latch~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~21_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\Result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[8]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[9]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\Result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[10]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\Result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[11]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[12]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[13]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[14]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\Result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[15]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\Result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[16]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[16]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[17]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[17]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[18]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[18]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[19]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[19]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\Result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[20]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[20]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[21]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[21]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\Result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[22]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[22]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\Result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[23]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[23]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[24]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[24]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[25]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[25]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[26]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[26]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[27]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[27]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\Result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[28]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[28]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[29]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[29]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\Result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[30]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[30]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[31]$latch~combout\,
	devoe => ww_devoe,
	o => \Result[31]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_zr~10_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOIBUF_X36_Y39_N22
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X0_Y35_N22
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X34_Y35_N12
\adder_inst|somadores:19:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:19:soma|vs~1_combout\ = (\B[19]~input_o\) # (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \adder_inst|somadores:19:soma|vs~1_combout\);

-- Location: IOIBUF_X34_Y0_N8
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X31_Y37_N26
\adder_inst|somadores:10:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:10:soma|vs~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \adder_inst|somadores:10:soma|vs~0_combout\);

-- Location: IOIBUF_X29_Y39_N15
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X31_Y36_N20
\adder_inst|somadores:6:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:6:soma|vs~1_combout\ = (\A[6]~input_o\) # (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \adder_inst|somadores:6:soma|vs~1_combout\);

-- Location: IOIBUF_X24_Y39_N1
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y36_N20
\adder_inst|somadores:3:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:3:soma|vs~1_combout\ = (\B[3]~input_o\) # (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \adder_inst|somadores:3:soma|vs~1_combout\);

-- Location: IOIBUF_X26_Y39_N1
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X29_Y38_N18
\adder_inst|somadores:1:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:1:soma|vs~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \adder_inst|somadores:1:soma|vs~0_combout\);

-- Location: IOIBUF_X22_Y39_N29
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X29_Y36_N22
\adder_inst|somadores:3:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:3:soma|vs~2_combout\ = (\adder_inst|somadores:3:soma|vs~1_combout\ & ((\A[2]~input_o\ & ((\adder_inst|somadores:1:soma|vs~0_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\adder_inst|somadores:1:soma|vs~0_combout\ & 
-- \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \adder_inst|somadores:3:soma|vs~1_combout\,
	datac => \adder_inst|somadores:1:soma|vs~0_combout\,
	datad => \B[2]~input_o\,
	combout => \adder_inst|somadores:3:soma|vs~2_combout\);

-- Location: LCCOMB_X29_Y36_N10
\adder_inst|somadores:3:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:3:soma|vs~0_combout\ = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \adder_inst|somadores:3:soma|vs~0_combout\);

-- Location: LCCOMB_X29_Y36_N16
\adder_inst|somadores:4:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:4:soma|vs~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\adder_inst|somadores:3:soma|vs~2_combout\) # (\adder_inst|somadores:3:soma|vs~0_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- ((\adder_inst|somadores:3:soma|vs~2_combout\) # (\adder_inst|somadores:3:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \adder_inst|somadores:3:soma|vs~2_combout\,
	datad => \adder_inst|somadores:3:soma|vs~0_combout\,
	combout => \adder_inst|somadores:4:soma|vs~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X31_Y36_N14
\adder_inst|somadores:6:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:6:soma|vs~2_combout\ = (\adder_inst|somadores:6:soma|vs~1_combout\ & ((\A[5]~input_o\ & ((\adder_inst|somadores:4:soma|vs~0_combout\) # (\B[5]~input_o\))) # (!\A[5]~input_o\ & (\adder_inst|somadores:4:soma|vs~0_combout\ & 
-- \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \adder_inst|somadores:6:soma|vs~1_combout\,
	datac => \adder_inst|somadores:4:soma|vs~0_combout\,
	datad => \B[5]~input_o\,
	combout => \adder_inst|somadores:6:soma|vs~2_combout\);

-- Location: LCCOMB_X31_Y36_N26
\adder_inst|somadores:6:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:6:soma|vs~0_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \adder_inst|somadores:6:soma|vs~0_combout\);

-- Location: IOIBUF_X0_Y34_N22
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X31_Y36_N24
\adder_inst|somadores:7:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:7:soma|vs~0_combout\ = (\B[7]~input_o\ & ((\adder_inst|somadores:6:soma|vs~2_combout\) # ((\adder_inst|somadores:6:soma|vs~0_combout\) # (\A[7]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & 
-- ((\adder_inst|somadores:6:soma|vs~2_combout\) # (\adder_inst|somadores:6:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \adder_inst|somadores:6:soma|vs~2_combout\,
	datac => \adder_inst|somadores:6:soma|vs~0_combout\,
	datad => \A[7]~input_o\,
	combout => \adder_inst|somadores:7:soma|vs~0_combout\);

-- Location: IOIBUF_X46_Y54_N1
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X30_Y37_N28
\adder_inst|somadores:8:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:8:soma|vs~0_combout\ = (\adder_inst|somadores:7:soma|vs~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\))) # (!\adder_inst|somadores:7:soma|vs~0_combout\ & (\A[8]~input_o\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:7:soma|vs~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \adder_inst|somadores:8:soma|vs~0_combout\);

-- Location: LCCOMB_X30_Y37_N26
\adder_inst|somadores:10:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:10:soma|vs~1_combout\ = (\B[10]~input_o\) # (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \adder_inst|somadores:10:soma|vs~1_combout\);

-- Location: IOIBUF_X78_Y36_N15
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X30_Y37_N22
\adder_inst|somadores:10:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:10:soma|vs~2_combout\ = (\adder_inst|somadores:10:soma|vs~1_combout\ & ((\B[9]~input_o\ & ((\adder_inst|somadores:8:soma|vs~0_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\adder_inst|somadores:8:soma|vs~0_combout\ & 
-- \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \adder_inst|somadores:8:soma|vs~0_combout\,
	datac => \adder_inst|somadores:10:soma|vs~1_combout\,
	datad => \A[9]~input_o\,
	combout => \adder_inst|somadores:10:soma|vs~2_combout\);

-- Location: LCCOMB_X31_Y37_N4
\adder_inst|somadores:11:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:11:soma|vs~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\adder_inst|somadores:10:soma|vs~0_combout\) # (\adder_inst|somadores:10:soma|vs~2_combout\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & 
-- ((\adder_inst|somadores:10:soma|vs~0_combout\) # (\adder_inst|somadores:10:soma|vs~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \adder_inst|somadores:10:soma|vs~0_combout\,
	datad => \adder_inst|somadores:10:soma|vs~2_combout\,
	combout => \adder_inst|somadores:11:soma|vs~0_combout\);

-- Location: IOIBUF_X36_Y39_N29
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X32_Y37_N20
\adder_inst|somadores:13:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:13:soma|vs~1_combout\ = (\B[13]~input_o\) # (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \adder_inst|somadores:13:soma|vs~1_combout\);

-- Location: LCCOMB_X32_Y37_N22
\adder_inst|somadores:13:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:13:soma|vs~2_combout\ = (\adder_inst|somadores:13:soma|vs~1_combout\ & ((\B[12]~input_o\ & ((\A[12]~input_o\) # (\adder_inst|somadores:11:soma|vs~0_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- \adder_inst|somadores:11:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \adder_inst|somadores:11:soma|vs~0_combout\,
	datad => \adder_inst|somadores:13:soma|vs~1_combout\,
	combout => \adder_inst|somadores:13:soma|vs~2_combout\);

-- Location: IOIBUF_X36_Y39_N15
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X32_Y37_N26
\adder_inst|somadores:13:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:13:soma|vs~0_combout\ = (\B[13]~input_o\ & \A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \adder_inst|somadores:13:soma|vs~0_combout\);

-- Location: IOIBUF_X78_Y36_N8
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X32_Y37_N8
\adder_inst|somadores:14:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:14:soma|vs~0_combout\ = (\B[14]~input_o\ & ((\adder_inst|somadores:13:soma|vs~2_combout\) # ((\adder_inst|somadores:13:soma|vs~0_combout\) # (\A[14]~input_o\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & 
-- ((\adder_inst|somadores:13:soma|vs~2_combout\) # (\adder_inst|somadores:13:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:13:soma|vs~2_combout\,
	datab => \B[14]~input_o\,
	datac => \adder_inst|somadores:13:soma|vs~0_combout\,
	datad => \A[14]~input_o\,
	combout => \adder_inst|somadores:14:soma|vs~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X32_Y35_N6
\adder_inst|somadores:15:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:15:soma|vs~0_combout\ = (\A[15]~input_o\ & ((\adder_inst|somadores:14:soma|vs~0_combout\) # (\B[15]~input_o\))) # (!\A[15]~input_o\ & (\adder_inst|somadores:14:soma|vs~0_combout\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \adder_inst|somadores:14:soma|vs~0_combout\,
	datad => \B[15]~input_o\,
	combout => \adder_inst|somadores:15:soma|vs~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X32_Y35_N24
\adder_inst|somadores:16:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:16:soma|vs~0_combout\ = (\adder_inst|somadores:15:soma|vs~0_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\))) # (!\adder_inst|somadores:15:soma|vs~0_combout\ & (\A[16]~input_o\ & \B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:15:soma|vs~0_combout\,
	datab => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \adder_inst|somadores:16:soma|vs~0_combout\);

-- Location: IOIBUF_X66_Y54_N22
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X32_Y35_N10
\adder_inst|somadores:17:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:17:soma|vs~0_combout\ = (\A[17]~input_o\ & ((\adder_inst|somadores:16:soma|vs~0_combout\) # (\B[17]~input_o\))) # (!\A[17]~input_o\ & (\adder_inst|somadores:16:soma|vs~0_combout\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \adder_inst|somadores:16:soma|vs~0_combout\,
	datac => \B[17]~input_o\,
	combout => \adder_inst|somadores:17:soma|vs~0_combout\);

-- Location: IOIBUF_X46_Y54_N15
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X34_Y35_N22
\adder_inst|somadores:19:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:19:soma|vs~2_combout\ = (\adder_inst|somadores:19:soma|vs~1_combout\ & ((\adder_inst|somadores:17:soma|vs~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (!\adder_inst|somadores:17:soma|vs~0_combout\ & (\A[18]~input_o\ & 
-- \B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:19:soma|vs~1_combout\,
	datab => \adder_inst|somadores:17:soma|vs~0_combout\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \adder_inst|somadores:19:soma|vs~2_combout\);

-- Location: LCCOMB_X34_Y35_N26
\adder_inst|somadores:19:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:19:soma|vs~0_combout\ = (\B[19]~input_o\ & \A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \adder_inst|somadores:19:soma|vs~0_combout\);

-- Location: LCCOMB_X34_Y35_N8
\adder_inst|somadores:20:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:20:soma|vs~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\adder_inst|somadores:19:soma|vs~2_combout\) # (\adder_inst|somadores:19:soma|vs~0_combout\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & 
-- ((\adder_inst|somadores:19:soma|vs~2_combout\) # (\adder_inst|somadores:19:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \adder_inst|somadores:19:soma|vs~2_combout\,
	datad => \adder_inst|somadores:19:soma|vs~0_combout\,
	combout => \adder_inst|somadores:20:soma|vs~0_combout\);

-- Location: IOIBUF_X20_Y39_N15
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X31_Y35_N16
\adder_inst|somadores:21:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:21:soma|vs~0_combout\ = (\B[21]~input_o\ & ((\adder_inst|somadores:20:soma|vs~0_combout\) # (\A[21]~input_o\))) # (!\B[21]~input_o\ & (\adder_inst|somadores:20:soma|vs~0_combout\ & \A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \adder_inst|somadores:20:soma|vs~0_combout\,
	datac => \A[21]~input_o\,
	combout => \adder_inst|somadores:21:soma|vs~0_combout\);

-- Location: IOIBUF_X54_Y54_N22
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X31_Y35_N22
\adder_inst|somadores:23:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:23:soma|vs~1_combout\ = (\B[23]~input_o\) # (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	combout => \adder_inst|somadores:23:soma|vs~1_combout\);

-- Location: LCCOMB_X31_Y35_N10
\adder_inst|somadores:23:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:23:soma|vs~2_combout\ = (\adder_inst|somadores:23:soma|vs~1_combout\ & ((\B[22]~input_o\ & ((\adder_inst|somadores:21:soma|vs~0_combout\) # (\A[22]~input_o\))) # (!\B[22]~input_o\ & (\adder_inst|somadores:21:soma|vs~0_combout\ & 
-- \A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \adder_inst|somadores:21:soma|vs~0_combout\,
	datac => \A[22]~input_o\,
	datad => \adder_inst|somadores:23:soma|vs~1_combout\,
	combout => \adder_inst|somadores:23:soma|vs~2_combout\);

-- Location: IOIBUF_X54_Y54_N8
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X31_Y35_N20
\adder_inst|somadores:23:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:23:soma|vs~0_combout\ = (\B[23]~input_o\ & \A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	combout => \adder_inst|somadores:23:soma|vs~0_combout\);

-- Location: LCCOMB_X31_Y38_N22
\adder_inst|somadores:24:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:24:soma|vs~0_combout\ = (\A[24]~input_o\ & ((\adder_inst|somadores:23:soma|vs~2_combout\) # ((\B[24]~input_o\) # (\adder_inst|somadores:23:soma|vs~0_combout\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & 
-- ((\adder_inst|somadores:23:soma|vs~2_combout\) # (\adder_inst|somadores:23:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \adder_inst|somadores:23:soma|vs~2_combout\,
	datac => \B[24]~input_o\,
	datad => \adder_inst|somadores:23:soma|vs~0_combout\,
	combout => \adder_inst|somadores:24:soma|vs~0_combout\);

-- Location: IOIBUF_X31_Y39_N8
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X31_Y38_N16
\adder_inst|somadores:25:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:25:soma|vs~0_combout\ = (\adder_inst|somadores:24:soma|vs~0_combout\ & ((\A[25]~input_o\) # (\B[25]~input_o\))) # (!\adder_inst|somadores:24:soma|vs~0_combout\ & (\A[25]~input_o\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:24:soma|vs~0_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \adder_inst|somadores:25:soma|vs~0_combout\);

-- Location: IOIBUF_X34_Y39_N22
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X34_Y38_N22
\adder_inst|somadores:28:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:28:soma|vs~0_combout\ = (\adder_inst|somadores:25:soma|vs~0_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (!\adder_inst|somadores:25:soma|vs~0_combout\ & (\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:25:soma|vs~0_combout\,
	datab => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \adder_inst|somadores:28:soma|vs~0_combout\);

-- Location: IOIBUF_X46_Y54_N22
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X34_Y38_N16
\adder_inst|somadores:28:soma|vs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:28:soma|vs~1_combout\ = (\A[27]~input_o\ & ((\adder_inst|somadores:28:soma|vs~0_combout\) # (\B[27]~input_o\))) # (!\A[27]~input_o\ & (\adder_inst|somadores:28:soma|vs~0_combout\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datac => \adder_inst|somadores:28:soma|vs~0_combout\,
	datad => \B[27]~input_o\,
	combout => \adder_inst|somadores:28:soma|vs~1_combout\);

-- Location: IOIBUF_X56_Y54_N1
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X34_Y38_N2
\adder_inst|somadores:28:soma|vs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:28:soma|vs~2_combout\ = (\B[28]~input_o\ & ((\adder_inst|somadores:28:soma|vs~1_combout\) # (\A[28]~input_o\))) # (!\B[28]~input_o\ & (\adder_inst|somadores:28:soma|vs~1_combout\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \adder_inst|somadores:28:soma|vs~1_combout\,
	datac => \A[28]~input_o\,
	combout => \adder_inst|somadores:28:soma|vs~2_combout\);

-- Location: IOIBUF_X34_Y0_N22
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X51_Y54_N15
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X32_Y38_N12
\adder_inst|somadores:29:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:29:soma|vs~0_combout\ = (\adder_inst|somadores:28:soma|vs~2_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\))) # (!\adder_inst|somadores:28:soma|vs~2_combout\ & (\A[29]~input_o\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:28:soma|vs~2_combout\,
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \adder_inst|somadores:29:soma|vs~0_combout\);

-- Location: LCCOMB_X32_Y38_N6
\adder_inst|somadores:30:soma|vs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:30:soma|vs~0_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # (\adder_inst|somadores:29:soma|vs~0_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & \adder_inst|somadores:29:soma|vs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => \adder_inst|somadores:29:soma|vs~0_combout\,
	combout => \adder_inst|somadores:30:soma|vs~0_combout\);

-- Location: IOIBUF_X26_Y39_N29
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\ALUControl[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(2),
	o => \ALUControl[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X31_Y38_N6
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ALUControl[2]~input_o\ & ((\adder_inst|somadores:30:soma|vs~0_combout\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) # (!\adder_inst|somadores:30:soma|vs~0_combout\ & (\A[31]~input_o\ & \B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:30:soma|vs~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ALUControl[2]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X29_Y39_N8
\ALUControl[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\ALUControl[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: LCCOMB_X31_Y38_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ALUControl[2]~input_o\ & (!\ALUControl[1]~input_o\ & \ALUControl[0]~input_o\)) # (!\ALUControl[2]~input_o\ & (\ALUControl[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[2]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X31_Y38_N12
\C$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C$latch~combout\ = (\Mux2~0_combout\ & ((\C$latch~combout\))) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \C$latch~combout\,
	datad => \Mux2~0_combout\,
	combout => \C$latch~combout\);

-- Location: LCCOMB_X29_Y38_N22
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\ALUControl[1]~input_o\ & (\ALUControl[2]~input_o\ & \ALUControl[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \ALUControl[2]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X29_Y36_N8
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X18_Y37_N0
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\B[6]~input_o\ & (\A[6]~input_o\ & (\B[7]~input_o\ $ (!\A[7]~input_o\)))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & (\B[7]~input_o\ $ (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X31_Y36_N8
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\B[5]~input_o\ & (\A[5]~input_o\ & (\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & (\B[4]~input_o\ $ (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X29_Y38_N28
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X29_Y38_N6
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~1_combout\ & (\Mux0~3_combout\ & (\Mux0~2_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~3_combout\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X32_Y35_N8
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\B[15]~input_o\ & (\A[15]~input_o\ & (\B[14]~input_o\ $ (!\A[14]~input_o\)))) # (!\B[15]~input_o\ & (!\A[15]~input_o\ & (\B[14]~input_o\ $ (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X30_Y37_N0
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\A[8]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ $ (!\B[9]~input_o\)))) # (!\A[8]~input_o\ & (!\B[8]~input_o\ & (\A[9]~input_o\ $ (!\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X31_Y37_N24
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\B[11]~input_o\ & (\A[11]~input_o\ & (\A[10]~input_o\ $ (!\B[10]~input_o\)))) # (!\B[11]~input_o\ & (!\A[11]~input_o\ & (\A[10]~input_o\ $ (!\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X32_Y37_N0
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\A[13]~input_o\ & (\B[13]~input_o\ & (\A[12]~input_o\ $ (!\B[12]~input_o\)))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & (\A[12]~input_o\ $ (!\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X29_Y38_N20
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~8_combout\ & (\Mux0~5_combout\ & (\Mux0~6_combout\ & \Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X30_Y36_N0
\slt_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~1_cout\ = CARRY((\A[0]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \slt_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y36_N2
\slt_inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & ((!\slt_inst|LessThan0~1_cout\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\slt_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~1_cout\,
	cout => \slt_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y36_N4
\slt_inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\slt_inst|LessThan0~3_cout\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\slt_inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~3_cout\,
	cout => \slt_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y36_N6
\slt_inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\slt_inst|LessThan0~5_cout\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\slt_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~5_cout\,
	cout => \slt_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y36_N8
\slt_inst|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & ((!\slt_inst|LessThan0~7_cout\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\slt_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~7_cout\,
	cout => \slt_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y36_N10
\slt_inst|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & ((!\slt_inst|LessThan0~9_cout\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\slt_inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~9_cout\,
	cout => \slt_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y36_N12
\slt_inst|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & ((!\slt_inst|LessThan0~11_cout\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\slt_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~11_cout\,
	cout => \slt_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y36_N14
\slt_inst|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~15_cout\ = CARRY((\A[7]~input_o\ & (\B[7]~input_o\ & !\slt_inst|LessThan0~13_cout\)) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # (!\slt_inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~13_cout\,
	cout => \slt_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X30_Y36_N16
\slt_inst|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~17_cout\ = CARRY((\B[8]~input_o\ & (\A[8]~input_o\ & !\slt_inst|LessThan0~15_cout\)) # (!\B[8]~input_o\ & ((\A[8]~input_o\) # (!\slt_inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~15_cout\,
	cout => \slt_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X30_Y36_N18
\slt_inst|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~19_cout\ = CARRY((\B[9]~input_o\ & ((!\slt_inst|LessThan0~17_cout\) # (!\A[9]~input_o\))) # (!\B[9]~input_o\ & (!\A[9]~input_o\ & !\slt_inst|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~17_cout\,
	cout => \slt_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X30_Y36_N20
\slt_inst|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~21_cout\ = CARRY((\A[10]~input_o\ & ((!\slt_inst|LessThan0~19_cout\) # (!\B[10]~input_o\))) # (!\A[10]~input_o\ & (!\B[10]~input_o\ & !\slt_inst|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~19_cout\,
	cout => \slt_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X30_Y36_N22
\slt_inst|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~23_cout\ = CARRY((\A[11]~input_o\ & (\B[11]~input_o\ & !\slt_inst|LessThan0~21_cout\)) # (!\A[11]~input_o\ & ((\B[11]~input_o\) # (!\slt_inst|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~21_cout\,
	cout => \slt_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X30_Y36_N24
\slt_inst|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~25_cout\ = CARRY((\B[12]~input_o\ & (\A[12]~input_o\ & !\slt_inst|LessThan0~23_cout\)) # (!\B[12]~input_o\ & ((\A[12]~input_o\) # (!\slt_inst|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~23_cout\,
	cout => \slt_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X30_Y36_N26
\slt_inst|LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & (\B[13]~input_o\ & !\slt_inst|LessThan0~25_cout\)) # (!\A[13]~input_o\ & ((\B[13]~input_o\) # (!\slt_inst|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~25_cout\,
	cout => \slt_inst|LessThan0~27_cout\);

-- Location: LCCOMB_X30_Y36_N28
\slt_inst|LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~29_cout\ = CARRY((\B[14]~input_o\ & (\A[14]~input_o\ & !\slt_inst|LessThan0~27_cout\)) # (!\B[14]~input_o\ & ((\A[14]~input_o\) # (!\slt_inst|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~27_cout\,
	cout => \slt_inst|LessThan0~29_cout\);

-- Location: LCCOMB_X30_Y36_N30
\slt_inst|LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~31_cout\ = CARRY((\A[15]~input_o\ & (\B[15]~input_o\ & !\slt_inst|LessThan0~29_cout\)) # (!\A[15]~input_o\ & ((\B[15]~input_o\) # (!\slt_inst|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~29_cout\,
	cout => \slt_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X30_Y35_N0
\slt_inst|LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~33_cout\ = CARRY((\B[16]~input_o\ & (\A[16]~input_o\ & !\slt_inst|LessThan0~31_cout\)) # (!\B[16]~input_o\ & ((\A[16]~input_o\) # (!\slt_inst|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~31_cout\,
	cout => \slt_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X30_Y35_N2
\slt_inst|LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~35_cout\ = CARRY((\B[17]~input_o\ & ((!\slt_inst|LessThan0~33_cout\) # (!\A[17]~input_o\))) # (!\B[17]~input_o\ & (!\A[17]~input_o\ & !\slt_inst|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~33_cout\,
	cout => \slt_inst|LessThan0~35_cout\);

-- Location: LCCOMB_X30_Y35_N4
\slt_inst|LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~37_cout\ = CARRY((\B[18]~input_o\ & (\A[18]~input_o\ & !\slt_inst|LessThan0~35_cout\)) # (!\B[18]~input_o\ & ((\A[18]~input_o\) # (!\slt_inst|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~35_cout\,
	cout => \slt_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X30_Y35_N6
\slt_inst|LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~39_cout\ = CARRY((\B[19]~input_o\ & ((!\slt_inst|LessThan0~37_cout\) # (!\A[19]~input_o\))) # (!\B[19]~input_o\ & (!\A[19]~input_o\ & !\slt_inst|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~37_cout\,
	cout => \slt_inst|LessThan0~39_cout\);

-- Location: LCCOMB_X30_Y35_N8
\slt_inst|LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~41_cout\ = CARRY((\A[20]~input_o\ & ((!\slt_inst|LessThan0~39_cout\) # (!\B[20]~input_o\))) # (!\A[20]~input_o\ & (!\B[20]~input_o\ & !\slt_inst|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~39_cout\,
	cout => \slt_inst|LessThan0~41_cout\);

-- Location: LCCOMB_X30_Y35_N10
\slt_inst|LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~43_cout\ = CARRY((\A[21]~input_o\ & (\B[21]~input_o\ & !\slt_inst|LessThan0~41_cout\)) # (!\A[21]~input_o\ & ((\B[21]~input_o\) # (!\slt_inst|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~41_cout\,
	cout => \slt_inst|LessThan0~43_cout\);

-- Location: LCCOMB_X30_Y35_N12
\slt_inst|LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~45_cout\ = CARRY((\A[22]~input_o\ & ((!\slt_inst|LessThan0~43_cout\) # (!\B[22]~input_o\))) # (!\A[22]~input_o\ & (!\B[22]~input_o\ & !\slt_inst|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~43_cout\,
	cout => \slt_inst|LessThan0~45_cout\);

-- Location: LCCOMB_X30_Y35_N14
\slt_inst|LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~47_cout\ = CARRY((\B[23]~input_o\ & ((!\slt_inst|LessThan0~45_cout\) # (!\A[23]~input_o\))) # (!\B[23]~input_o\ & (!\A[23]~input_o\ & !\slt_inst|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~45_cout\,
	cout => \slt_inst|LessThan0~47_cout\);

-- Location: LCCOMB_X30_Y35_N16
\slt_inst|LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~49_cout\ = CARRY((\A[24]~input_o\ & ((!\slt_inst|LessThan0~47_cout\) # (!\B[24]~input_o\))) # (!\A[24]~input_o\ & (!\B[24]~input_o\ & !\slt_inst|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~47_cout\,
	cout => \slt_inst|LessThan0~49_cout\);

-- Location: LCCOMB_X30_Y35_N18
\slt_inst|LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~51_cout\ = CARRY((\B[25]~input_o\ & ((!\slt_inst|LessThan0~49_cout\) # (!\A[25]~input_o\))) # (!\B[25]~input_o\ & (!\A[25]~input_o\ & !\slt_inst|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~49_cout\,
	cout => \slt_inst|LessThan0~51_cout\);

-- Location: LCCOMB_X30_Y35_N20
\slt_inst|LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~53_cout\ = CARRY((\B[26]~input_o\ & (\A[26]~input_o\ & !\slt_inst|LessThan0~51_cout\)) # (!\B[26]~input_o\ & ((\A[26]~input_o\) # (!\slt_inst|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~51_cout\,
	cout => \slt_inst|LessThan0~53_cout\);

-- Location: LCCOMB_X30_Y35_N22
\slt_inst|LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~55_cout\ = CARRY((\A[27]~input_o\ & (\B[27]~input_o\ & !\slt_inst|LessThan0~53_cout\)) # (!\A[27]~input_o\ & ((\B[27]~input_o\) # (!\slt_inst|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~53_cout\,
	cout => \slt_inst|LessThan0~55_cout\);

-- Location: LCCOMB_X30_Y35_N24
\slt_inst|LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~57_cout\ = CARRY((\B[28]~input_o\ & (\A[28]~input_o\ & !\slt_inst|LessThan0~55_cout\)) # (!\B[28]~input_o\ & ((\A[28]~input_o\) # (!\slt_inst|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~55_cout\,
	cout => \slt_inst|LessThan0~57_cout\);

-- Location: LCCOMB_X30_Y35_N26
\slt_inst|LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~59_cout\ = CARRY((\B[29]~input_o\ & ((!\slt_inst|LessThan0~57_cout\) # (!\A[29]~input_o\))) # (!\B[29]~input_o\ & (!\A[29]~input_o\ & !\slt_inst|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~57_cout\,
	cout => \slt_inst|LessThan0~59_cout\);

-- Location: LCCOMB_X30_Y35_N28
\slt_inst|LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~61_cout\ = CARRY((\A[30]~input_o\ & ((!\slt_inst|LessThan0~59_cout\) # (!\B[30]~input_o\))) # (!\A[30]~input_o\ & (!\B[30]~input_o\ & !\slt_inst|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \slt_inst|LessThan0~59_cout\,
	cout => \slt_inst|LessThan0~61_cout\);

-- Location: LCCOMB_X30_Y35_N30
\slt_inst|LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slt_inst|LessThan0~62_combout\ = (\A[31]~input_o\ & ((\slt_inst|LessThan0~61_cout\) # (!\B[31]~input_o\))) # (!\A[31]~input_o\ & (\slt_inst|LessThan0~61_cout\ & !\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \slt_inst|LessThan0~61_cout\,
	combout => \slt_inst|LessThan0~62_combout\);

-- Location: LCCOMB_X31_Y38_N26
\Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ $ (!\A[24]~input_o\)))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[24]~input_o\ $ (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X32_Y38_N26
\adder_inst|somadores:30:soma|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:30:soma|s~0_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \adder_inst|somadores:30:soma|s~0_combout\);

-- Location: LCCOMB_X32_Y38_N16
\adder_inst|somadores:29:soma|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:29:soma|s~0_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \adder_inst|somadores:29:soma|s~0_combout\);

-- Location: LCCOMB_X34_Y38_N26
\adder_inst|somadores:28:soma|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:28:soma|s~0_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	combout => \adder_inst|somadores:28:soma|s~0_combout\);

-- Location: LCCOMB_X31_Y38_N18
\adder_inst|somadores:31:soma|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:31:soma|s~0_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \adder_inst|somadores:31:soma|s~0_combout\);

-- Location: LCCOMB_X32_Y38_N20
\Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (!\adder_inst|somadores:30:soma|s~0_combout\ & (!\adder_inst|somadores:29:soma|s~0_combout\ & (!\adder_inst|somadores:28:soma|s~0_combout\ & !\adder_inst|somadores:31:soma|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:30:soma|s~0_combout\,
	datab => \adder_inst|somadores:29:soma|s~0_combout\,
	datac => \adder_inst|somadores:28:soma|s~0_combout\,
	datad => \adder_inst|somadores:31:soma|s~0_combout\,
	combout => \Mux0~17_combout\);

-- Location: LCCOMB_X32_Y35_N18
\Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\A[17]~input_o\ & (\B[17]~input_o\ & (\A[16]~input_o\ $ (!\B[16]~input_o\)))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & (\A[16]~input_o\ $ (!\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X29_Y35_N24
\Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\B[20]~input_o\ & (\A[20]~input_o\ & (\A[21]~input_o\ $ (!\B[21]~input_o\)))) # (!\B[20]~input_o\ & (!\A[20]~input_o\ & (\A[21]~input_o\ $ (!\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X31_Y35_N24
\Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\B[22]~input_o\ & (\A[22]~input_o\ & (\A[23]~input_o\ $ (!\B[23]~input_o\)))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & (\A[23]~input_o\ $ (!\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X34_Y35_N0
\Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\A[18]~input_o\ & (\B[18]~input_o\ & (\B[19]~input_o\ $ (!\A[19]~input_o\)))) # (!\A[18]~input_o\ & (!\B[18]~input_o\ & (\B[19]~input_o\ $ (!\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X29_Y35_N18
\Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\Mux0~10_combout\ & (\Mux0~12_combout\ & (\Mux0~13_combout\ & \Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Mux0~12_combout\,
	datac => \Mux0~13_combout\,
	datad => \Mux0~11_combout\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X34_Y38_N8
\Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (\A[26]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ $ (!\B[27]~input_o\)))) # (!\A[26]~input_o\ & (!\B[26]~input_o\ & (\A[27]~input_o\ $ (!\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X32_Y38_N22
\Mux0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (\Mux0~15_combout\ & (\Mux0~17_combout\ & (\Mux0~14_combout\ & \Mux0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~15_combout\,
	datab => \Mux0~17_combout\,
	datac => \Mux0~14_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~18_combout\);

-- Location: LCCOMB_X29_Y38_N26
\Mux0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = ((\Mux0~4_combout\ & (\Mux0~9_combout\ & \Mux0~18_combout\))) # (!\slt_inst|LessThan0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \Mux0~9_combout\,
	datac => \slt_inst|LessThan0~62_combout\,
	datad => \Mux0~18_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X29_Y38_N8
\Mux0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = (\A[0]~input_o\ & ((\ALUControl[1]~input_o\ & ((\B[0]~input_o\) # (\ALUControl[0]~input_o\))) # (!\ALUControl[1]~input_o\ & (!\B[0]~input_o\)))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux0~20_combout\);

-- Location: LCCOMB_X29_Y38_N2
\Mux0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = (\Mux34~0_combout\ & ((\Mux0~19_combout\) # ((!\ALUControl[2]~input_o\ & \Mux0~20_combout\)))) # (!\Mux34~0_combout\ & (!\ALUControl[2]~input_o\ & ((\Mux0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux0~19_combout\,
	datad => \Mux0~20_combout\,
	combout => \Mux0~21_combout\);

-- Location: LCCOMB_X29_Y38_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ALUControl[1]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\) # (\ALUControl[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y38_N16
\adder_inst|somadores:1:soma|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:1:soma|s~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \adder_inst|somadores:1:soma|s~combout\);

-- Location: LCCOMB_X29_Y38_N14
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\ALUControl[2]~input_o\ & ((\Mux3~0_combout\) # ((!\ALUControl[1]~input_o\ & \adder_inst|somadores:1:soma|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \adder_inst|somadores:1:soma|s~combout\,
	combout => \Mux3~1_combout\);

-- Location: CLKCTRL_G4
\Mux34~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux34~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux34~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y38_N10
\Result[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[1]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[1]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datac => \Result[1]$latch~combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[1]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N26
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[2]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y36_N4
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux4~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:1:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \adder_inst|somadores:1:soma|vs~0_combout\,
	datac => \Mux4~0_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X29_Y36_N18
\Result[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[2]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[2]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[2]$latch~combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[2]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N14
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\B[2]~input_o\ & ((\adder_inst|somadores:1:soma|vs~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\adder_inst|somadores:1:soma|vs~0_combout\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \adder_inst|somadores:1:soma|vs~0_combout\,
	datac => \A[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y36_N24
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\B[3]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X29_Y36_N2
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux5~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X29_Y36_N12
\Result[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[3]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[3]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[3]$latch~combout\,
	datac => \Mux5~2_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[3]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N28
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\B[4]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X29_Y36_N0
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\ALUControl[1]~input_o\ & ((\adder_inst|somadores:3:soma|vs~2_combout\) # ((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \adder_inst|somadores:3:soma|vs~2_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X29_Y36_N6
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\ALUControl[2]~input_o\ & (\Mux6~2_combout\ $ (\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[2]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X29_Y36_N30
\Result[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[4]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[4]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[4]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux6~3_combout\,
	combout => \Result[4]$latch~combout\);

-- Location: LCCOMB_X31_Y36_N10
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[5]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X31_Y36_N12
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux7~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:4:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \adder_inst|somadores:4:soma|vs~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X31_Y36_N2
\Result[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[5]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[5]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[5]$latch~combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[5]$latch~combout\);

-- Location: LCCOMB_X31_Y36_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A[5]~input_o\ & ((\adder_inst|somadores:4:soma|vs~0_combout\) # (\B[5]~input_o\))) # (!\A[5]~input_o\ & (\adder_inst|somadores:4:soma|vs~0_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \adder_inst|somadores:4:soma|vs~0_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X31_Y36_N0
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\ & (\ALUControl[1]~input_o\)) # (!\B[6]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X31_Y36_N18
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux8~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux8~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X31_Y36_N28
\Result[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[6]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[6]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~2_combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Result[6]$latch~combout\,
	combout => \Result[6]$latch~combout\);

-- Location: LCCOMB_X31_Y36_N4
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\A[7]~input_o\ & ((\ALUControl[1]~input_o\ & ((\B[7]~input_o\) # (\ALUControl[0]~input_o\))) # (!\ALUControl[1]~input_o\ & (!\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X31_Y36_N16
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\ALUControl[1]~input_o\ & ((\adder_inst|somadores:6:soma|vs~2_combout\) # ((\B[6]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \adder_inst|somadores:6:soma|vs~2_combout\,
	datad => \A[6]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X31_Y36_N6
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\ALUControl[2]~input_o\ & (\Mux9~2_combout\ $ (\Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~4_combout\,
	datac => \ALUControl[2]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X31_Y36_N30
\Result[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[7]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[7]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[7]$latch~combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[7]$latch~combout\);

-- Location: LCCOMB_X30_Y37_N8
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\ALUControl[1]~input_o\ & ((\A[8]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[8]~input_o\))) # (!\A[8]~input_o\ & (\ALUControl[0]~input_o\ & \B[8]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[8]~input_o\ $ (((\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X30_Y37_N2
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux10~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:7:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \adder_inst|somadores:7:soma|vs~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X30_Y37_N6
\Result[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[8]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[8]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[8]$latch~combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[8]$latch~combout\);

-- Location: LCCOMB_X30_Y37_N20
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\B[9]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[9]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\A[9]~input_o\))))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X30_Y37_N30
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux11~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:8:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux11~0_combout\,
	datad => \adder_inst|somadores:8:soma|vs~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X30_Y37_N16
\Result[9]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[9]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[9]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[9]$latch~combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[9]$latch~combout\);

-- Location: LCCOMB_X30_Y37_N10
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\B[10]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[10]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\A[10]~input_o\))))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X30_Y37_N24
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # (\adder_inst|somadores:8:soma|vs~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \adder_inst|somadores:8:soma|vs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => \adder_inst|somadores:8:soma|vs~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X30_Y37_N4
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux12~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X30_Y37_N18
\Result[10]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[10]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[10]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[10]$latch~combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[10]$latch~combout\);

-- Location: LCCOMB_X31_Y37_N10
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (!\ALUControl[1]~input_o\ & ((\adder_inst|somadores:10:soma|vs~2_combout\) # ((\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \adder_inst|somadores:10:soma|vs~2_combout\,
	datac => \A[10]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X31_Y37_N30
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[11]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X31_Y37_N0
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\ALUControl[2]~input_o\ & (\Mux13~4_combout\ $ (\Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X31_Y37_N12
\Result[11]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[11]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[11]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~3_combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Result[11]$latch~combout\,
	combout => \Result[11]$latch~combout\);

-- Location: LCCOMB_X32_Y37_N2
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\B[12]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[12]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\A[12]~input_o\))))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X32_Y37_N28
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux14~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:11:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \adder_inst|somadores:11:soma|vs~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X32_Y37_N18
\Result[12]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[12]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[12]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[12]$latch~combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[12]$latch~combout\);

-- Location: LCCOMB_X32_Y37_N14
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # (\adder_inst|somadores:11:soma|vs~0_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \adder_inst|somadores:11:soma|vs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \adder_inst|somadores:11:soma|vs~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X32_Y37_N16
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\A[13]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[13]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\B[13]~input_o\))))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X32_Y37_N10
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux15~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X32_Y37_N12
\Result[13]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[13]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[13]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[13]$latch~combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[13]$latch~combout\);

-- Location: LCCOMB_X32_Y37_N24
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\ALUControl[1]~input_o\ & ((\adder_inst|somadores:13:soma|vs~2_combout\) # ((\B[13]~input_o\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:13:soma|vs~2_combout\,
	datab => \B[13]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X32_Y37_N4
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[14]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[14]~input_o\))) # (!\B[14]~input_o\ & (\ALUControl[0]~input_o\ & \A[14]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[14]~input_o\ $ 
-- (((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[14]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X32_Y37_N30
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\ALUControl[2]~input_o\ & (\Mux16~4_combout\ $ (\Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~4_combout\,
	datac => \Mux16~2_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X32_Y37_N6
\Result[14]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[14]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[14]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[14]$latch~combout\,
	datac => \Mux16~3_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[14]$latch~combout\);

-- Location: LCCOMB_X32_Y35_N4
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\ALUControl[1]~input_o\ & ((\A[15]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[15]~input_o\))) # (!\A[15]~input_o\ & (\ALUControl[0]~input_o\ & \B[15]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[15]~input_o\ $ 
-- (((\B[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X32_Y35_N14
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux17~0_combout\ $ (((\adder_inst|somadores:14:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datab => \adder_inst|somadores:14:soma|vs~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X32_Y35_N16
\Result[15]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[15]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[15]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[15]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux17~1_combout\,
	combout => \Result[15]$latch~combout\);

-- Location: LCCOMB_X32_Y35_N0
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\ALUControl[1]~input_o\ & ((\A[16]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[16]~input_o\))) # (!\A[16]~input_o\ & (\ALUControl[0]~input_o\ & \B[16]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[16]~input_o\ $ 
-- (((\B[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[16]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X32_Y35_N26
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux18~0_combout\ $ (((\adder_inst|somadores:15:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:15:soma|vs~0_combout\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux18~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X32_Y35_N2
\Result[16]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[16]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[16]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[16]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux18~1_combout\,
	combout => \Result[16]$latch~combout\);

-- Location: LCCOMB_X32_Y35_N12
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\B[17]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux19~0_combout\ $ (((\adder_inst|somadores:16:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datab => \adder_inst|somadores:16:soma|vs~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X32_Y35_N28
\Result[17]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[17]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[17]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[17]$latch~combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[17]$latch~combout\);

-- Location: LCCOMB_X34_Y35_N2
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[18]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X34_Y35_N4
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux20~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:17:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \adder_inst|somadores:17:soma|vs~0_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X34_Y35_N10
\Result[18]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[18]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[18]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Result[18]$latch~combout\,
	combout => \Result[18]$latch~combout\);

-- Location: LCCOMB_X34_Y35_N16
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) # (!\ALUControl[0]~input_o\ & (\B[19]~input_o\ & \A[19]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X34_Y35_N14
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\A[18]~input_o\ & ((\adder_inst|somadores:17:soma|vs~0_combout\) # (\B[18]~input_o\))) # (!\A[18]~input_o\ & (\adder_inst|somadores:17:soma|vs~0_combout\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \adder_inst|somadores:17:soma|vs~0_combout\,
	datad => \B[18]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X34_Y35_N18
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux21~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux21~1_combout\,
	datac => \Mux21~0_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X34_Y35_N20
\Result[19]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[19]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[19]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~2_combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Result[19]$latch~combout\,
	combout => \Result[19]$latch~combout\);

-- Location: LCCOMB_X34_Y35_N28
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\B[20]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X34_Y35_N24
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\ALUControl[1]~input_o\ & ((\adder_inst|somadores:19:soma|vs~2_combout\) # ((\B[19]~input_o\ & \A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \adder_inst|somadores:19:soma|vs~2_combout\,
	datad => \A[19]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X34_Y35_N30
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (!\ALUControl[2]~input_o\ & (\Mux22~2_combout\ $ (\Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datac => \Mux22~4_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X34_Y35_N6
\Result[20]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[20]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[20]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[20]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux22~3_combout\,
	combout => \Result[20]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N28
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[21]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X31_Y35_N6
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux23~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:20:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \adder_inst|somadores:20:soma|vs~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X31_Y35_N26
\Result[21]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[21]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[21]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[21]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux23~1_combout\,
	combout => \Result[21]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N8
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[22]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X31_Y35_N2
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux24~0_combout\ $ (((!\ALUControl[1]~input_o\ & \adder_inst|somadores:21:soma|vs~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \adder_inst|somadores:21:soma|vs~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X31_Y35_N12
\Result[22]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[22]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[22]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[22]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux24~1_combout\,
	combout => \Result[22]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N4
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\B[22]~input_o\ & ((\adder_inst|somadores:21:soma|vs~0_combout\) # (\A[22]~input_o\))) # (!\B[22]~input_o\ & (\adder_inst|somadores:21:soma|vs~0_combout\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \adder_inst|somadores:21:soma|vs~0_combout\,
	datac => \A[22]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X31_Y35_N14
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\A[23]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X31_Y35_N0
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (!\ALUControl[2]~input_o\ & (\Mux25~1_combout\ $ (((!\ALUControl[1]~input_o\ & \Mux25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux25~0_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X31_Y35_N30
\Result[23]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[23]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[23]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[23]$latch~combout\,
	datac => \Mux34~0clkctrl_outclk\,
	datad => \Mux25~2_combout\,
	combout => \Result[23]$latch~combout\);

-- Location: LCCOMB_X31_Y38_N4
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) # (!\ALUControl[0]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X31_Y38_N2
\adder_inst|somadores:24:soma|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|somadores:24:soma|s~combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\adder_inst|somadores:23:soma|vs~2_combout\) # (\adder_inst|somadores:23:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \adder_inst|somadores:23:soma|vs~2_combout\,
	datac => \B[24]~input_o\,
	datad => \adder_inst|somadores:23:soma|vs~0_combout\,
	combout => \adder_inst|somadores:24:soma|s~combout\);

-- Location: LCCOMB_X31_Y38_N0
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (!\ALUControl[2]~input_o\ & ((\Mux26~0_combout\) # ((!\ALUControl[1]~input_o\ & \adder_inst|somadores:24:soma|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux26~0_combout\,
	datad => \adder_inst|somadores:24:soma|s~combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X31_Y38_N24
\Result[24]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[24]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[24]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[24]$latch~combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[24]$latch~combout\);

-- Location: LCCOMB_X31_Y38_N8
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\ALUControl[1]~input_o\ & ((\A[25]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[25]~input_o\))) # (!\A[25]~input_o\ & (\ALUControl[0]~input_o\ & \B[25]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[25]~input_o\ $ 
-- (((\B[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[25]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X31_Y38_N10
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux27~0_combout\ $ (((\adder_inst|somadores:24:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:24:soma|vs~0_combout\,
	datab => \ALUControl[2]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X31_Y38_N20
\Result[25]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[25]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[25]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[25]$latch~combout\,
	datac => \Mux27~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[25]$latch~combout\);

-- Location: LCCOMB_X34_Y38_N28
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\A[26]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[26]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\B[26]~input_o\))))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X34_Y38_N30
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux28~0_combout\ $ (((\adder_inst|somadores:25:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:25:soma|vs~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \Mux28~0_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X34_Y38_N18
\Result[26]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[26]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Result[26]$latch~combout\))) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & (\Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Result[26]$latch~combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[26]$latch~combout\);

-- Location: LCCOMB_X34_Y38_N24
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\A[27]~input_o\ & ((\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\B[27]~input_o\))) # (!\ALUControl[1]~input_o\ & ((!\B[27]~input_o\))))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X34_Y38_N10
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (!\ALUControl[2]~input_o\ & (\Mux29~0_combout\ $ (((\adder_inst|somadores:28:soma|vs~0_combout\ & !\ALUControl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:28:soma|vs~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \Mux29~0_combout\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X34_Y38_N12
\Result[27]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[27]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[27]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[27]$latch~combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[27]$latch~combout\);

-- Location: LCCOMB_X31_Y38_N14
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ALUControl[2]~input_o\ & \ALUControl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[2]~input_o\,
	datac => \ALUControl[1]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X34_Y38_N4
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux2~1_combout\ & ((\B[28]~input_o\ & ((\A[28]~input_o\) # (\ALUControl[0]~input_o\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & \ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X34_Y38_N14
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\ALUControl[1]~input_o\ & !\ALUControl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[1]~input_o\,
	datad => \ALUControl[2]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X34_Y38_N0
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux30~0_combout\) # ((\Mux30~1_combout\ & (\adder_inst|somadores:28:soma|s~0_combout\ $ (\adder_inst|somadores:28:soma|vs~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:28:soma|s~0_combout\,
	datab => \adder_inst|somadores:28:soma|vs~1_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X34_Y38_N6
\Result[28]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[28]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[28]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[28]$latch~combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[28]$latch~combout\);

-- Location: LCCOMB_X32_Y38_N0
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux2~1_combout\ & ((\B[29]~input_o\ & ((\A[29]~input_o\) # (\ALUControl[0]~input_o\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & \ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X32_Y38_N10
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\) # ((\Mux30~1_combout\ & (\adder_inst|somadores:28:soma|vs~2_combout\ $ (\adder_inst|somadores:29:soma|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:28:soma|vs~2_combout\,
	datab => \adder_inst|somadores:29:soma|s~0_combout\,
	datac => \Mux31~0_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X32_Y38_N18
\Result[29]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[29]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[29]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[29]$latch~combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[29]$latch~combout\);

-- Location: LCCOMB_X32_Y38_N4
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux2~1_combout\ & ((\B[30]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[30]~input_o\))) # (!\B[30]~input_o\ & (\ALUControl[0]~input_o\ & \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \B[30]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X32_Y38_N14
\Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\) # ((\Mux30~1_combout\ & (\adder_inst|somadores:30:soma|s~0_combout\ $ (\adder_inst|somadores:29:soma|vs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:30:soma|s~0_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux32~0_combout\,
	datad => \adder_inst|somadores:29:soma|vs~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X32_Y38_N28
\Result[30]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[30]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[30]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[30]$latch~combout\,
	datac => \Mux32~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[30]$latch~combout\);

-- Location: LCCOMB_X31_Y38_N30
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux2~1_combout\ & ((\B[31]~input_o\ & ((\ALUControl[0]~input_o\) # (\A[31]~input_o\))) # (!\B[31]~input_o\ & (\ALUControl[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Mux2~1_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X32_Y38_N24
\Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\) # ((\Mux30~1_combout\ & (\adder_inst|somadores:30:soma|vs~0_combout\ $ (\adder_inst|somadores:31:soma|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|somadores:30:soma|vs~0_combout\,
	datab => \adder_inst|somadores:31:soma|s~0_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X32_Y38_N30
\Result[31]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[31]$latch~combout\ = (GLOBAL(\Mux34~0clkctrl_outclk\) & (\Result[31]$latch~combout\)) # (!GLOBAL(\Mux34~0clkctrl_outclk\) & ((\Mux33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[31]$latch~combout\,
	datac => \Mux33~1_combout\,
	datad => \Mux34~0clkctrl_outclk\,
	combout => \Result[31]$latch~combout\);

-- Location: LCCOMB_X29_Y38_N12
\zr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~2_combout\ = (\Result[10]$latch~combout\ & (\Result[12]$latch~combout\ & (\Result[11]$latch~combout\ & \Result[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[10]$latch~combout\,
	datab => \Result[12]$latch~combout\,
	datac => \Result[11]$latch~combout\,
	datad => \Result[9]$latch~combout\,
	combout => \zr~2_combout\);

-- Location: LCCOMB_X29_Y38_N24
\zr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~0_combout\ = (\Result[1]$latch~combout\ & (\Result[3]$latch~combout\ & (\Result[2]$latch~combout\ & \Result[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[1]$latch~combout\,
	datab => \Result[3]$latch~combout\,
	datac => \Result[2]$latch~combout\,
	datad => \Result[4]$latch~combout\,
	combout => \zr~0_combout\);

-- Location: LCCOMB_X29_Y38_N4
\zr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~1_combout\ = (\Result[5]$latch~combout\ & (\Result[8]$latch~combout\ & (\Result[7]$latch~combout\ & \Result[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[5]$latch~combout\,
	datab => \Result[8]$latch~combout\,
	datac => \Result[7]$latch~combout\,
	datad => \Result[6]$latch~combout\,
	combout => \zr~1_combout\);

-- Location: LCCOMB_X32_Y35_N20
\zr~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~3_combout\ = (\Result[15]$latch~combout\ & (\Result[16]$latch~combout\ & (\Result[14]$latch~combout\ & \Result[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[15]$latch~combout\,
	datab => \Result[16]$latch~combout\,
	datac => \Result[14]$latch~combout\,
	datad => \Result[13]$latch~combout\,
	combout => \zr~3_combout\);

-- Location: LCCOMB_X29_Y38_N30
\zr~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~4_combout\ = (\zr~2_combout\ & (\zr~0_combout\ & (\zr~1_combout\ & \zr~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zr~2_combout\,
	datab => \zr~0_combout\,
	datac => \zr~1_combout\,
	datad => \zr~3_combout\,
	combout => \zr~4_combout\);

-- Location: LCCOMB_X34_Y38_N20
\zr~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~8_combout\ = (\Result[28]$latch~combout\ & (\Result[27]$latch~combout\ & (\Result[25]$latch~combout\ & \Result[26]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[28]$latch~combout\,
	datab => \Result[27]$latch~combout\,
	datac => \Result[25]$latch~combout\,
	datad => \Result[26]$latch~combout\,
	combout => \zr~8_combout\);

-- Location: LCCOMB_X32_Y38_N8
\zr~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~9_combout\ = (\zr~8_combout\ & (\Result[29]$latch~combout\ & (\Result[31]$latch~combout\ & \Result[30]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zr~8_combout\,
	datab => \Result[29]$latch~combout\,
	datac => \Result[31]$latch~combout\,
	datad => \Result[30]$latch~combout\,
	combout => \zr~9_combout\);

-- Location: LCCOMB_X31_Y35_N18
\zr~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~6_combout\ = (\Result[24]$latch~combout\ & (\Result[21]$latch~combout\ & (\Result[23]$latch~combout\ & \Result[22]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[24]$latch~combout\,
	datab => \Result[21]$latch~combout\,
	datac => \Result[23]$latch~combout\,
	datad => \Result[22]$latch~combout\,
	combout => \zr~6_combout\);

-- Location: LCCOMB_X35_Y36_N24
\zr~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~5_combout\ = (\Result[20]$latch~combout\ & (\Result[17]$latch~combout\ & (\Result[18]$latch~combout\ & \Result[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[20]$latch~combout\,
	datab => \Result[17]$latch~combout\,
	datac => \Result[18]$latch~combout\,
	datad => \Result[19]$latch~combout\,
	combout => \zr~5_combout\);

-- Location: LCCOMB_X35_Y36_N2
\zr~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~7_combout\ = (\zr~6_combout\ & \zr~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zr~6_combout\,
	datad => \zr~5_combout\,
	combout => \zr~7_combout\);

-- Location: LCCOMB_X32_Y38_N2
\zr~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zr~10_combout\ = (\Mux0~21_combout\ & (\zr~4_combout\ & (\zr~9_combout\ & \zr~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~21_combout\,
	datab => \zr~4_combout\,
	datac => \zr~9_combout\,
	datad => \zr~7_combout\,
	combout => \zr~10_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_C <= \C~output_o\;

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_Result(16) <= \Result[16]~output_o\;

ww_Result(17) <= \Result[17]~output_o\;

ww_Result(18) <= \Result[18]~output_o\;

ww_Result(19) <= \Result[19]~output_o\;

ww_Result(20) <= \Result[20]~output_o\;

ww_Result(21) <= \Result[21]~output_o\;

ww_Result(22) <= \Result[22]~output_o\;

ww_Result(23) <= \Result[23]~output_o\;

ww_Result(24) <= \Result[24]~output_o\;

ww_Result(25) <= \Result[25]~output_o\;

ww_Result(26) <= \Result[26]~output_o\;

ww_Result(27) <= \Result[27]~output_o\;

ww_Result(28) <= \Result[28]~output_o\;

ww_Result(29) <= \Result[29]~output_o\;

ww_Result(30) <= \Result[30]~output_o\;

ww_Result(31) <= \Result[31]~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


