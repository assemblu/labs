-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/20/2021 07:26:32"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fulladder IS
    PORT (
	a1 : IN std_logic;
	a2 : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	c1 : IN std_logic;
	o_sum1 : BUFFER std_logic;
	o_sum2 : BUFFER std_logic;
	o_carr : BUFFER std_logic
	);
END fulladder;

-- Design Ports Information
-- o_sum1	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sum2	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_carr	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_o_sum1 : std_logic;
SIGNAL ww_o_sum2 : std_logic;
SIGNAL ww_o_carr : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \WIRE_4~0_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \WIRE_9~0_combout\ : std_logic;
SIGNAL \WIRE_10~0_combout\ : std_logic;
SIGNAL \ALT_INV_b2~input_o\ : std_logic;
SIGNAL \ALT_INV_a2~input_o\ : std_logic;
SIGNAL \ALT_INV_c1~input_o\ : std_logic;
SIGNAL \ALT_INV_b1~input_o\ : std_logic;
SIGNAL \ALT_INV_a1~input_o\ : std_logic;

BEGIN

ww_a1 <= a1;
ww_a2 <= a2;
ww_b1 <= b1;
ww_b2 <= b2;
ww_c1 <= c1;
o_sum1 <= ww_o_sum1;
o_sum2 <= ww_o_sum2;
o_carr <= ww_o_carr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b2~input_o\ <= NOT \b2~input_o\;
\ALT_INV_a2~input_o\ <= NOT \a2~input_o\;
\ALT_INV_c1~input_o\ <= NOT \c1~input_o\;
\ALT_INV_b1~input_o\ <= NOT \b1~input_o\;
\ALT_INV_a1~input_o\ <= NOT \a1~input_o\;

-- Location: IOOBUF_X89_Y25_N5
\o_sum1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_4~0_combout\,
	devoe => ww_devoe,
	o => ww_o_sum1);

-- Location: IOOBUF_X89_Y21_N5
\o_sum2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_9~0_combout\,
	devoe => ww_devoe,
	o => ww_o_sum2);

-- Location: IOOBUF_X89_Y25_N22
\o_carr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_10~0_combout\,
	devoe => ww_devoe,
	o => ww_o_carr);

-- Location: IOIBUF_X89_Y23_N38
\b1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\c1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\a1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LABCELL_X88_Y23_N0
\WIRE_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_4~0_combout\ = ( \a1~input_o\ & ( !\b1~input_o\ $ (\c1~input_o\) ) ) # ( !\a1~input_o\ & ( !\b1~input_o\ $ (!\c1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b1~input_o\,
	datac => \ALT_INV_c1~input_o\,
	datae => \ALT_INV_a1~input_o\,
	combout => \WIRE_4~0_combout\);

-- Location: IOIBUF_X89_Y23_N21
\b2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\a2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LABCELL_X88_Y23_N9
\WIRE_9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_9~0_combout\ = ( \a1~input_o\ & ( \a2~input_o\ & ( !\b2~input_o\ $ (((\b1~input_o\) # (\c1~input_o\))) ) ) ) # ( !\a1~input_o\ & ( \a2~input_o\ & ( !\b2~input_o\ $ (((\c1~input_o\ & \b1~input_o\))) ) ) ) # ( \a1~input_o\ & ( !\a2~input_o\ & ( 
-- !\b2~input_o\ $ (((!\c1~input_o\ & !\b1~input_o\))) ) ) ) # ( !\a1~input_o\ & ( !\a2~input_o\ & ( !\b2~input_o\ $ (((!\c1~input_o\) # (!\b1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010010111111010000011111010000001011010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c1~input_o\,
	datac => \ALT_INV_b1~input_o\,
	datad => \ALT_INV_b2~input_o\,
	datae => \ALT_INV_a1~input_o\,
	dataf => \ALT_INV_a2~input_o\,
	combout => \WIRE_9~0_combout\);

-- Location: LABCELL_X88_Y23_N12
\WIRE_10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_10~0_combout\ = ( \a1~input_o\ & ( \a2~input_o\ & ( ((\c1~input_o\) # (\b1~input_o\)) # (\b2~input_o\) ) ) ) # ( !\a1~input_o\ & ( \a2~input_o\ & ( ((\b1~input_o\ & \c1~input_o\)) # (\b2~input_o\) ) ) ) # ( \a1~input_o\ & ( !\a2~input_o\ & ( 
-- (\b2~input_o\ & ((\c1~input_o\) # (\b1~input_o\))) ) ) ) # ( !\a1~input_o\ & ( !\a2~input_o\ & ( (\b2~input_o\ & (\b1~input_o\ & \c1~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b2~input_o\,
	datab => \ALT_INV_b1~input_o\,
	datac => \ALT_INV_c1~input_o\,
	datae => \ALT_INV_a1~input_o\,
	dataf => \ALT_INV_a2~input_o\,
	combout => \WIRE_10~0_combout\);

-- Location: LABCELL_X83_Y32_N0
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


