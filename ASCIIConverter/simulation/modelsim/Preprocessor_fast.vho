-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/11/2019 17:11:15"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Preprocessor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ready : IN std_logic;
	messsageLenVecotr : OUT std_logic_vector(0 TO 63)
	);
END Preprocessor;

-- Design Ports Information
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- messsageLenVecotr[63]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[62]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[61]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[60]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[59]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[58]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[57]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[56]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[55]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[54]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[53]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[52]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[51]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[50]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[49]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[48]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[47]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[46]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[45]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[44]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[43]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[42]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[41]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[40]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[39]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[38]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[37]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[36]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[35]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[34]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[33]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[32]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[31]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[30]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[29]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[28]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[27]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[26]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[25]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[24]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[23]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[22]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[21]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[20]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[19]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[18]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[17]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[16]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[15]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[14]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[13]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[12]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[11]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[10]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[9]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[8]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[7]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[6]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[2]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- messsageLenVecotr[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ready	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Preprocessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_messsageLenVecotr : std_logic_vector(0 TO 63);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \len[0]~feeder_combout\ : std_logic;
SIGNAL \ready~combout\ : std_logic;
SIGNAL \messageLength[63]~0_combout\ : std_logic;
SIGNAL \messsageLenVecotr[63]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[62]~0_combout\ : std_logic;
SIGNAL \messsageLenVecotr[62]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[32]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[31]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[31]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[30]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[29]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[28]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[28]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[27]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[26]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[26]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[25]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[25]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[24]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[24]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[23]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[23]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[22]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[22]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[21]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[20]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[20]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[19]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[18]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[18]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[17]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[17]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[16]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[15]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[15]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[14]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[14]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[13]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[13]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[12]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[12]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[11]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[11]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[10]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[10]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[9]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[8]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[8]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[7]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[6]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[6]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[5]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[4]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[4]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[3]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[3]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[2]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[1]~reg0_regout\ : std_logic;
SIGNAL \messsageLenVecotr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \messsageLenVecotr[0]~reg0_regout\ : std_logic;
SIGNAL len : std_logic_vector(31 DOWNTO 0);
SIGNAL messageLength : std_logic_vector(0 TO 63);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ready <= ready;
messsageLenVecotr <= ww_messsageLenVecotr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y35_N22
\len[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \len[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \len[0]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ready,
	combout => \ready~combout\);

-- Location: LCFF_X11_Y35_N23
\len[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \len[0]~feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => len(0));

-- Location: LCCOMB_X11_Y35_N24
\messageLength[63]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \messageLength[63]~0_combout\ = !len(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => len(0),
	combout => \messageLength[63]~0_combout\);

-- Location: LCFF_X11_Y35_N25
\messageLength[63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messageLength[63]~0_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => messageLength(63));

-- Location: LCFF_X11_Y35_N17
\messsageLenVecotr[63]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[63]~reg0_regout\);

-- Location: LCCOMB_X11_Y35_N18
\messsageLenVecotr[62]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[62]~0_combout\ = !messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => messageLength(63),
	combout => \messsageLenVecotr[62]~0_combout\);

-- Location: LCFF_X11_Y35_N19
\messsageLenVecotr[62]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[62]~0_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[62]~reg0_regout\);

-- Location: LCFF_X11_Y35_N13
\messsageLenVecotr[32]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[32]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N12
\messsageLenVecotr[31]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[31]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[31]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N13
\messsageLenVecotr[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[31]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[31]~reg0_regout\);

-- Location: LCFF_X11_Y35_N11
\messsageLenVecotr[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[30]~reg0_regout\);

-- Location: LCFF_X11_Y35_N5
\messsageLenVecotr[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[29]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N12
\messsageLenVecotr[28]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[28]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[28]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N13
\messsageLenVecotr[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[28]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[28]~reg0_regout\);

-- Location: LCFF_X11_Y35_N7
\messsageLenVecotr[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[27]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N6
\messsageLenVecotr[26]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[26]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[26]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N7
\messsageLenVecotr[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[26]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[26]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N10
\messsageLenVecotr[25]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[25]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[25]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N11
\messsageLenVecotr[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[25]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[25]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N24
\messsageLenVecotr[24]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[24]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[24]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N25
\messsageLenVecotr[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[24]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[24]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N4
\messsageLenVecotr[23]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[23]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[23]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N5
\messsageLenVecotr[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[23]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[23]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N18
\messsageLenVecotr[22]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[22]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[22]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N19
\messsageLenVecotr[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[22]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[22]~reg0_regout\);

-- Location: LCFF_X11_Y35_N29
\messsageLenVecotr[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[21]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N18
\messsageLenVecotr[20]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[20]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[20]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N19
\messsageLenVecotr[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[20]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[20]~reg0_regout\);

-- Location: LCFF_X11_Y35_N15
\messsageLenVecotr[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[19]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N16
\messsageLenVecotr[18]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[18]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[18]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N17
\messsageLenVecotr[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[18]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[18]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N26
\messsageLenVecotr[17]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[17]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[17]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N27
\messsageLenVecotr[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[17]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[17]~reg0_regout\);

-- Location: LCFF_X11_Y35_N21
\messsageLenVecotr[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[16]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N16
\messsageLenVecotr[15]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[15]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[15]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N17
\messsageLenVecotr[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[15]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[15]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N26
\messsageLenVecotr[14]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[14]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[14]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N27
\messsageLenVecotr[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[14]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[14]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N0
\messsageLenVecotr[13]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[13]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[13]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N1
\messsageLenVecotr[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[13]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[13]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N24
\messsageLenVecotr[12]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[12]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[12]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N25
\messsageLenVecotr[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[12]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[12]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N22
\messsageLenVecotr[11]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[11]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[11]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N23
\messsageLenVecotr[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[11]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[11]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N22
\messsageLenVecotr[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[10]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[10]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N23
\messsageLenVecotr[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[10]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[10]~reg0_regout\);

-- Location: LCFF_X11_Y35_N27
\messsageLenVecotr[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[9]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N4
\messsageLenVecotr[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[8]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[8]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N5
\messsageLenVecotr[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[8]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[8]~reg0_regout\);

-- Location: LCFF_X11_Y35_N9
\messsageLenVecotr[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[7]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N8
\messsageLenVecotr[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[6]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[6]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N9
\messsageLenVecotr[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[6]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[6]~reg0_regout\);

-- Location: LCFF_X11_Y35_N31
\messsageLenVecotr[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[5]~reg0_regout\);

-- Location: LCCOMB_X12_Y35_N2
\messsageLenVecotr[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[4]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[4]~reg0feeder_combout\);

-- Location: LCFF_X12_Y35_N3
\messsageLenVecotr[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[4]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[4]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N6
\messsageLenVecotr[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[3]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[3]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N7
\messsageLenVecotr[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[3]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[3]~reg0_regout\);

-- Location: LCFF_X11_Y35_N1
\messsageLenVecotr[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[2]~reg0_regout\);

-- Location: LCFF_X11_Y35_N3
\messsageLenVecotr[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => messageLength(63),
	sload => VCC,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[1]~reg0_regout\);

-- Location: LCCOMB_X10_Y35_N20
\messsageLenVecotr[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \messsageLenVecotr[0]~reg0feeder_combout\ = messageLength(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => messageLength(63),
	combout => \messsageLenVecotr[0]~reg0feeder_combout\);

-- Location: LCFF_X10_Y35_N21
\messsageLenVecotr[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \messsageLenVecotr[0]~reg0feeder_combout\,
	ena => \ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \messsageLenVecotr[0]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[63]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(63));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[62]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(62));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(61));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(60));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(59));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(58));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(57));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(56));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(55));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(54));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(53));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(52));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(51));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(50));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(49));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(48));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(47));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(46));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(45));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(44));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(43));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(42));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(41));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(40));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(39));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(38));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(37));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(36));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(35));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(34));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(33));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[32]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(32));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[31]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(31));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[30]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(30));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[29]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(29));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[28]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(28));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[27]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(27));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[26]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(26));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[25]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(25));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[24]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(24));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[23]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(23));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[22]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(22));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[21]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(21));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[20]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(20));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[19]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(19));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[18]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(18));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[17]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(17));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[16]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(16));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(15));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(14));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(13));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(12));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(11));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(10));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(9));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(8));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(7));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(6));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(3));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(1));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\messsageLenVecotr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \messsageLenVecotr[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_messsageLenVecotr(0));
END structure;


