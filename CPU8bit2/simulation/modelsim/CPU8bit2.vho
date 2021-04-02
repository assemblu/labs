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

-- DATE "03/29/2021 22:05:19"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	CPU8BIT2 IS
    PORT (
	data : INOUT std_logic_vector(7 DOWNTO 0);
	adress : OUT std_logic_vector(5 DOWNTO 0);
	oe : OUT std_logic;
	we : OUT std_logic;
	rst : IN std_logic;
	clk : IN std_logic
	);
END CPU8BIT2;

-- Design Ports Information
-- adress[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[4]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[5]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU8BIT2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_adress : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_oe : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \akku~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \akku~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \akku~3_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \akku~4_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \akku~5_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \akku~6_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \akku~7_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \akku~8_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \akku[8]~0_combout\ : std_logic;
SIGNAL \states~2_combout\ : std_logic;
SIGNAL \states~0_combout\ : std_logic;
SIGNAL \states~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \pc[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \adreg~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \adreg~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \adreg~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \adreg~3_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \adreg~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \adreg~5_combout\ : std_logic;
SIGNAL \oe~0_combout\ : std_logic;
SIGNAL \we~0_combout\ : std_logic;
SIGNAL akku : std_logic_vector(8 DOWNTO 0);
SIGNAL adreg : std_logic_vector(5 DOWNTO 0);
SIGNAL states : std_logic_vector(2 DOWNTO 0);
SIGNAL pc : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL ALT_INV_akku : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_pc : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_states : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_adreg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

adress <= ww_adress;
oe <= ww_oe;
we <= ww_we;
ww_rst <= rst;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
ALT_INV_akku(8) <= NOT akku(8);
ALT_INV_pc(5) <= NOT pc(5);
ALT_INV_pc(4) <= NOT pc(4);
ALT_INV_pc(3) <= NOT pc(3);
ALT_INV_pc(2) <= NOT pc(2);
ALT_INV_pc(1) <= NOT pc(1);
ALT_INV_pc(0) <= NOT pc(0);
ALT_INV_states(2) <= NOT states(2);
ALT_INV_states(0) <= NOT states(0);
ALT_INV_states(1) <= NOT states(1);
ALT_INV_adreg(5) <= NOT adreg(5);
ALT_INV_adreg(4) <= NOT adreg(4);
ALT_INV_adreg(3) <= NOT adreg(3);
ALT_INV_adreg(2) <= NOT adreg(2);
ALT_INV_adreg(1) <= NOT adreg(1);
ALT_INV_adreg(0) <= NOT adreg(0);
ALT_INV_akku(7) <= NOT akku(7);
ALT_INV_akku(6) <= NOT akku(6);
ALT_INV_akku(5) <= NOT akku(5);
ALT_INV_akku(4) <= NOT akku(4);
ALT_INV_akku(3) <= NOT akku(3);
ALT_INV_akku(2) <= NOT akku(2);
ALT_INV_akku(1) <= NOT akku(1);
ALT_INV_akku(0) <= NOT akku(0);
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;

-- Location: IOOBUF_X89_Y23_N56
\adress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(0),
	devoe => ww_devoe,
	o => ww_adress(0));

-- Location: IOOBUF_X89_Y25_N39
\adress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(1),
	devoe => ww_devoe,
	o => ww_adress(1));

-- Location: IOOBUF_X89_Y16_N56
\adress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(2),
	devoe => ww_devoe,
	o => ww_adress(2));

-- Location: IOOBUF_X89_Y25_N5
\adress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(3),
	devoe => ww_devoe,
	o => ww_adress(3));

-- Location: IOOBUF_X89_Y23_N5
\adress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(4),
	devoe => ww_devoe,
	o => ww_adress(4));

-- Location: IOOBUF_X89_Y25_N56
\adress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => adreg(5),
	devoe => ww_devoe,
	o => ww_adress(5));

-- Location: IOOBUF_X89_Y23_N39
\oe~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oe~0_combout\,
	devoe => ww_devoe,
	o => ww_oe);

-- Location: IOOBUF_X89_Y23_N22
\we~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \we~0_combout\,
	devoe => ww_devoe,
	o => ww_we);

-- Location: IOOBUF_X89_Y21_N56
\data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(0),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(0));

-- Location: IOOBUF_X89_Y20_N62
\data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(1),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(1));

-- Location: IOOBUF_X89_Y21_N39
\data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(2),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(2));

-- Location: IOOBUF_X89_Y20_N96
\data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(3),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(3));

-- Location: IOOBUF_X89_Y21_N5
\data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(4),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(4));

-- Location: IOOBUF_X89_Y20_N79
\data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(5),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(5));

-- Location: IOOBUF_X89_Y21_N22
\data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(6),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(6));

-- Location: IOOBUF_X89_Y20_N45
\data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => akku(7),
	oe => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => data(7));

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: IOIBUF_X89_Y21_N55
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( akku(0) ) + ( \data[0]~input_o\ ) + ( !VCC ))
-- \Add1~10\ = CARRY(( akku(0) ) + ( \data[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[0]~input_o\,
	datad => ALT_INV_akku(0),
	cin => GND,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X88_Y21_N48
\akku~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~1_combout\ = ( !\data[0]~input_o\ & ( !akku(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_akku(0),
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \akku~1_combout\);

-- Location: IOIBUF_X89_Y16_N4
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: LABCELL_X88_Y21_N3
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( akku(1) ) + ( \data[1]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( akku(1) ) + ( \data[1]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datad => ALT_INV_akku(1),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X88_Y21_N36
\akku~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~2_combout\ = ( !\data[1]~input_o\ & ( !akku(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_akku(1),
	dataf => \ALT_INV_data[1]~input_o\,
	combout => \akku~2_combout\);

-- Location: LABCELL_X88_Y21_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !states(2) & ( states(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_states(1),
	dataf => ALT_INV_states(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y21_N5
\akku[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => \akku~2_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(1));

-- Location: LABCELL_X88_Y21_N6
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( akku(2) ) + ( \data[2]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( akku(2) ) + ( \data[2]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => ALT_INV_akku(2),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X88_Y21_N33
\akku~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~3_combout\ = ( !akku(2) & ( !\data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_data[2]~input_o\,
	dataf => ALT_INV_akku(2),
	combout => \akku~3_combout\);

-- Location: FF_X88_Y21_N8
\akku[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => \akku~3_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(2));

-- Location: LABCELL_X88_Y21_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( akku(3) ) + ( \data[3]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( akku(3) ) + ( \data[3]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[3]~input_o\,
	datad => ALT_INV_akku(3),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X88_Y21_N51
\akku~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~4_combout\ = ( !akku(3) & ( !\data[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[3]~input_o\,
	dataf => ALT_INV_akku(3),
	combout => \akku~4_combout\);

-- Location: FF_X88_Y21_N11
\akku[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => \akku~4_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(3));

-- Location: LABCELL_X88_Y21_N12
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( akku(4) ) + ( \data[4]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( akku(4) ) + ( \data[4]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[4]~input_o\,
	datad => ALT_INV_akku(4),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X88_Y21_N57
\akku~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~5_combout\ = ( !akku(4) & ( !\data[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[4]~input_o\,
	dataf => ALT_INV_akku(4),
	combout => \akku~5_combout\);

-- Location: FF_X88_Y21_N14
\akku[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => \akku~5_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(4));

-- Location: LABCELL_X88_Y21_N15
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( akku(5) ) + ( \data[5]~input_o\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( akku(5) ) + ( \data[5]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[5]~input_o\,
	datad => ALT_INV_akku(5),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X88_Y21_N54
\akku~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~6_combout\ = ( !akku(5) & ( !\data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[5]~input_o\,
	dataf => ALT_INV_akku(5),
	combout => \akku~6_combout\);

-- Location: FF_X88_Y21_N17
\akku[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \akku~6_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(5));

-- Location: LABCELL_X88_Y21_N18
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( akku(6) ) + ( \data[6]~input_o\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( akku(6) ) + ( \data[6]~input_o\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[6]~input_o\,
	datad => ALT_INV_akku(6),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X88_Y21_N39
\akku~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~7_combout\ = ( !akku(6) & ( !\data[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[6]~input_o\,
	dataf => ALT_INV_akku(6),
	combout => \akku~7_combout\);

-- Location: FF_X88_Y21_N20
\akku[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \akku~7_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(6));

-- Location: LABCELL_X88_Y21_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( akku(7) ) + ( \data[7]~input_o\ ) + ( \Add1~34\ ))
-- \Add1~6\ = CARRY(( akku(7) ) + ( \data[7]~input_o\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[7]~input_o\,
	datad => ALT_INV_akku(7),
	cin => \Add1~34\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X88_Y21_N45
\akku~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku~8_combout\ = (!akku(7) & !\data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_akku(7),
	datad => \ALT_INV_data[7]~input_o\,
	combout => \akku~8_combout\);

-- Location: FF_X88_Y21_N23
\akku[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \akku~8_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(7));

-- Location: LABCELL_X88_Y21_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: LABCELL_X88_Y21_N30
\akku[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \akku[8]~0_combout\ = ( \Add1~1_sumout\ & ( (!states(1) & (akku(8) & ((!states(0)) # (!states(2))))) # (states(1) & (((!states(0) & !states(2))) # (akku(8)))) ) ) # ( !\Add1~1_sumout\ & ( (akku(8) & ((!states(1) & ((!states(0)) # (!states(2)))) # 
-- (states(1) & ((states(2)) # (states(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111101000000001011110101000000111111010100000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(0),
	datac => ALT_INV_states(2),
	datad => ALT_INV_akku(8),
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \akku[8]~0_combout\);

-- Location: FF_X88_Y21_N32
\akku[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \akku[8]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(8));

-- Location: MLABCELL_X87_Y21_N42
\states~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \states~2_combout\ = ( !states(2) & ( !states(1) & ( (\data[7]~input_o\ & (\data[6]~input_o\ & (!states(0) & akku(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[7]~input_o\,
	datab => \ALT_INV_data[6]~input_o\,
	datac => ALT_INV_states(0),
	datad => ALT_INV_akku(8),
	datae => ALT_INV_states(2),
	dataf => ALT_INV_states(1),
	combout => \states~2_combout\);

-- Location: FF_X87_Y21_N44
\states[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \states~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => states(2));

-- Location: MLABCELL_X87_Y21_N54
\states~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \states~0_combout\ = ( !states(2) & ( (!states(0) & (!\data[7]~input_o\ & !states(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(0),
	datac => \ALT_INV_data[7]~input_o\,
	datad => ALT_INV_states(1),
	dataf => ALT_INV_states(2),
	combout => \states~0_combout\);

-- Location: FF_X87_Y21_N56
\states[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \states~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => states(1));

-- Location: MLABCELL_X87_Y21_N48
\states~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \states~1_combout\ = ( !states(0) & ( !states(2) & ( (!states(1) & ((!\data[6]~input_o\) # ((\data[7]~input_o\ & akku(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[7]~input_o\,
	datab => \ALT_INV_data[6]~input_o\,
	datac => ALT_INV_states(1),
	datad => ALT_INV_akku(8),
	datae => ALT_INV_states(0),
	dataf => ALT_INV_states(2),
	combout => \states~1_combout\);

-- Location: FF_X87_Y21_N50
\states[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \states~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => states(0));

-- Location: FF_X88_Y21_N2
\akku[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \akku~1_combout\,
	clrn => \rst~input_o\,
	sload => states(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => akku(0));

-- Location: MLABCELL_X87_Y21_N57
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !states(1) & ( (states(0) & !states(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(0),
	datab => ALT_INV_states(2),
	dataf => ALT_INV_states(1),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X87_Y21_N12
\pc[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[0]~0_combout\ = ( !adreg(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_adreg(0),
	combout => \pc[0]~0_combout\);

-- Location: MLABCELL_X87_Y21_N27
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !states(0) & ( (!states(2) & !states(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_states(2),
	datad => ALT_INV_states(1),
	dataf => ALT_INV_states(0),
	combout => \Equal0~0_combout\);

-- Location: FF_X87_Y21_N14
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc[0]~0_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: MLABCELL_X87_Y21_N39
\adreg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~0_combout\ = ( states(0) & ( pc(0) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & (\data[0]~input_o\)) # (states(2) & ((pc(0)))))) # (states(1) & (((pc(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => \ALT_INV_data[0]~input_o\,
	datad => ALT_INV_pc(0),
	dataf => ALT_INV_states(0),
	combout => \adreg~0_combout\);

-- Location: FF_X87_Y21_N41
\adreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(0));

-- Location: MLABCELL_X87_Y21_N15
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( adreg(0) & ( !adreg(1) ) ) # ( !adreg(0) & ( adreg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_adreg(1),
	dataf => ALT_INV_adreg(0),
	combout => \Add0~0_combout\);

-- Location: FF_X87_Y21_N17
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: MLABCELL_X87_Y21_N21
\adreg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~1_combout\ = ( states(0) & ( pc(1) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & ((\data[1]~input_o\))) # (states(2) & (pc(1))))) # (states(1) & (((pc(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => ALT_INV_pc(1),
	datad => \ALT_INV_data[1]~input_o\,
	dataf => ALT_INV_states(0),
	combout => \adreg~1_combout\);

-- Location: FF_X87_Y21_N23
\adreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(1));

-- Location: MLABCELL_X87_Y21_N6
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( adreg(0) & ( !adreg(2) $ (!adreg(1)) ) ) # ( !adreg(0) & ( adreg(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_adreg(2),
	datad => ALT_INV_adreg(1),
	dataf => ALT_INV_adreg(0),
	combout => \Add0~1_combout\);

-- Location: FF_X87_Y21_N7
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: MLABCELL_X87_Y21_N0
\adreg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~2_combout\ = ( states(0) & ( pc(2) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & (\data[2]~input_o\)) # (states(2) & ((pc(2)))))) # (states(1) & (((pc(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => \ALT_INV_data[2]~input_o\,
	datad => ALT_INV_pc(2),
	dataf => ALT_INV_states(0),
	combout => \adreg~2_combout\);

-- Location: FF_X87_Y21_N2
\adreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(2));

-- Location: MLABCELL_X87_Y21_N9
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( adreg(1) & ( !adreg(3) $ (((!adreg(0)) # (!adreg(2)))) ) ) # ( !adreg(1) & ( adreg(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_adreg(3),
	datac => ALT_INV_adreg(0),
	datad => ALT_INV_adreg(2),
	dataf => ALT_INV_adreg(1),
	combout => \Add0~2_combout\);

-- Location: FF_X87_Y21_N10
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~2_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: MLABCELL_X87_Y21_N3
\adreg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~3_combout\ = ( states(0) & ( pc(3) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & (\data[3]~input_o\)) # (states(2) & ((pc(3)))))) # (states(1) & (((pc(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => \ALT_INV_data[3]~input_o\,
	datad => ALT_INV_pc(3),
	dataf => ALT_INV_states(0),
	combout => \adreg~3_combout\);

-- Location: FF_X87_Y21_N5
\adreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(3));

-- Location: MLABCELL_X87_Y21_N24
\Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = ( adreg(0) & ( !adreg(4) $ (((!adreg(3)) # ((!adreg(1)) # (!adreg(2))))) ) ) # ( !adreg(0) & ( adreg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_adreg(3),
	datab => ALT_INV_adreg(4),
	datac => ALT_INV_adreg(1),
	datad => ALT_INV_adreg(2),
	dataf => ALT_INV_adreg(0),
	combout => \Add0~3_combout\);

-- Location: FF_X87_Y21_N26
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~3_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: MLABCELL_X87_Y21_N36
\adreg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~4_combout\ = ( states(0) & ( pc(4) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & ((\data[4]~input_o\))) # (states(2) & (pc(4))))) # (states(1) & (((pc(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => ALT_INV_pc(4),
	datad => \ALT_INV_data[4]~input_o\,
	dataf => ALT_INV_states(0),
	combout => \adreg~4_combout\);

-- Location: FF_X87_Y21_N38
\adreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(4));

-- Location: MLABCELL_X87_Y21_N30
\Add0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ( adreg(3) & ( adreg(1) & ( !adreg(5) $ (((!adreg(4)) # ((!adreg(2)) # (!adreg(0))))) ) ) ) # ( !adreg(3) & ( adreg(1) & ( adreg(5) ) ) ) # ( adreg(3) & ( !adreg(1) & ( adreg(5) ) ) ) # ( !adreg(3) & ( !adreg(1) & ( adreg(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_adreg(4),
	datab => ALT_INV_adreg(5),
	datac => ALT_INV_adreg(2),
	datad => ALT_INV_adreg(0),
	datae => ALT_INV_adreg(3),
	dataf => ALT_INV_adreg(1),
	combout => \Add0~4_combout\);

-- Location: FF_X87_Y21_N31
\pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(5));

-- Location: MLABCELL_X87_Y21_N18
\adreg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \adreg~5_combout\ = ( states(0) & ( pc(5) ) ) # ( !states(0) & ( (!states(1) & ((!states(2) & (\data[5]~input_o\)) # (states(2) & ((pc(5)))))) # (states(1) & (((pc(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(1),
	datab => ALT_INV_states(2),
	datac => \ALT_INV_data[5]~input_o\,
	datad => ALT_INV_pc(5),
	dataf => ALT_INV_states(0),
	combout => \adreg~5_combout\);

-- Location: FF_X87_Y21_N20
\adreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adreg~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adreg(5));

-- Location: LABCELL_X85_Y21_N15
\oe~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \oe~0_combout\ = ( \rst~input_o\ & ( \clk~input_o\ ) ) # ( !\rst~input_o\ & ( \clk~input_o\ ) ) # ( \rst~input_o\ & ( !\clk~input_o\ & ( (states(0) & !states(1)) ) ) ) # ( !\rst~input_o\ & ( !\clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_states(0),
	datac => ALT_INV_states(1),
	datae => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \oe~0_combout\);

-- Location: LABCELL_X85_Y21_N42
\we~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \we~0_combout\ = ( \rst~input_o\ & ( states(0) & ( ((\clk~input_o\) # (states(1))) # (states(2)) ) ) ) # ( !\rst~input_o\ & ( states(0) ) ) # ( \rst~input_o\ & ( !states(0) ) ) # ( !\rst~input_o\ & ( !states(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_states(2),
	datab => ALT_INV_states(1),
	datac => \ALT_INV_clk~input_o\,
	datae => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_states(0),
	combout => \we~0_combout\);

-- Location: LABCELL_X83_Y10_N0
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


