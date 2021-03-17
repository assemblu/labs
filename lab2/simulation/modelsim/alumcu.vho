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

-- DATE "03/14/2021 21:59:32"

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

ENTITY 	alumcu IS
    PORT (
	opCode : IN IEEE.NUMERIC_STD.unsigned(13 DOWNTO 7);
	fileCode : IN IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0);
	accumulator : IN IEEE.NUMERIC_STD.unsigned(13 DOWNTO 0)
	);
END alumcu;

-- Design Ports Information
-- opCode[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[9]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[11]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fileCode[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[3]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[5]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[7]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[9]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[10]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[12]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accumulator[13]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alumcu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opCode : std_logic_vector(13 DOWNTO 7);
SIGNAL ww_fileCode : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_accumulator : std_logic_vector(13 DOWNTO 0);
SIGNAL \opCode[7]~input_o\ : std_logic;
SIGNAL \opCode[8]~input_o\ : std_logic;
SIGNAL \opCode[9]~input_o\ : std_logic;
SIGNAL \opCode[10]~input_o\ : std_logic;
SIGNAL \opCode[11]~input_o\ : std_logic;
SIGNAL \opCode[12]~input_o\ : std_logic;
SIGNAL \opCode[13]~input_o\ : std_logic;
SIGNAL \fileCode[0]~input_o\ : std_logic;
SIGNAL \fileCode[1]~input_o\ : std_logic;
SIGNAL \fileCode[2]~input_o\ : std_logic;
SIGNAL \fileCode[3]~input_o\ : std_logic;
SIGNAL \fileCode[4]~input_o\ : std_logic;
SIGNAL \fileCode[5]~input_o\ : std_logic;
SIGNAL \fileCode[6]~input_o\ : std_logic;
SIGNAL \accumulator[0]~input_o\ : std_logic;
SIGNAL \accumulator[1]~input_o\ : std_logic;
SIGNAL \accumulator[2]~input_o\ : std_logic;
SIGNAL \accumulator[3]~input_o\ : std_logic;
SIGNAL \accumulator[4]~input_o\ : std_logic;
SIGNAL \accumulator[5]~input_o\ : std_logic;
SIGNAL \accumulator[6]~input_o\ : std_logic;
SIGNAL \accumulator[7]~input_o\ : std_logic;
SIGNAL \accumulator[8]~input_o\ : std_logic;
SIGNAL \accumulator[9]~input_o\ : std_logic;
SIGNAL \accumulator[10]~input_o\ : std_logic;
SIGNAL \accumulator[11]~input_o\ : std_logic;
SIGNAL \accumulator[12]~input_o\ : std_logic;
SIGNAL \accumulator[13]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_opCode <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(opCode);
ww_fileCode <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(fileCode);
ww_accumulator <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(accumulator);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X6_Y0_N1
\opCode[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(7),
	o => \opCode[7]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\opCode[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(8),
	o => \opCode[8]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\opCode[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(9),
	o => \opCode[9]~input_o\);

-- Location: IOIBUF_X20_Y81_N35
\opCode[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(10),
	o => \opCode[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\opCode[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(11),
	o => \opCode[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\opCode[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(12),
	o => \opCode[12]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\opCode[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(13),
	o => \opCode[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\fileCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(0),
	o => \fileCode[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\fileCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(1),
	o => \fileCode[1]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\fileCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(2),
	o => \fileCode[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\fileCode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(3),
	o => \fileCode[3]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\fileCode[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(4),
	o => \fileCode[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\fileCode[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(5),
	o => \fileCode[5]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\fileCode[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fileCode(6),
	o => \fileCode[6]~input_o\);

-- Location: IOIBUF_X4_Y81_N35
\accumulator[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(0),
	o => \accumulator[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\accumulator[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(1),
	o => \accumulator[1]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\accumulator[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(2),
	o => \accumulator[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\accumulator[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(3),
	o => \accumulator[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\accumulator[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(4),
	o => \accumulator[4]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\accumulator[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(5),
	o => \accumulator[5]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\accumulator[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(6),
	o => \accumulator[6]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\accumulator[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(7),
	o => \accumulator[7]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\accumulator[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(8),
	o => \accumulator[8]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\accumulator[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(9),
	o => \accumulator[9]~input_o\);

-- Location: IOIBUF_X16_Y81_N1
\accumulator[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(10),
	o => \accumulator[10]~input_o\);

-- Location: IOIBUF_X16_Y81_N35
\accumulator[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(11),
	o => \accumulator[11]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\accumulator[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(12),
	o => \accumulator[12]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\accumulator[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accumulator(13),
	o => \accumulator[13]~input_o\);

-- Location: MLABCELL_X65_Y36_N0
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


