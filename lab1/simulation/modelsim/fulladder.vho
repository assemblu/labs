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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/16/2021 14:55:28"

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
	i_bit1 : IN std_logic;
	i_bit2 : IN std_logic;
	i_bit3 : IN std_logic;
	i_bit4 : IN std_logic;
	o_sum1 : OUT std_logic;
	o_sum2 : OUT std_logic;
	o_carr : OUT std_logic
	);
END fulladder;

-- Design Ports Information
-- o_sum1	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sum2	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_carr	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bit1	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bit2	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bit3	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bit4	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_bit1 : std_logic;
SIGNAL ww_i_bit2 : std_logic;
SIGNAL ww_i_bit3 : std_logic;
SIGNAL ww_i_bit4 : std_logic;
SIGNAL ww_o_sum1 : std_logic;
SIGNAL ww_o_sum2 : std_logic;
SIGNAL ww_o_carr : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_bit2~input_o\ : std_logic;
SIGNAL \i_bit1~input_o\ : std_logic;
SIGNAL \WIRE_1~0_combout\ : std_logic;
SIGNAL \i_bit3~input_o\ : std_logic;
SIGNAL \i_bit4~input_o\ : std_logic;
SIGNAL \WIRE_5~0_combout\ : std_logic;
SIGNAL \WIRE_7~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_bit4~input_o\ : std_logic;
SIGNAL \ALT_INV_i_bit3~input_o\ : std_logic;
SIGNAL \ALT_INV_i_bit2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_bit1~input_o\ : std_logic;

BEGIN

ww_i_bit1 <= i_bit1;
ww_i_bit2 <= i_bit2;
ww_i_bit3 <= i_bit3;
ww_i_bit4 <= i_bit4;
o_sum1 <= ww_o_sum1;
o_sum2 <= ww_o_sum2;
o_carr <= ww_o_carr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_bit4~input_o\ <= NOT \i_bit4~input_o\;
\ALT_INV_i_bit3~input_o\ <= NOT \i_bit3~input_o\;
\ALT_INV_i_bit2~input_o\ <= NOT \i_bit2~input_o\;
\ALT_INV_i_bit1~input_o\ <= NOT \i_bit1~input_o\;

-- Location: IOOBUF_X89_Y9_N22
\o_sum1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_sum1);

-- Location: IOOBUF_X89_Y9_N56
\o_sum2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_5~0_combout\,
	devoe => ww_devoe,
	o => ww_o_sum2);

-- Location: IOOBUF_X89_Y13_N56
\o_carr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRE_7~0_combout\,
	devoe => ww_devoe,
	o => ww_o_carr);

-- Location: IOIBUF_X89_Y11_N95
\i_bit2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_bit2,
	o => \i_bit2~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\i_bit1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_bit1,
	o => \i_bit1~input_o\);

-- Location: LABCELL_X88_Y11_N30
\WIRE_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_1~0_combout\ = ( !\i_bit2~input_o\ & ( \i_bit1~input_o\ ) ) # ( \i_bit2~input_o\ & ( !\i_bit1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_i_bit2~input_o\,
	dataf => \ALT_INV_i_bit1~input_o\,
	combout => \WIRE_1~0_combout\);

-- Location: IOIBUF_X89_Y11_N61
\i_bit3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_bit3,
	o => \i_bit3~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\i_bit4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_bit4,
	o => \i_bit4~input_o\);

-- Location: LABCELL_X88_Y11_N36
\WIRE_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_5~0_combout\ = ( \i_bit2~input_o\ & ( \i_bit4~input_o\ & ( !\i_bit3~input_o\ $ (\i_bit1~input_o\) ) ) ) # ( !\i_bit2~input_o\ & ( \i_bit4~input_o\ & ( !\i_bit3~input_o\ ) ) ) # ( \i_bit2~input_o\ & ( !\i_bit4~input_o\ & ( !\i_bit3~input_o\ $ 
-- (!\i_bit1~input_o\) ) ) ) # ( !\i_bit2~input_o\ & ( !\i_bit4~input_o\ & ( \i_bit3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110011001100110011001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_bit3~input_o\,
	datac => \ALT_INV_i_bit1~input_o\,
	datae => \ALT_INV_i_bit2~input_o\,
	dataf => \ALT_INV_i_bit4~input_o\,
	combout => \WIRE_5~0_combout\);

-- Location: LABCELL_X88_Y11_N15
\WIRE_7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WIRE_7~0_combout\ = ( \i_bit2~input_o\ & ( \i_bit4~input_o\ & ( (\i_bit3~input_o\) # (\i_bit1~input_o\) ) ) ) # ( !\i_bit2~input_o\ & ( \i_bit4~input_o\ & ( \i_bit3~input_o\ ) ) ) # ( \i_bit2~input_o\ & ( !\i_bit4~input_o\ & ( (\i_bit1~input_o\ & 
-- \i_bit3~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_bit1~input_o\,
	datac => \ALT_INV_i_bit3~input_o\,
	datae => \ALT_INV_i_bit2~input_o\,
	dataf => \ALT_INV_i_bit4~input_o\,
	combout => \WIRE_7~0_combout\);

-- Location: MLABCELL_X15_Y64_N3
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


