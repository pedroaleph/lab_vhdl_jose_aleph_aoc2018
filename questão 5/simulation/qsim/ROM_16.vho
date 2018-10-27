-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/26/2018 16:50:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	ROM_16 IS
    PORT (
	PC_address : IN std_logic_vector(3 DOWNTO 0);
	INSTRUCTION : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ROM_16;

-- Design Ports Information
-- INSTRUCTION[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[9]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[11]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[13]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[14]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTRUCTION : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PC_address[0]~input_o\ : std_logic;
SIGNAL \PC_address[2]~input_o\ : std_logic;
SIGNAL \PC_address[3]~input_o\ : std_logic;
SIGNAL \PC_address[1]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_PC_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[0]~input_o\ : std_logic;

BEGIN

ww_PC_address <= PC_address;
INSTRUCTION <= ww_INSTRUCTION;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_PC_address[3]~input_o\ <= NOT \PC_address[3]~input_o\;
\ALT_INV_PC_address[2]~input_o\ <= NOT \PC_address[2]~input_o\;
\ALT_INV_PC_address[1]~input_o\ <= NOT \PC_address[1]~input_o\;
\ALT_INV_PC_address[0]~input_o\ <= NOT \PC_address[0]~input_o\;

-- Location: IOOBUF_X50_Y0_N76
\INSTRUCTION[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(0));

-- Location: IOOBUF_X89_Y9_N5
\INSTRUCTION[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(1));

-- Location: IOOBUF_X89_Y36_N22
\INSTRUCTION[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(2));

-- Location: IOOBUF_X89_Y36_N5
\INSTRUCTION[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(3));

-- Location: IOOBUF_X56_Y81_N53
\INSTRUCTION[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(4));

-- Location: IOOBUF_X89_Y36_N39
\INSTRUCTION[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(5));

-- Location: IOOBUF_X89_Y37_N56
\INSTRUCTION[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(6));

-- Location: IOOBUF_X89_Y38_N5
\INSTRUCTION[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(7));

-- Location: IOOBUF_X89_Y37_N5
\INSTRUCTION[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(8));

-- Location: IOOBUF_X89_Y38_N39
\INSTRUCTION[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(9));

-- Location: IOOBUF_X89_Y35_N79
\INSTRUCTION[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(10));

-- Location: IOOBUF_X89_Y38_N22
\INSTRUCTION[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(11));

-- Location: IOOBUF_X89_Y9_N56
\INSTRUCTION[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~9_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(12));

-- Location: IOOBUF_X89_Y35_N96
\INSTRUCTION[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~10_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(13));

-- Location: IOOBUF_X89_Y37_N22
\INSTRUCTION[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~11_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(14));

-- Location: IOOBUF_X89_Y36_N56
\INSTRUCTION[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(15));

-- Location: IOIBUF_X89_Y38_N55
\PC_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(0),
	o => \PC_address[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\PC_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(2),
	o => \PC_address[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\PC_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(3),
	o => \PC_address[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\PC_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(1),
	o => \PC_address[1]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \PC_address[1]~input_o\ & ( (\PC_address[0]~input_o\ & (\PC_address[2]~input_o\ & \PC_address[3]~input_o\)) ) ) # ( !\PC_address[1]~input_o\ & ( (\PC_address[0]~input_o\ & (!\PC_address[2]~input_o\ & !\PC_address[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X88_Y36_N9
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \PC_address[1]~input_o\ & ( (!\PC_address[3]~input_o\ & (!\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \PC_address[1]~input_o\ & ( (\PC_address[0]~input_o\ & (!\PC_address[2]~input_o\ & !\PC_address[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X88_Y36_N21
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( !\PC_address[1]~input_o\ & ( (!\PC_address[3]~input_o\ & (\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X88_Y36_N54
\Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( !\PC_address[1]~input_o\ & ( (\PC_address[0]~input_o\ & (\PC_address[2]~input_o\ & !\PC_address[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LABCELL_X88_Y36_N33
\Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \PC_address[1]~input_o\ & ( (!\PC_address[3]~input_o\ & (\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X88_Y36_N36
\Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \PC_address[1]~input_o\ & ( (!\PC_address[3]~input_o\ & (\PC_address[2]~input_o\ & \PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LABCELL_X88_Y36_N39
\Mux6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( !\PC_address[1]~input_o\ & ( (\PC_address[3]~input_o\ & (!\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LABCELL_X88_Y36_N12
\Mux6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = ( !\PC_address[1]~input_o\ & ( (!\PC_address[2]~input_o\ & (\PC_address[3]~input_o\ & \PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LABCELL_X88_Y36_N15
\Mux6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = ( \PC_address[1]~input_o\ & ( (\PC_address[3]~input_o\ & (!\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LABCELL_X88_Y36_N48
\Mux6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = ( \PC_address[1]~input_o\ & ( (!\PC_address[2]~input_o\ & (\PC_address[3]~input_o\ & \PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~9_combout\);

-- Location: LABCELL_X88_Y36_N51
\Mux6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = ( !\PC_address[1]~input_o\ & ( (\PC_address[3]~input_o\ & (\PC_address[2]~input_o\ & !\PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~10_combout\);

-- Location: LABCELL_X88_Y36_N24
\Mux6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = ( !\PC_address[1]~input_o\ & ( (\PC_address[2]~input_o\ & (\PC_address[3]~input_o\ & \PC_address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[2]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[0]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux6~11_combout\);

-- Location: LABCELL_X88_Y36_N27
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \PC_address[1]~input_o\ & ( (\PC_address[3]~input_o\ & \PC_address[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X73_Y19_N0
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


