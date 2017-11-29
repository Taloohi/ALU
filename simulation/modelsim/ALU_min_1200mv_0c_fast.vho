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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/29/2017 17:06:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Input_Switch : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	clk : IN std_logic;
	seven_segment1 : OUT std_logic_vector(6 DOWNTO 0);
	seven_segment2 : OUT std_logic_vector(6 DOWNTO 0);
	seven_segment3 : OUT std_logic_vector(6 DOWNTO 0);
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Input_Switch[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[5]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Switch[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment1[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[2]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment2[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment3[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input_Switch : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_seven_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \Input_Switch[0]~input_o\ : std_logic;
SIGNAL \Input_Switch[1]~input_o\ : std_logic;
SIGNAL \Input_Switch[2]~input_o\ : std_logic;
SIGNAL \Input_Switch[3]~input_o\ : std_logic;
SIGNAL \Input_Switch[4]~input_o\ : std_logic;
SIGNAL \Input_Switch[5]~input_o\ : std_logic;
SIGNAL \Input_Switch[6]~input_o\ : std_logic;
SIGNAL \Input_Switch[7]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \seven_segment1[0]~output_o\ : std_logic;
SIGNAL \seven_segment1[1]~output_o\ : std_logic;
SIGNAL \seven_segment1[2]~output_o\ : std_logic;
SIGNAL \seven_segment1[3]~output_o\ : std_logic;
SIGNAL \seven_segment1[4]~output_o\ : std_logic;
SIGNAL \seven_segment1[5]~output_o\ : std_logic;
SIGNAL \seven_segment1[6]~output_o\ : std_logic;
SIGNAL \seven_segment2[0]~output_o\ : std_logic;
SIGNAL \seven_segment2[1]~output_o\ : std_logic;
SIGNAL \seven_segment2[2]~output_o\ : std_logic;
SIGNAL \seven_segment2[3]~output_o\ : std_logic;
SIGNAL \seven_segment2[4]~output_o\ : std_logic;
SIGNAL \seven_segment2[5]~output_o\ : std_logic;
SIGNAL \seven_segment2[6]~output_o\ : std_logic;
SIGNAL \seven_segment3[0]~output_o\ : std_logic;
SIGNAL \seven_segment3[1]~output_o\ : std_logic;
SIGNAL \seven_segment3[2]~output_o\ : std_logic;
SIGNAL \seven_segment3[3]~output_o\ : std_logic;
SIGNAL \seven_segment3[4]~output_o\ : std_logic;
SIGNAL \seven_segment3[5]~output_o\ : std_logic;
SIGNAL \seven_segment3[6]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;

BEGIN

ww_Input_Switch <= Input_Switch;
ww_reset <= reset;
ww_clk <= clk;
seven_segment1 <= ww_seven_segment1;
seven_segment2 <= ww_seven_segment2;
seven_segment3 <= ww_seven_segment3;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y69_N9
\seven_segment1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\seven_segment1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\seven_segment1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\seven_segment1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\seven_segment1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\seven_segment1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\seven_segment1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment1[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\seven_segment2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\seven_segment2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[1]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\seven_segment2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\seven_segment2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\seven_segment2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[4]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\seven_segment2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\seven_segment2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment2[6]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\seven_segment3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\seven_segment3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\seven_segment3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\seven_segment3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\seven_segment3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\seven_segment3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[5]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\seven_segment3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seven_segment3[6]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOIBUF_X0_Y63_N22
\Input_Switch[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(0),
	o => \Input_Switch[0]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\Input_Switch[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(1),
	o => \Input_Switch[1]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\Input_Switch[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(2),
	o => \Input_Switch[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\Input_Switch[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(3),
	o => \Input_Switch[3]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\Input_Switch[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(4),
	o => \Input_Switch[4]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\Input_Switch[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(5),
	o => \Input_Switch[5]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\Input_Switch[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(6),
	o => \Input_Switch[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\Input_Switch[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Switch(7),
	o => \Input_Switch[7]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_seven_segment1(0) <= \seven_segment1[0]~output_o\;

ww_seven_segment1(1) <= \seven_segment1[1]~output_o\;

ww_seven_segment1(2) <= \seven_segment1[2]~output_o\;

ww_seven_segment1(3) <= \seven_segment1[3]~output_o\;

ww_seven_segment1(4) <= \seven_segment1[4]~output_o\;

ww_seven_segment1(5) <= \seven_segment1[5]~output_o\;

ww_seven_segment1(6) <= \seven_segment1[6]~output_o\;

ww_seven_segment2(0) <= \seven_segment2[0]~output_o\;

ww_seven_segment2(1) <= \seven_segment2[1]~output_o\;

ww_seven_segment2(2) <= \seven_segment2[2]~output_o\;

ww_seven_segment2(3) <= \seven_segment2[3]~output_o\;

ww_seven_segment2(4) <= \seven_segment2[4]~output_o\;

ww_seven_segment2(5) <= \seven_segment2[5]~output_o\;

ww_seven_segment2(6) <= \seven_segment2[6]~output_o\;

ww_seven_segment3(0) <= \seven_segment3[0]~output_o\;

ww_seven_segment3(1) <= \seven_segment3[1]~output_o\;

ww_seven_segment3(2) <= \seven_segment3[2]~output_o\;

ww_seven_segment3(3) <= \seven_segment3[3]~output_o\;

ww_seven_segment3(4) <= \seven_segment3[4]~output_o\;

ww_seven_segment3(5) <= \seven_segment3[5]~output_o\;

ww_seven_segment3(6) <= \seven_segment3[6]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


