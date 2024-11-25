-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "11/22/2024 11:52:43"

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

ENTITY 	port_io IS
    PORT (
	nrst : IN std_logic;
	clk_in : IN std_logic;
	abus_in : IN std_logic_vector(8 DOWNTO 0);
	dbus_in : IN std_logic_vector(7 DOWNTO 0);
	wr_en : IN std_logic;
	rd_en : IN std_logic;
	dbus_out : OUT std_logic_vector(7 DOWNTO 0);
	port_io : INOUT std_logic_vector(7 DOWNTO 0)
	);
END port_io;

-- Design Ports Information
-- dbus_out[0]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[4]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dbus_out[7]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[4]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[5]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[6]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- port_io[7]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rd_en	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[8]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- abus_in[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nrst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wr_en	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[3]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[4]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[5]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dbus_in[7]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF port_io IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_abus_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_dbus_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_rd_en : std_logic;
SIGNAL ww_dbus_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nrst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \latch~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \port_io[0]~0\ : std_logic;
SIGNAL \port_io[1]~1\ : std_logic;
SIGNAL \port_io[2]~2\ : std_logic;
SIGNAL \port_io[3]~3\ : std_logic;
SIGNAL \port_io[4]~4\ : std_logic;
SIGNAL \port_io[5]~5\ : std_logic;
SIGNAL \port_io[6]~6\ : std_logic;
SIGNAL \port_io[7]~7\ : std_logic;
SIGNAL \rd_en~combout\ : std_logic;
SIGNAL \en_tris_addr~1_combout\ : std_logic;
SIGNAL \en_tris_addr~0_combout\ : std_logic;
SIGNAL \en_tris_addr~2_combout\ : std_logic;
SIGNAL \en_port_addr~2_combout\ : std_logic;
SIGNAL \en_port_addr~0_combout\ : std_logic;
SIGNAL \latch~0_combout\ : std_logic;
SIGNAL \latch~0clkctrl_outclk\ : std_logic;
SIGNAL \tris_reg[0]~1_combout\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \nrst~clkctrl_outclk\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \tris_reg[0]~0_combout\ : std_logic;
SIGNAL \dbus_out[0]~8_combout\ : std_logic;
SIGNAL \en_tris_addr~3_combout\ : std_logic;
SIGNAL \en_port_addr~1_combout\ : std_logic;
SIGNAL \dbus_out[7]~9_combout\ : std_logic;
SIGNAL \tris_reg[1]~2_combout\ : std_logic;
SIGNAL \dbus_out[1]~10_combout\ : std_logic;
SIGNAL \tris_reg[2]~3_combout\ : std_logic;
SIGNAL \dbus_out[2]~11_combout\ : std_logic;
SIGNAL \tris_reg[3]~4_combout\ : std_logic;
SIGNAL \dbus_out[3]~12_combout\ : std_logic;
SIGNAL \tris_reg[4]~5_combout\ : std_logic;
SIGNAL \dbus_out[4]~13_combout\ : std_logic;
SIGNAL \tris_reg[5]~6_combout\ : std_logic;
SIGNAL \dbus_out[5]~14_combout\ : std_logic;
SIGNAL \tris_reg[6]~7_combout\ : std_logic;
SIGNAL \dbus_out[6]~15_combout\ : std_logic;
SIGNAL \tris_reg[7]~8_combout\ : std_logic;
SIGNAL \dbus_out[7]~16_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \port_reg[0]~feeder_combout\ : std_logic;
SIGNAL \port_reg[0]~0_combout\ : std_logic;
SIGNAL \port_reg[1]~feeder_combout\ : std_logic;
SIGNAL \port_reg[2]~feeder_combout\ : std_logic;
SIGNAL \port_reg[3]~feeder_combout\ : std_logic;
SIGNAL \port_reg[5]~feeder_combout\ : std_logic;
SIGNAL \port_reg[6]~feeder_combout\ : std_logic;
SIGNAL \abus_in~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dbus_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL latch : std_logic_vector(7 DOWNTO 0);
SIGNAL port_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL tris_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_nrst~clkctrl_outclk\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk_in <= clk_in;
ww_abus_in <= abus_in;
ww_dbus_in <= dbus_in;
ww_wr_en <= wr_en;
ww_rd_en <= rd_en;
dbus_out <= ww_dbus_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_in~combout\);

\nrst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \nrst~combout\);

\latch~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \latch~0_combout\);
\ALT_INV_nrst~clkctrl_outclk\ <= NOT \nrst~clkctrl_outclk\;

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(0),
	oe => tris_reg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(0),
	combout => \port_io[0]~0\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(1),
	oe => tris_reg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(1),
	combout => \port_io[1]~1\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(2),
	oe => tris_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(2),
	combout => \port_io[2]~2\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(3),
	oe => tris_reg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(3),
	combout => \port_io[3]~3\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(4),
	oe => tris_reg(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(4),
	combout => \port_io[4]~4\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(5),
	oe => tris_reg(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(5),
	combout => \port_io[5]~5\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(6),
	oe => tris_reg(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(6),
	combout => \port_io[6]~6\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\port_io[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => port_reg(7),
	oe => tris_reg(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => port_io(7),
	combout => \port_io[7]~7\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rd_en~I\ : cycloneii_io
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
	padio => ww_rd_en,
	combout => \rd_en~combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[6]~I\ : cycloneii_io
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
	padio => ww_abus_in(6),
	combout => \abus_in~combout\(6));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[1]~I\ : cycloneii_io
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
	padio => ww_abus_in(1),
	combout => \abus_in~combout\(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[5]~I\ : cycloneii_io
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
	padio => ww_abus_in(5),
	combout => \abus_in~combout\(5));

-- Location: LCCOMB_X30_Y35_N14
\en_tris_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_tris_addr~1_combout\ = (!\abus_in~combout\(6) & (!\abus_in~combout\(5) & (\abus_in~combout\(7) $ (\abus_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abus_in~combout\(7),
	datab => \abus_in~combout\(6),
	datac => \abus_in~combout\(1),
	datad => \abus_in~combout\(5),
	combout => \en_tris_addr~1_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[4]~I\ : cycloneii_io
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
	padio => ww_abus_in(4),
	combout => \abus_in~combout\(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[2]~I\ : cycloneii_io
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
	padio => ww_abus_in(2),
	combout => \abus_in~combout\(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[8]~I\ : cycloneii_io
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
	padio => ww_abus_in(8),
	combout => \abus_in~combout\(8));

-- Location: LCCOMB_X30_Y35_N2
\en_tris_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_tris_addr~0_combout\ = (\abus_in~combout\(0) & (\abus_in~combout\(1) & (\abus_in~combout\(2) & !\abus_in~combout\(8)))) # (!\abus_in~combout\(0) & (!\abus_in~combout\(1) & (!\abus_in~combout\(2) & \abus_in~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abus_in~combout\(0),
	datab => \abus_in~combout\(1),
	datac => \abus_in~combout\(2),
	datad => \abus_in~combout\(8),
	combout => \en_tris_addr~0_combout\);

-- Location: LCCOMB_X30_Y35_N30
\en_tris_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_tris_addr~2_combout\ = (!\abus_in~combout\(3) & (\en_tris_addr~1_combout\ & (!\abus_in~combout\(4) & \en_tris_addr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abus_in~combout\(3),
	datab => \en_tris_addr~1_combout\,
	datac => \abus_in~combout\(4),
	datad => \en_tris_addr~0_combout\,
	combout => \en_tris_addr~2_combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[7]~I\ : cycloneii_io
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
	padio => ww_abus_in(7),
	combout => \abus_in~combout\(7));

-- Location: LCCOMB_X30_Y35_N4
\en_port_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_port_addr~2_combout\ = (!\abus_in~combout\(7) & !\abus_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \abus_in~combout\(7),
	datad => \abus_in~combout\(2),
	combout => \en_port_addr~2_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[0]~I\ : cycloneii_io
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
	padio => ww_abus_in(0),
	combout => \abus_in~combout\(0));

-- Location: LCCOMB_X30_Y35_N16
\en_port_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_port_addr~0_combout\ = (\abus_in~combout\(0) & (!\abus_in~combout\(8) & \abus_in~combout\(1))) # (!\abus_in~combout\(0) & (\abus_in~combout\(8) & !\abus_in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \abus_in~combout\(0),
	datac => \abus_in~combout\(8),
	datad => \abus_in~combout\(1),
	combout => \en_port_addr~0_combout\);

-- Location: LCCOMB_X30_Y35_N18
\latch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \latch~0_combout\ = (((!\rd_en~combout\) # (!\en_port_addr~0_combout\)) # (!\en_port_addr~2_combout\)) # (!\en_tris_addr~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_tris_addr~3_combout\,
	datab => \en_port_addr~2_combout\,
	datac => \en_port_addr~0_combout\,
	datad => \rd_en~combout\,
	combout => \latch~0_combout\);

-- Location: CLKCTRL_G9
\latch~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \latch~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \latch~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y35_N24
\latch[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(0) = (GLOBAL(\latch~0clkctrl_outclk\) & (\port_io[0]~0\)) # (!GLOBAL(\latch~0clkctrl_outclk\) & ((latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_io[0]~0\,
	datac => latch(0),
	datad => \latch~0clkctrl_outclk\,
	combout => latch(0));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[0]~I\ : cycloneii_io
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
	padio => ww_dbus_in(0),
	combout => \dbus_in~combout\(0));

-- Location: LCCOMB_X27_Y35_N8
\tris_reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[0]~1_combout\ = !\dbus_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(0),
	combout => \tris_reg[0]~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nrst~I\ : cycloneii_io
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
	padio => ww_nrst,
	combout => \nrst~combout\);

-- Location: CLKCTRL_G1
\nrst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nrst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nrst~clkctrl_outclk\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_en~I\ : cycloneii_io
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
	padio => ww_wr_en,
	combout => \wr_en~combout\);

-- Location: LCCOMB_X27_Y35_N24
\tris_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[0]~0_combout\ = (\en_tris_addr~2_combout\ & \wr_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_tris_addr~2_combout\,
	datad => \wr_en~combout\,
	combout => \tris_reg[0]~0_combout\);

-- Location: LCFF_X27_Y35_N9
\tris_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[0]~1_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(0));

-- Location: LCCOMB_X30_Y35_N8
\dbus_out[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[0]~8_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & ((!tris_reg(0)))) # (!\en_tris_addr~2_combout\ & (latch(0))))) # (!\rd_en~combout\ & (((latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => \en_tris_addr~2_combout\,
	datac => latch(0),
	datad => tris_reg(0),
	combout => \dbus_out[0]~8_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\abus_in[3]~I\ : cycloneii_io
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
	padio => ww_abus_in(3),
	combout => \abus_in~combout\(3));

-- Location: LCCOMB_X30_Y35_N24
\en_tris_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_tris_addr~3_combout\ = (!\abus_in~combout\(4) & (!\abus_in~combout\(3) & (!\abus_in~combout\(6) & !\abus_in~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abus_in~combout\(4),
	datab => \abus_in~combout\(3),
	datac => \abus_in~combout\(6),
	datad => \abus_in~combout\(5),
	combout => \en_tris_addr~3_combout\);

-- Location: LCCOMB_X30_Y35_N20
\en_port_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_port_addr~1_combout\ = (!\abus_in~combout\(7) & (\en_tris_addr~3_combout\ & (\en_port_addr~0_combout\ & !\abus_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abus_in~combout\(7),
	datab => \en_tris_addr~3_combout\,
	datac => \en_port_addr~0_combout\,
	datad => \abus_in~combout\(2),
	combout => \en_port_addr~1_combout\);

-- Location: LCCOMB_X30_Y35_N6
\dbus_out[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[7]~9_combout\ = (\rd_en~combout\ & ((\en_port_addr~1_combout\) # (\en_tris_addr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_port_addr~1_combout\,
	datac => \rd_en~combout\,
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[7]~9_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[1]~I\ : cycloneii_io
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
	padio => ww_dbus_in(1),
	combout => \dbus_in~combout\(1));

-- Location: LCCOMB_X27_Y35_N10
\tris_reg[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[1]~2_combout\ = !\dbus_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(1),
	combout => \tris_reg[1]~2_combout\);

-- Location: LCFF_X27_Y35_N11
\tris_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[1]~2_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(1));

-- Location: LCCOMB_X31_Y35_N0
\latch[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(1) = (GLOBAL(\latch~0clkctrl_outclk\) & ((\port_io[1]~1\))) # (!GLOBAL(\latch~0clkctrl_outclk\) & (latch(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => latch(1),
	datac => \port_io[1]~1\,
	datad => \latch~0clkctrl_outclk\,
	combout => latch(1));

-- Location: LCCOMB_X30_Y35_N28
\dbus_out[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[1]~10_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & (!tris_reg(1))) # (!\en_tris_addr~2_combout\ & ((latch(1)))))) # (!\rd_en~combout\ & (((latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => tris_reg(1),
	datac => latch(1),
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[1]~10_combout\);

-- Location: LCCOMB_X28_Y35_N8
\latch[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(2) = (GLOBAL(\latch~0clkctrl_outclk\) & (\port_io[2]~2\)) # (!GLOBAL(\latch~0clkctrl_outclk\) & ((latch(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_io[2]~2\,
	datac => latch(2),
	datad => \latch~0clkctrl_outclk\,
	combout => latch(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[2]~I\ : cycloneii_io
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
	padio => ww_dbus_in(2),
	combout => \dbus_in~combout\(2));

-- Location: LCCOMB_X27_Y35_N20
\tris_reg[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[2]~3_combout\ = !\dbus_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(2),
	combout => \tris_reg[2]~3_combout\);

-- Location: LCFF_X27_Y35_N21
\tris_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[2]~3_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(2));

-- Location: LCCOMB_X30_Y35_N0
\dbus_out[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[2]~11_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & ((!tris_reg(2)))) # (!\en_tris_addr~2_combout\ & (latch(2))))) # (!\rd_en~combout\ & (latch(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => latch(2),
	datab => tris_reg(2),
	datac => \rd_en~combout\,
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[2]~11_combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[3]~I\ : cycloneii_io
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
	padio => ww_dbus_in(3),
	combout => \dbus_in~combout\(3));

-- Location: LCCOMB_X27_Y35_N14
\tris_reg[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[3]~4_combout\ = !\dbus_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbus_in~combout\(3),
	combout => \tris_reg[3]~4_combout\);

-- Location: LCFF_X27_Y35_N15
\tris_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[3]~4_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(3));

-- Location: LCCOMB_X29_Y35_N0
\latch[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(3) = (GLOBAL(\latch~0clkctrl_outclk\) & ((\port_io[3]~3\))) # (!GLOBAL(\latch~0clkctrl_outclk\) & (latch(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => latch(3),
	datac => \port_io[3]~3\,
	datad => \latch~0clkctrl_outclk\,
	combout => latch(3));

-- Location: LCCOMB_X30_Y35_N10
\dbus_out[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[3]~12_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & (!tris_reg(3))) # (!\en_tris_addr~2_combout\ & ((latch(3)))))) # (!\rd_en~combout\ & (((latch(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => tris_reg(3),
	datac => latch(3),
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[3]~12_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[4]~I\ : cycloneii_io
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
	padio => ww_dbus_in(4),
	combout => \dbus_in~combout\(4));

-- Location: LCCOMB_X31_Y20_N16
\tris_reg[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[4]~5_combout\ = !\dbus_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbus_in~combout\(4),
	combout => \tris_reg[4]~5_combout\);

-- Location: LCFF_X31_Y20_N17
\tris_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[4]~5_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(4));

-- Location: LCCOMB_X30_Y6_N8
\latch[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(4) = (GLOBAL(\latch~0clkctrl_outclk\) & (\port_io[4]~4\)) # (!GLOBAL(\latch~0clkctrl_outclk\) & ((latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_io[4]~4\,
	datac => latch(4),
	datad => \latch~0clkctrl_outclk\,
	combout => latch(4));

-- Location: LCCOMB_X30_Y35_N12
\dbus_out[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[4]~13_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & (!tris_reg(4))) # (!\en_tris_addr~2_combout\ & ((latch(4)))))) # (!\rd_en~combout\ & (((latch(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => \en_tris_addr~2_combout\,
	datac => tris_reg(4),
	datad => latch(4),
	combout => \dbus_out[4]~13_combout\);

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[5]~I\ : cycloneii_io
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
	padio => ww_dbus_in(5),
	combout => \dbus_in~combout\(5));

-- Location: LCCOMB_X31_Y20_N10
\tris_reg[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[5]~6_combout\ = !\dbus_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(5),
	combout => \tris_reg[5]~6_combout\);

-- Location: LCFF_X31_Y20_N11
\tris_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[5]~6_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(5));

-- Location: LCCOMB_X29_Y4_N0
\latch[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(5) = (GLOBAL(\latch~0clkctrl_outclk\) & ((\port_io[5]~5\))) # (!GLOBAL(\latch~0clkctrl_outclk\) & (latch(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => latch(5),
	datac => \port_io[5]~5\,
	datad => \latch~0clkctrl_outclk\,
	combout => latch(5));

-- Location: LCCOMB_X30_Y35_N26
\dbus_out[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[5]~14_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & (!tris_reg(5))) # (!\en_tris_addr~2_combout\ & ((latch(5)))))) # (!\rd_en~combout\ & (((latch(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => \en_tris_addr~2_combout\,
	datac => tris_reg(5),
	datad => latch(5),
	combout => \dbus_out[5]~14_combout\);

-- Location: LCCOMB_X27_Y35_N12
\latch[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(6) = (GLOBAL(\latch~0clkctrl_outclk\) & ((\port_io[6]~6\))) # (!GLOBAL(\latch~0clkctrl_outclk\) & (latch(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => latch(6),
	datac => \port_io[6]~6\,
	datad => \latch~0clkctrl_outclk\,
	combout => latch(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[6]~I\ : cycloneii_io
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
	padio => ww_dbus_in(6),
	combout => \dbus_in~combout\(6));

-- Location: LCCOMB_X27_Y35_N16
\tris_reg[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[6]~7_combout\ = !\dbus_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(6),
	combout => \tris_reg[6]~7_combout\);

-- Location: LCFF_X27_Y35_N17
\tris_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[6]~7_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(6));

-- Location: LCCOMB_X27_Y35_N18
\dbus_out[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[6]~15_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & ((!tris_reg(6)))) # (!\en_tris_addr~2_combout\ & (latch(6))))) # (!\rd_en~combout\ & (latch(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => latch(6),
	datac => tris_reg(6),
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[6]~15_combout\);

-- Location: LCCOMB_X27_Y35_N30
\latch[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- latch(7) = (GLOBAL(\latch~0clkctrl_outclk\) & (\port_io[7]~7\)) # (!GLOBAL(\latch~0clkctrl_outclk\) & ((latch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_io[7]~7\,
	datac => latch(7),
	datad => \latch~0clkctrl_outclk\,
	combout => latch(7));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dbus_in[7]~I\ : cycloneii_io
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
	padio => ww_dbus_in(7),
	combout => \dbus_in~combout\(7));

-- Location: LCCOMB_X27_Y35_N4
\tris_reg[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tris_reg[7]~8_combout\ = !\dbus_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbus_in~combout\(7),
	combout => \tris_reg[7]~8_combout\);

-- Location: LCFF_X27_Y35_N5
\tris_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \tris_reg[7]~8_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \tris_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tris_reg(7));

-- Location: LCCOMB_X27_Y35_N6
\dbus_out[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dbus_out[7]~16_combout\ = (\rd_en~combout\ & ((\en_tris_addr~2_combout\ & ((!tris_reg(7)))) # (!\en_tris_addr~2_combout\ & (latch(7))))) # (!\rd_en~combout\ & (latch(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en~combout\,
	datab => latch(7),
	datac => tris_reg(7),
	datad => \en_tris_addr~2_combout\,
	combout => \dbus_out[7]~16_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cycloneii_io
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
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: CLKCTRL_G3
\clk_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y35_N2
\port_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[0]~feeder_combout\ = \dbus_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(0),
	combout => \port_reg[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y35_N22
\port_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[0]~0_combout\ = (\en_port_addr~0_combout\ & (\en_tris_addr~3_combout\ & (\en_port_addr~2_combout\ & \wr_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_port_addr~0_combout\,
	datab => \en_tris_addr~3_combout\,
	datac => \en_port_addr~2_combout\,
	datad => \wr_en~combout\,
	combout => \port_reg[0]~0_combout\);

-- Location: LCFF_X27_Y35_N3
\port_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[0]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(0));

-- Location: LCCOMB_X27_Y35_N28
\port_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[1]~feeder_combout\ = \dbus_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(1),
	combout => \port_reg[1]~feeder_combout\);

-- Location: LCFF_X27_Y35_N29
\port_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[1]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(1));

-- Location: LCCOMB_X27_Y35_N22
\port_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[2]~feeder_combout\ = \dbus_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(2),
	combout => \port_reg[2]~feeder_combout\);

-- Location: LCFF_X27_Y35_N23
\port_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[2]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(2));

-- Location: LCCOMB_X31_Y20_N12
\port_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[3]~feeder_combout\ = \dbus_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(3),
	combout => \port_reg[3]~feeder_combout\);

-- Location: LCFF_X31_Y20_N13
\port_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[3]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(3));

-- Location: LCFF_X31_Y20_N23
\port_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \dbus_in~combout\(4),
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	sload => VCC,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(4));

-- Location: LCCOMB_X31_Y20_N8
\port_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[5]~feeder_combout\ = \dbus_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(5),
	combout => \port_reg[5]~feeder_combout\);

-- Location: LCFF_X31_Y20_N9
\port_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[5]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(5));

-- Location: LCCOMB_X27_Y35_N0
\port_reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \port_reg[6]~feeder_combout\ = \dbus_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbus_in~combout\(6),
	combout => \port_reg[6]~feeder_combout\);

-- Location: LCFF_X27_Y35_N1
\port_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \port_reg[6]~feeder_combout\,
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(6));

-- Location: LCFF_X27_Y35_N27
\port_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \dbus_in~combout\(7),
	aclr => \ALT_INV_nrst~clkctrl_outclk\,
	sload => VCC,
	ena => \port_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => port_reg(7));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[0]~I\ : cycloneii_io
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
	datain => \dbus_out[0]~8_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[1]~I\ : cycloneii_io
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
	datain => \dbus_out[1]~10_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[2]~I\ : cycloneii_io
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
	datain => \dbus_out[2]~11_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[3]~I\ : cycloneii_io
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
	datain => \dbus_out[3]~12_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(3));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[4]~I\ : cycloneii_io
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
	datain => \dbus_out[4]~13_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(4));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[5]~I\ : cycloneii_io
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
	datain => \dbus_out[5]~14_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(5));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[6]~I\ : cycloneii_io
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
	datain => \dbus_out[6]~15_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(6));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dbus_out[7]~I\ : cycloneii_io
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
	datain => \dbus_out[7]~16_combout\,
	oe => \dbus_out[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_dbus_out(7));
END structure;


