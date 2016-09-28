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

-- DATE "09/28/2016 13:31:08"

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

ENTITY 	task2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_CLK : OUT std_logic
	);
END task2;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF task2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk1\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk2\ : std_logic;
SIGNAL \vga_u0|controller|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~17\ : std_logic;
SIGNAL \vga_u0|controller|Add1~18_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[9]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \y_axis|LessThan0~2_combout\ : std_logic;
SIGNAL \y_axis|y_value~0_combout\ : std_logic;
SIGNAL \y_axis|Add0~0_combout\ : std_logic;
SIGNAL \y_axis|y_value~6_combout\ : std_logic;
SIGNAL \y_axis|Add0~1\ : std_logic;
SIGNAL \y_axis|Add0~2_combout\ : std_logic;
SIGNAL \y_axis|y_value~5_combout\ : std_logic;
SIGNAL \y_axis|Add0~3\ : std_logic;
SIGNAL \y_axis|Add0~5\ : std_logic;
SIGNAL \y_axis|Add0~6_combout\ : std_logic;
SIGNAL \y_axis|y_value~3_combout\ : std_logic;
SIGNAL \y_axis|Add0~7\ : std_logic;
SIGNAL \y_axis|Add0~9\ : std_logic;
SIGNAL \y_axis|Add0~11\ : std_logic;
SIGNAL \y_axis|Add0~12_combout\ : std_logic;
SIGNAL \y_axis|y_value~4_combout\ : std_logic;
SIGNAL \y_axis|Add0~4_combout\ : std_logic;
SIGNAL \y_axis|LessThan0~0_combout\ : std_logic;
SIGNAL \y_axis|y_value~2_combout\ : std_logic;
SIGNAL \y_axis|Add0~8_combout\ : std_logic;
SIGNAL \y_axis|y_value~1_combout\ : std_logic;
SIGNAL \y_axis|Add0~10_combout\ : std_logic;
SIGNAL \y_axis|LessThan0~1_combout\ : std_logic;
SIGNAL \y_axis|ydone~regout\ : std_logic;
SIGNAL \vga_u0|writeEn~0_combout\ : std_logic;
SIGNAL \vga_u0|LessThan3~0_combout\ : std_logic;
SIGNAL \vga_u0|writeEn~1_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \vga_u0|controller|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|Add0~2_combout\ : std_logic;
SIGNAL \KEY[3]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[3]~clkctrl_outclk\ : std_logic;
SIGNAL \vga_u0|controller|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~15\ : std_logic;
SIGNAL \vga_u0|controller|Add0~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~17\ : std_logic;
SIGNAL \vga_u0|controller|Add0~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[4]~5_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[1]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[0]~9_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~1\ : std_logic;
SIGNAL \vga_u0|controller|Add1~3\ : std_logic;
SIGNAL \vga_u0|controller|Add1~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[2]~7_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~5\ : std_logic;
SIGNAL \vga_u0|controller|Add1~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[3]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~7\ : std_logic;
SIGNAL \vga_u0|controller|Add1~9\ : std_logic;
SIGNAL \vga_u0|controller|Add1~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[5]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[7]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~11\ : std_logic;
SIGNAL \vga_u0|controller|Add1~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[6]~3_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~13\ : std_logic;
SIGNAL \vga_u0|controller|Add1~15\ : std_logic;
SIGNAL \vga_u0|controller|Add1~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[8]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~3_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_R[0]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_G[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS~feeder_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS~feeder_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~regout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_u0|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \y_axis|y_value\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \y_axis|y_address\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_CLK <= ww_VGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \SW~combout\(4) & 
\SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);

\vga_u0|mypll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\vga_u0|mypll|altpll_component|_clk0\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(0);
\vga_u0|mypll|altpll_component|_clk1\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(1);
\vga_u0|mypll|altpll_component|_clk2\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(2);

\vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \vga_u0|mypll|altpll_component|_clk0\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\KEY[3]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[3]~clk_delay_ctrl_clkout\);
\ALT_INV_KEY[3]~clkctrl_outclk\ <= NOT \KEY[3]~clkctrl_outclk\;

-- Location: M4K_X52_Y25
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y24
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y23
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y27
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y27_N0
\vga_u0|controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~0_combout\ = \vga_u0|controller|xCounter\(0) $ (VCC)
-- \vga_u0|controller|Add0~1\ = CARRY(\vga_u0|controller|xCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add0~0_combout\,
	cout => \vga_u0|controller|Add0~1\);

-- Location: LCCOMB_X33_Y27_N8
\vga_u0|controller|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~2_combout\ = (\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|Add1~1\)) # (!\vga_u0|controller|yCounter\(1) & ((\vga_u0|controller|Add1~1\) # (GND)))
-- \vga_u0|controller|Add1~3\ = CARRY((!\vga_u0|controller|Add1~1\) # (!\vga_u0|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add1~1\,
	combout => \vga_u0|controller|Add1~2_combout\,
	cout => \vga_u0|controller|Add1~3\);

-- Location: LCCOMB_X33_Y27_N14
\vga_u0|controller|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~8_combout\ = (\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|Add1~7\ $ (GND))) # (!\vga_u0|controller|yCounter\(4) & (!\vga_u0|controller|Add1~7\ & VCC))
-- \vga_u0|controller|Add1~9\ = CARRY((\vga_u0|controller|yCounter\(4) & !\vga_u0|controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add1~7\,
	combout => \vga_u0|controller|Add1~8_combout\,
	cout => \vga_u0|controller|Add1~9\);

-- Location: LCCOMB_X33_Y27_N20
\vga_u0|controller|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~14_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|Add1~13\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|Add1~13\) # (GND)))
-- \vga_u0|controller|Add1~15\ = CARRY((!\vga_u0|controller|Add1~13\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add1~13\,
	combout => \vga_u0|controller|Add1~14_combout\,
	cout => \vga_u0|controller|Add1~15\);

-- Location: LCCOMB_X33_Y27_N22
\vga_u0|controller|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~16_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|Add1~15\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|Add1~15\ & VCC))
-- \vga_u0|controller|Add1~17\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add1~15\,
	combout => \vga_u0|controller|Add1~16_combout\,
	cout => \vga_u0|controller|Add1~17\);

-- Location: LCCOMB_X33_Y27_N24
\vga_u0|controller|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~18_combout\ = \vga_u0|controller|yCounter\(9) $ (\vga_u0|controller|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(9),
	cin => \vga_u0|controller|Add1~17\,
	combout => \vga_u0|controller|Add1~18_combout\);

-- Location: LCCOMB_X36_Y25_N20
\vga_u0|user_input_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~4_combout\ = ((\y_axis|y_address\(4) $ (\y_axis|y_address\(2) $ (!\vga_u0|user_input_translator|Add0~3\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~5\ = CARRY((\y_axis|y_address\(4) & ((\y_axis|y_address\(2)) # (!\vga_u0|user_input_translator|Add0~3\))) # (!\y_axis|y_address\(4) & (\y_axis|y_address\(2) & !\vga_u0|user_input_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(4),
	datab => \y_axis|y_address\(2),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~3\,
	combout => \vga_u0|user_input_translator|Add0~4_combout\,
	cout => \vga_u0|user_input_translator|Add0~5\);

-- Location: LCCOMB_X36_Y25_N28
\vga_u0|user_input_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~12_combout\ = (\y_axis|y_address\(6) & (\vga_u0|user_input_translator|Add0~11\ $ (GND))) # (!\y_axis|y_address\(6) & (!\vga_u0|user_input_translator|Add0~11\ & VCC))
-- \vga_u0|user_input_translator|Add0~13\ = CARRY((\y_axis|y_address\(6) & !\vga_u0|user_input_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_address\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~11\,
	combout => \vga_u0|user_input_translator|Add0~12_combout\,
	cout => \vga_u0|user_input_translator|Add0~13\);

-- Location: LCCOMB_X36_Y25_N30
\vga_u0|user_input_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~14_combout\ = \vga_u0|user_input_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|user_input_translator|Add0~13\,
	combout => \vga_u0|user_input_translator|Add0~14_combout\);

-- Location: LCCOMB_X34_Y27_N14
\vga_u0|controller|controller_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~0_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) $ (VCC))) # (!\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) & VCC))
-- \vga_u0|controller|controller_translator|Add0~1\ = CARRY((\vga_u0|controller|yCounter\(2) & \vga_u0|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|Add0~0_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~1\);

-- Location: LCCOMB_X34_Y27_N20
\vga_u0|controller|controller_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~6_combout\ = (\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|yCounter\(5) & (\vga_u0|controller|controller_translator|Add0~5\ & VCC)) # (!\vga_u0|controller|yCounter\(5) & 
-- (!\vga_u0|controller|controller_translator|Add0~5\)))) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((\vga_u0|controller|controller_translator|Add0~5\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~7\ = CARRY((\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|yCounter\(5) & !\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(7) & 
-- ((!\vga_u0|controller|controller_translator|Add0~5\) # (!\vga_u0|controller|yCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datab => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~5\,
	combout => \vga_u0|controller|controller_translator|Add0~6_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~7\);

-- Location: LCCOMB_X31_Y27_N24
\vga_u0|controller|on_screen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~0_combout\ = (!\vga_u0|controller|xCounter\(3) & (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|xCounter\(6) & !\vga_u0|controller|xCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(3),
	datab => \vga_u0|controller|xCounter\(2),
	datac => \vga_u0|controller|xCounter\(6),
	datad => \vga_u0|controller|xCounter\(5),
	combout => \vga_u0|controller|on_screen~0_combout\);

-- Location: LCFF_X32_Y27_N27
\vga_u0|controller|yCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[9]~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(9));

-- Location: LCCOMB_X27_Y27_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\,
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\);

-- Location: LCFF_X32_Y27_N1
\vga_u0|controller|xCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(0));

-- Location: LCCOMB_X31_Y27_N20
\vga_u0|controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~0_combout\ = (\vga_u0|controller|xCounter\(1) & (!\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|xCounter\(0) & !\vga_u0|controller|xCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datab => \vga_u0|controller|xCounter\(6),
	datac => \vga_u0|controller|xCounter\(0),
	datad => \vga_u0|controller|xCounter\(5),
	combout => \vga_u0|controller|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y27_N26
\vga_u0|controller|yCounter[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[9]~0_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~18_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~18_combout\,
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[9]~0_combout\);

-- Location: LCFF_X36_Y25_N13
\y_axis|y_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(5));

-- Location: LCCOMB_X31_Y27_N22
\vga_u0|controller|VGA_HS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~0_combout\ = (\vga_u0|controller|xCounter\(3)) # ((\vga_u0|controller|xCounter\(2)) # ((\vga_u0|controller|xCounter\(0) & \vga_u0|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(3),
	datab => \vga_u0|controller|xCounter\(2),
	datac => \vga_u0|controller|xCounter\(0),
	datad => \vga_u0|controller|xCounter\(1),
	combout => \vga_u0|controller|VGA_HS1~0_combout\);

-- Location: LCCOMB_X34_Y27_N6
\vga_u0|controller|VGA_VS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~1_combout\ = (\vga_u0|controller|yCounter\(9)) # ((\vga_u0|controller|yCounter\(4)) # ((!\vga_u0|controller|yCounter\(3)) # (!\vga_u0|controller|yCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(4),
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|yCounter\(3),
	combout => \vga_u0|controller|VGA_VS1~1_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X35_Y25_N30
\y_axis|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|LessThan0~2_combout\ = (!\y_axis|Add0~8_combout\) # (!\y_axis|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|Add0~10_combout\,
	datac => \y_axis|Add0~8_combout\,
	combout => \y_axis|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y25_N14
\y_axis|y_value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~0_combout\ = (\y_axis|Add0~12_combout\ & (((\y_axis|LessThan0~0_combout\) # (!\y_axis|Add0~8_combout\)) # (!\y_axis|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|Add0~12_combout\,
	datab => \y_axis|Add0~10_combout\,
	datac => \y_axis|Add0~8_combout\,
	datad => \y_axis|LessThan0~0_combout\,
	combout => \y_axis|y_value~0_combout\);

-- Location: LCFF_X35_Y25_N15
\y_axis|y_value[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(6));

-- Location: LCCOMB_X36_Y25_N2
\y_axis|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~0_combout\ = \y_axis|y_value\(0) $ (VCC)
-- \y_axis|Add0~1\ = CARRY(\y_axis|y_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(0),
	datad => VCC,
	combout => \y_axis|Add0~0_combout\,
	cout => \y_axis|Add0~1\);

-- Location: LCCOMB_X35_Y25_N26
\y_axis|y_value~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~6_combout\ = (\y_axis|Add0~0_combout\ & ((\y_axis|LessThan0~0_combout\) # ((\y_axis|LessThan0~2_combout\) # (!\y_axis|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|LessThan0~0_combout\,
	datab => \y_axis|LessThan0~2_combout\,
	datac => \y_axis|Add0~12_combout\,
	datad => \y_axis|Add0~0_combout\,
	combout => \y_axis|y_value~6_combout\);

-- Location: LCFF_X35_Y25_N27
\y_axis|y_value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(0));

-- Location: LCCOMB_X36_Y25_N4
\y_axis|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~2_combout\ = (\y_axis|y_value\(1) & (!\y_axis|Add0~1\)) # (!\y_axis|y_value\(1) & ((\y_axis|Add0~1\) # (GND)))
-- \y_axis|Add0~3\ = CARRY((!\y_axis|Add0~1\) # (!\y_axis|y_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(1),
	datad => VCC,
	cin => \y_axis|Add0~1\,
	combout => \y_axis|Add0~2_combout\,
	cout => \y_axis|Add0~3\);

-- Location: LCCOMB_X35_Y25_N24
\y_axis|y_value~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~5_combout\ = (\y_axis|Add0~2_combout\ & ((\y_axis|LessThan0~0_combout\) # ((\y_axis|LessThan0~2_combout\) # (!\y_axis|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|LessThan0~0_combout\,
	datab => \y_axis|LessThan0~2_combout\,
	datac => \y_axis|Add0~12_combout\,
	datad => \y_axis|Add0~2_combout\,
	combout => \y_axis|y_value~5_combout\);

-- Location: LCFF_X35_Y25_N25
\y_axis|y_value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(1));

-- Location: LCCOMB_X36_Y25_N6
\y_axis|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~4_combout\ = (\y_axis|y_value\(2) & (\y_axis|Add0~3\ $ (GND))) # (!\y_axis|y_value\(2) & (!\y_axis|Add0~3\ & VCC))
-- \y_axis|Add0~5\ = CARRY((\y_axis|y_value\(2) & !\y_axis|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(2),
	datad => VCC,
	cin => \y_axis|Add0~3\,
	combout => \y_axis|Add0~4_combout\,
	cout => \y_axis|Add0~5\);

-- Location: LCCOMB_X36_Y25_N8
\y_axis|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~6_combout\ = (\y_axis|y_value\(3) & (!\y_axis|Add0~5\)) # (!\y_axis|y_value\(3) & ((\y_axis|Add0~5\) # (GND)))
-- \y_axis|Add0~7\ = CARRY((!\y_axis|Add0~5\) # (!\y_axis|y_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(3),
	datad => VCC,
	cin => \y_axis|Add0~5\,
	combout => \y_axis|Add0~6_combout\,
	cout => \y_axis|Add0~7\);

-- Location: LCCOMB_X35_Y25_N4
\y_axis|y_value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~3_combout\ = (\y_axis|Add0~6_combout\ & ((\y_axis|LessThan0~0_combout\) # ((\y_axis|LessThan0~2_combout\) # (!\y_axis|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|LessThan0~0_combout\,
	datab => \y_axis|Add0~12_combout\,
	datac => \y_axis|Add0~6_combout\,
	datad => \y_axis|LessThan0~2_combout\,
	combout => \y_axis|y_value~3_combout\);

-- Location: LCFF_X35_Y25_N5
\y_axis|y_value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(3));

-- Location: LCCOMB_X36_Y25_N10
\y_axis|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~8_combout\ = (\y_axis|y_value\(4) & (\y_axis|Add0~7\ $ (GND))) # (!\y_axis|y_value\(4) & (!\y_axis|Add0~7\ & VCC))
-- \y_axis|Add0~9\ = CARRY((\y_axis|y_value\(4) & !\y_axis|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(4),
	datad => VCC,
	cin => \y_axis|Add0~7\,
	combout => \y_axis|Add0~8_combout\,
	cout => \y_axis|Add0~9\);

-- Location: LCCOMB_X36_Y25_N12
\y_axis|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~10_combout\ = (\y_axis|y_value\(5) & (!\y_axis|Add0~9\)) # (!\y_axis|y_value\(5) & ((\y_axis|Add0~9\) # (GND)))
-- \y_axis|Add0~11\ = CARRY((!\y_axis|Add0~9\) # (!\y_axis|y_value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_axis|y_value\(5),
	datad => VCC,
	cin => \y_axis|Add0~9\,
	combout => \y_axis|Add0~10_combout\,
	cout => \y_axis|Add0~11\);

-- Location: LCCOMB_X36_Y25_N14
\y_axis|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|Add0~12_combout\ = \y_axis|Add0~11\ $ (!\y_axis|y_value\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \y_axis|y_value\(6),
	cin => \y_axis|Add0~11\,
	combout => \y_axis|Add0~12_combout\);

-- Location: LCCOMB_X35_Y25_N22
\y_axis|y_value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~4_combout\ = (\y_axis|Add0~4_combout\ & ((\y_axis|LessThan0~0_combout\) # ((\y_axis|LessThan0~2_combout\) # (!\y_axis|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|LessThan0~0_combout\,
	datab => \y_axis|LessThan0~2_combout\,
	datac => \y_axis|Add0~12_combout\,
	datad => \y_axis|Add0~4_combout\,
	combout => \y_axis|y_value~4_combout\);

-- Location: LCFF_X35_Y25_N23
\y_axis|y_value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(2));

-- Location: LCCOMB_X35_Y25_N12
\y_axis|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|LessThan0~0_combout\ = (!\y_axis|Add0~6_combout\ & (((!\y_axis|Add0~0_combout\) # (!\y_axis|Add0~4_combout\)) # (!\y_axis|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|Add0~2_combout\,
	datab => \y_axis|Add0~4_combout\,
	datac => \y_axis|Add0~6_combout\,
	datad => \y_axis|Add0~0_combout\,
	combout => \y_axis|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y25_N18
\y_axis|y_value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~2_combout\ = (\y_axis|Add0~8_combout\ & (((\y_axis|LessThan0~0_combout\) # (!\y_axis|Add0~10_combout\)) # (!\y_axis|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|Add0~12_combout\,
	datab => \y_axis|Add0~10_combout\,
	datac => \y_axis|Add0~8_combout\,
	datad => \y_axis|LessThan0~0_combout\,
	combout => \y_axis|y_value~2_combout\);

-- Location: LCFF_X35_Y25_N19
\y_axis|y_value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(4));

-- Location: LCCOMB_X35_Y25_N16
\y_axis|y_value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|y_value~1_combout\ = (\y_axis|Add0~10_combout\ & (((\y_axis|LessThan0~0_combout\) # (!\y_axis|Add0~8_combout\)) # (!\y_axis|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|Add0~12_combout\,
	datab => \y_axis|Add0~10_combout\,
	datac => \y_axis|Add0~8_combout\,
	datad => \y_axis|LessThan0~0_combout\,
	combout => \y_axis|y_value~1_combout\);

-- Location: LCFF_X35_Y25_N17
\y_axis|y_value[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|y_value~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_value\(5));

-- Location: LCCOMB_X35_Y25_N8
\y_axis|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_axis|LessThan0~1_combout\ = (\y_axis|Add0~12_combout\ & (\y_axis|Add0~10_combout\ & (\y_axis|Add0~8_combout\ & !\y_axis|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|Add0~12_combout\,
	datab => \y_axis|Add0~10_combout\,
	datac => \y_axis|Add0~8_combout\,
	datad => \y_axis|LessThan0~0_combout\,
	combout => \y_axis|LessThan0~1_combout\);

-- Location: LCFF_X35_Y25_N9
\y_axis|ydone\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|ydone~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X35_Y25_N2
\vga_u0|writeEn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|writeEn~0_combout\ = (!\y_axis|ydone~regout\ & (((!\SW~combout\(6) & !\SW~combout\(5))) # (!\SW~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(5),
	datac => \y_axis|ydone~regout\,
	datad => \SW~combout\(7),
	combout => \vga_u0|writeEn~0_combout\);

-- Location: LCFF_X36_Y25_N15
\y_axis|y_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(6));

-- Location: LCFF_X36_Y25_N9
\y_axis|y_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(3));

-- Location: LCFF_X36_Y25_N11
\y_axis|y_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(4));

-- Location: LCCOMB_X36_Y25_N0
\vga_u0|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|LessThan3~0_combout\ = (((!\y_axis|y_address\(4)) # (!\y_axis|y_address\(3))) # (!\y_axis|y_address\(6))) # (!\y_axis|y_address\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(5),
	datab => \y_axis|y_address\(6),
	datac => \y_axis|y_address\(3),
	datad => \y_axis|y_address\(4),
	combout => \vga_u0|LessThan3~0_combout\);

-- Location: LCCOMB_X35_Y25_N20
\vga_u0|writeEn~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|writeEn~1_combout\ = (\vga_u0|writeEn~0_combout\ & \vga_u0|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|writeEn~0_combout\,
	datac => \vga_u0|LessThan3~0_combout\,
	combout => \vga_u0|writeEn~1_combout\);

-- Location: LCFF_X36_Y25_N7
\y_axis|y_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(2));

-- Location: LCFF_X36_Y25_N17
\y_axis|y_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \y_axis|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(0));

-- Location: LCCOMB_X36_Y25_N16
\vga_u0|user_input_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~0_combout\ = (\y_axis|y_address\(2) & (\y_axis|y_address\(0) $ (VCC))) # (!\y_axis|y_address\(2) & (\y_axis|y_address\(0) & VCC))
-- \vga_u0|user_input_translator|Add0~1\ = CARRY((\y_axis|y_address\(2) & \y_axis|y_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(2),
	datab => \y_axis|y_address\(0),
	datad => VCC,
	combout => \vga_u0|user_input_translator|Add0~0_combout\,
	cout => \vga_u0|user_input_translator|Add0~1\);

-- Location: LCCOMB_X36_Y25_N18
\vga_u0|user_input_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~2_combout\ = (\y_axis|y_address\(1) & ((\y_axis|y_address\(3) & (\vga_u0|user_input_translator|Add0~1\ & VCC)) # (!\y_axis|y_address\(3) & (!\vga_u0|user_input_translator|Add0~1\)))) # (!\y_axis|y_address\(1) & 
-- ((\y_axis|y_address\(3) & (!\vga_u0|user_input_translator|Add0~1\)) # (!\y_axis|y_address\(3) & ((\vga_u0|user_input_translator|Add0~1\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~3\ = CARRY((\y_axis|y_address\(1) & (!\y_axis|y_address\(3) & !\vga_u0|user_input_translator|Add0~1\)) # (!\y_axis|y_address\(1) & ((!\vga_u0|user_input_translator|Add0~1\) # (!\y_axis|y_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(1),
	datab => \y_axis|y_address\(3),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~1\,
	combout => \vga_u0|user_input_translator|Add0~2_combout\,
	cout => \vga_u0|user_input_translator|Add0~3\);

-- Location: LCCOMB_X36_Y25_N22
\vga_u0|user_input_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~6_combout\ = (\y_axis|y_address\(5) & ((\y_axis|y_address\(3) & (\vga_u0|user_input_translator|Add0~5\ & VCC)) # (!\y_axis|y_address\(3) & (!\vga_u0|user_input_translator|Add0~5\)))) # (!\y_axis|y_address\(5) & 
-- ((\y_axis|y_address\(3) & (!\vga_u0|user_input_translator|Add0~5\)) # (!\y_axis|y_address\(3) & ((\vga_u0|user_input_translator|Add0~5\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~7\ = CARRY((\y_axis|y_address\(5) & (!\y_axis|y_address\(3) & !\vga_u0|user_input_translator|Add0~5\)) # (!\y_axis|y_address\(5) & ((!\vga_u0|user_input_translator|Add0~5\) # (!\y_axis|y_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(5),
	datab => \y_axis|y_address\(3),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~5\,
	combout => \vga_u0|user_input_translator|Add0~6_combout\,
	cout => \vga_u0|user_input_translator|Add0~7\);

-- Location: LCCOMB_X36_Y25_N24
\vga_u0|user_input_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~8_combout\ = ((\y_axis|y_address\(4) $ (\y_axis|y_address\(6) $ (!\vga_u0|user_input_translator|Add0~7\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~9\ = CARRY((\y_axis|y_address\(4) & ((\y_axis|y_address\(6)) # (!\vga_u0|user_input_translator|Add0~7\))) # (!\y_axis|y_address\(4) & (\y_axis|y_address\(6) & !\vga_u0|user_input_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(4),
	datab => \y_axis|y_address\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~7\,
	combout => \vga_u0|user_input_translator|Add0~8_combout\,
	cout => \vga_u0|user_input_translator|Add0~9\);

-- Location: LCCOMB_X36_Y25_N26
\vga_u0|user_input_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~10_combout\ = (\y_axis|y_address\(5) & (!\vga_u0|user_input_translator|Add0~9\)) # (!\y_axis|y_address\(5) & ((\vga_u0|user_input_translator|Add0~9\) # (GND)))
-- \vga_u0|user_input_translator|Add0~11\ = CARRY((!\vga_u0|user_input_translator|Add0~9\) # (!\y_axis|y_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis|y_address\(5),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~9\,
	combout => \vga_u0|user_input_translator|Add0~10_combout\,
	cout => \vga_u0|user_input_translator|Add0~11\);

-- Location: LCFF_X36_Y25_N5
\y_axis|y_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \y_axis|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_axis|y_address\(1));

-- Location: LCCOMB_X37_Y25_N10
\vga_u0|user_input_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[5]~0_combout\ = (\SW~combout\(5) & (\y_axis|y_address\(0) $ (VCC))) # (!\SW~combout\(5) & (\y_axis|y_address\(0) & VCC))
-- \vga_u0|user_input_translator|mem_address[5]~1\ = CARRY((\SW~combout\(5) & \y_axis|y_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \y_axis|y_address\(0),
	datad => VCC,
	combout => \vga_u0|user_input_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|user_input_translator|mem_address[5]~1\);

-- Location: LCCOMB_X37_Y25_N12
\vga_u0|user_input_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[6]~2_combout\ = (\SW~combout\(6) & ((\y_axis|y_address\(1) & (\vga_u0|user_input_translator|mem_address[5]~1\ & VCC)) # (!\y_axis|y_address\(1) & (!\vga_u0|user_input_translator|mem_address[5]~1\)))) # 
-- (!\SW~combout\(6) & ((\y_axis|y_address\(1) & (!\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\y_axis|y_address\(1) & ((\vga_u0|user_input_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|user_input_translator|mem_address[6]~3\ = CARRY((\SW~combout\(6) & (!\y_axis|y_address\(1) & !\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\SW~combout\(6) & ((!\vga_u0|user_input_translator|mem_address[5]~1\) # (!\y_axis|y_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \y_axis|y_address\(1),
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[5]~1\,
	combout => \vga_u0|user_input_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|user_input_translator|mem_address[6]~3\);

-- Location: LCCOMB_X37_Y25_N14
\vga_u0|user_input_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[7]~4_combout\ = ((\SW~combout\(7) $ (\vga_u0|user_input_translator|Add0~0_combout\ $ (!\vga_u0|user_input_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|user_input_translator|mem_address[7]~5\ = CARRY((\SW~combout\(7) & ((\vga_u0|user_input_translator|Add0~0_combout\) # (!\vga_u0|user_input_translator|mem_address[6]~3\))) # (!\SW~combout\(7) & (\vga_u0|user_input_translator|Add0~0_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \vga_u0|user_input_translator|Add0~0_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[6]~3\,
	combout => \vga_u0|user_input_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|user_input_translator|mem_address[7]~5\);

-- Location: LCCOMB_X37_Y25_N16
\vga_u0|user_input_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[8]~6_combout\ = (\vga_u0|user_input_translator|Add0~2_combout\ & (!\vga_u0|user_input_translator|mem_address[7]~5\)) # (!\vga_u0|user_input_translator|Add0~2_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[8]~7\ = CARRY((!\vga_u0|user_input_translator|mem_address[7]~5\) # (!\vga_u0|user_input_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[7]~5\,
	combout => \vga_u0|user_input_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|user_input_translator|mem_address[8]~7\);

-- Location: LCCOMB_X37_Y25_N18
\vga_u0|user_input_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[9]~8_combout\ = (\vga_u0|user_input_translator|Add0~4_combout\ & (\vga_u0|user_input_translator|mem_address[8]~7\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~4_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|user_input_translator|mem_address[9]~9\ = CARRY((\vga_u0|user_input_translator|Add0~4_combout\ & !\vga_u0|user_input_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[8]~7\,
	combout => \vga_u0|user_input_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|user_input_translator|mem_address[9]~9\);

-- Location: LCCOMB_X37_Y25_N20
\vga_u0|user_input_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[10]~10_combout\ = (\vga_u0|user_input_translator|Add0~6_combout\ & (!\vga_u0|user_input_translator|mem_address[9]~9\)) # (!\vga_u0|user_input_translator|Add0~6_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[10]~11\ = CARRY((!\vga_u0|user_input_translator|mem_address[9]~9\) # (!\vga_u0|user_input_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[9]~9\,
	combout => \vga_u0|user_input_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|user_input_translator|mem_address[10]~11\);

-- Location: LCCOMB_X37_Y25_N22
\vga_u0|user_input_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[11]~12_combout\ = (\vga_u0|user_input_translator|Add0~8_combout\ & (\vga_u0|user_input_translator|mem_address[10]~11\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~8_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|user_input_translator|mem_address[11]~13\ = CARRY((\vga_u0|user_input_translator|Add0~8_combout\ & !\vga_u0|user_input_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[10]~11\,
	combout => \vga_u0|user_input_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|user_input_translator|mem_address[11]~13\);

-- Location: LCCOMB_X37_Y25_N24
\vga_u0|user_input_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[12]~14_combout\ = (\vga_u0|user_input_translator|Add0~10_combout\ & (!\vga_u0|user_input_translator|mem_address[11]~13\)) # (!\vga_u0|user_input_translator|Add0~10_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[12]~15\ = CARRY((!\vga_u0|user_input_translator|mem_address[11]~13\) # (!\vga_u0|user_input_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[11]~13\,
	combout => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|user_input_translator|mem_address[12]~15\);

-- Location: LCCOMB_X37_Y25_N26
\vga_u0|user_input_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\ = (\vga_u0|user_input_translator|Add0~12_combout\ & (\vga_u0|user_input_translator|mem_address[12]~15\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~12_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|user_input_translator|mem_address[13]~17\ = CARRY((\vga_u0|user_input_translator|Add0~12_combout\ & !\vga_u0|user_input_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[12]~15\,
	combout => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|user_input_translator|mem_address[13]~17\);

-- Location: LCCOMB_X35_Y25_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3) = (\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datab => \vga_u0|writeEn~1_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PLL_1
\vga_u0|mypll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 16,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \vga_u0|mypll|altpll_component|pll_INCLK_bus\,
	clk => \vga_u0|mypll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\vga_u0|mypll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y27_N2
\vga_u0|controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~2_combout\ = (\vga_u0|controller|xCounter\(1) & (!\vga_u0|controller|Add0~1\)) # (!\vga_u0|controller|xCounter\(1) & ((\vga_u0|controller|Add0~1\) # (GND)))
-- \vga_u0|controller|Add0~3\ = CARRY((!\vga_u0|controller|Add0~1\) # (!\vga_u0|controller|xCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add0~1\,
	combout => \vga_u0|controller|Add0~2_combout\,
	cout => \vga_u0|controller|Add0~3\);

-- Location: CLKDELAYCTRL_G7
\KEY[3]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[3]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\KEY[3]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[3]~clkctrl_outclk\);

-- Location: LCFF_X32_Y27_N3
\vga_u0|controller|xCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(1));

-- Location: LCCOMB_X32_Y27_N4
\vga_u0|controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~4_combout\ = (\vga_u0|controller|xCounter\(2) & (\vga_u0|controller|Add0~3\ $ (GND))) # (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|Add0~3\ & VCC))
-- \vga_u0|controller|Add0~5\ = CARRY((\vga_u0|controller|xCounter\(2) & !\vga_u0|controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add0~3\,
	combout => \vga_u0|controller|Add0~4_combout\,
	cout => \vga_u0|controller|Add0~5\);

-- Location: LCFF_X32_Y27_N5
\vga_u0|controller|xCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~4_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(2));

-- Location: LCCOMB_X32_Y27_N6
\vga_u0|controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~6_combout\ = (\vga_u0|controller|xCounter\(3) & (!\vga_u0|controller|Add0~5\)) # (!\vga_u0|controller|xCounter\(3) & ((\vga_u0|controller|Add0~5\) # (GND)))
-- \vga_u0|controller|Add0~7\ = CARRY((!\vga_u0|controller|Add0~5\) # (!\vga_u0|controller|xCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add0~5\,
	combout => \vga_u0|controller|Add0~6_combout\,
	cout => \vga_u0|controller|Add0~7\);

-- Location: LCCOMB_X32_Y27_N8
\vga_u0|controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~8_combout\ = (\vga_u0|controller|xCounter\(4) & (\vga_u0|controller|Add0~7\ $ (GND))) # (!\vga_u0|controller|xCounter\(4) & (!\vga_u0|controller|Add0~7\ & VCC))
-- \vga_u0|controller|Add0~9\ = CARRY((\vga_u0|controller|xCounter\(4) & !\vga_u0|controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add0~7\,
	combout => \vga_u0|controller|Add0~8_combout\,
	cout => \vga_u0|controller|Add0~9\);

-- Location: LCFF_X32_Y27_N9
\vga_u0|controller|xCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(4));

-- Location: LCCOMB_X32_Y27_N10
\vga_u0|controller|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~10_combout\ = (\vga_u0|controller|xCounter\(5) & (!\vga_u0|controller|Add0~9\)) # (!\vga_u0|controller|xCounter\(5) & ((\vga_u0|controller|Add0~9\) # (GND)))
-- \vga_u0|controller|Add0~11\ = CARRY((!\vga_u0|controller|Add0~9\) # (!\vga_u0|controller|xCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add0~9\,
	combout => \vga_u0|controller|Add0~10_combout\,
	cout => \vga_u0|controller|Add0~11\);

-- Location: LCCOMB_X32_Y27_N12
\vga_u0|controller|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~12_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|Add0~11\ $ (GND))) # (!\vga_u0|controller|xCounter\(6) & (!\vga_u0|controller|Add0~11\ & VCC))
-- \vga_u0|controller|Add0~13\ = CARRY((\vga_u0|controller|xCounter\(6) & !\vga_u0|controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add0~11\,
	combout => \vga_u0|controller|Add0~12_combout\,
	cout => \vga_u0|controller|Add0~13\);

-- Location: LCCOMB_X32_Y27_N14
\vga_u0|controller|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~14_combout\ = (\vga_u0|controller|xCounter\(7) & (!\vga_u0|controller|Add0~13\)) # (!\vga_u0|controller|xCounter\(7) & ((\vga_u0|controller|Add0~13\) # (GND)))
-- \vga_u0|controller|Add0~15\ = CARRY((!\vga_u0|controller|Add0~13\) # (!\vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add0~13\,
	combout => \vga_u0|controller|Add0~14_combout\,
	cout => \vga_u0|controller|Add0~15\);

-- Location: LCFF_X32_Y27_N15
\vga_u0|controller|xCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~14_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(7));

-- Location: LCCOMB_X32_Y27_N16
\vga_u0|controller|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~16_combout\ = (\vga_u0|controller|xCounter\(8) & (\vga_u0|controller|Add0~15\ $ (GND))) # (!\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|Add0~15\ & VCC))
-- \vga_u0|controller|Add0~17\ = CARRY((\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add0~15\,
	combout => \vga_u0|controller|Add0~16_combout\,
	cout => \vga_u0|controller|Add0~17\);

-- Location: LCCOMB_X32_Y27_N22
\vga_u0|controller|xCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~1_combout\ = (\vga_u0|controller|Add0~16_combout\ & !\vga_u0|controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_u0|controller|Add0~16_combout\,
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|xCounter~1_combout\);

-- Location: LCFF_X32_Y27_N23
\vga_u0|controller|xCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(8));

-- Location: LCCOMB_X32_Y27_N18
\vga_u0|controller|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~18_combout\ = \vga_u0|controller|xCounter\(9) $ (\vga_u0|controller|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	cin => \vga_u0|controller|Add0~17\,
	combout => \vga_u0|controller|Add0~18_combout\);

-- Location: LCCOMB_X32_Y27_N24
\vga_u0|controller|xCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~2_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~18_combout\,
	combout => \vga_u0|controller|xCounter~2_combout\);

-- Location: LCFF_X32_Y27_N25
\vga_u0|controller|xCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(9));

-- Location: LCCOMB_X31_Y27_N30
\vga_u0|controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~1_combout\ = (\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|xCounter\(7) & (\vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|xCounter\(7),
	datac => \vga_u0|controller|xCounter\(4),
	datad => \vga_u0|controller|xCounter\(9),
	combout => \vga_u0|controller|Equal0~1_combout\);

-- Location: LCFF_X32_Y27_N7
\vga_u0|controller|xCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~6_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(3));

-- Location: LCCOMB_X31_Y27_N8
\vga_u0|controller|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~2_combout\ = (\vga_u0|controller|Equal0~0_combout\ & (\vga_u0|controller|Equal0~1_combout\ & (\vga_u0|controller|xCounter\(2) & \vga_u0|controller|xCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~0_combout\,
	datab => \vga_u0|controller|Equal0~1_combout\,
	datac => \vga_u0|controller|xCounter\(2),
	datad => \vga_u0|controller|xCounter\(3),
	combout => \vga_u0|controller|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y27_N28
\vga_u0|controller|yCounter[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[4]~5_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~8_combout\ & (!\vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~8_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(4),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[4]~5_combout\);

-- Location: LCFF_X33_Y27_N29
\vga_u0|controller|yCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[4]~5_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(4));

-- Location: LCCOMB_X33_Y27_N4
\vga_u0|controller|yCounter[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[1]~8_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~2_combout\ & (!\vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~2_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(1),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[1]~8_combout\);

-- Location: LCFF_X33_Y27_N5
\vga_u0|controller|yCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[1]~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(1));

-- Location: LCCOMB_X33_Y27_N6
\vga_u0|controller|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~0_combout\ = \vga_u0|controller|yCounter\(0) $ (VCC)
-- \vga_u0|controller|Add1~1\ = CARRY(\vga_u0|controller|yCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add1~0_combout\,
	cout => \vga_u0|controller|Add1~1\);

-- Location: LCCOMB_X33_Y27_N30
\vga_u0|controller|yCounter[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[0]~9_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (!\vga_u0|controller|always1~2_combout\ & ((\vga_u0|controller|Add1~0_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|Add1~0_combout\,
	combout => \vga_u0|controller|yCounter[0]~9_combout\);

-- Location: LCFF_X33_Y27_N31
\vga_u0|controller|yCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[0]~9_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(0));

-- Location: LCCOMB_X33_Y27_N10
\vga_u0|controller|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~4_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|Add1~3\ $ (GND))) # (!\vga_u0|controller|yCounter\(2) & (!\vga_u0|controller|Add1~3\ & VCC))
-- \vga_u0|controller|Add1~5\ = CARRY((\vga_u0|controller|yCounter\(2) & !\vga_u0|controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add1~3\,
	combout => \vga_u0|controller|Add1~4_combout\,
	cout => \vga_u0|controller|Add1~5\);

-- Location: LCCOMB_X32_Y27_N28
\vga_u0|controller|yCounter[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[2]~7_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~4_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~4_combout\,
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[2]~7_combout\);

-- Location: LCFF_X32_Y27_N29
\vga_u0|controller|yCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[2]~7_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(2));

-- Location: LCCOMB_X33_Y27_N12
\vga_u0|controller|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~6_combout\ = (\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|Add1~5\)) # (!\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|Add1~5\) # (GND)))
-- \vga_u0|controller|Add1~7\ = CARRY((!\vga_u0|controller|Add1~5\) # (!\vga_u0|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add1~5\,
	combout => \vga_u0|controller|Add1~6_combout\,
	cout => \vga_u0|controller|Add1~7\);

-- Location: LCCOMB_X33_Y27_N26
\vga_u0|controller|yCounter[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[3]~6_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (!\vga_u0|controller|always1~2_combout\ & ((\vga_u0|controller|Add1~6_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(3),
	datad => \vga_u0|controller|Add1~6_combout\,
	combout => \vga_u0|controller|yCounter[3]~6_combout\);

-- Location: LCFF_X33_Y27_N27
\vga_u0|controller|yCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[3]~6_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(3));

-- Location: LCCOMB_X34_Y27_N30
\vga_u0|controller|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~0_combout\ = (\vga_u0|controller|yCounter\(9) & (!\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|yCounter\(2) & \vga_u0|controller|yCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(4),
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|yCounter\(3),
	combout => \vga_u0|controller|always1~0_combout\);

-- Location: LCCOMB_X34_Y27_N8
\vga_u0|controller|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~1_combout\ = (!\vga_u0|controller|yCounter\(0) & (!\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|yCounter\(7) & !\vga_u0|controller|yCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(0),
	datab => \vga_u0|controller|yCounter\(1),
	datac => \vga_u0|controller|yCounter\(7),
	datad => \vga_u0|controller|yCounter\(8),
	combout => \vga_u0|controller|always1~1_combout\);

-- Location: LCCOMB_X33_Y27_N16
\vga_u0|controller|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~10_combout\ = (\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|Add1~9\)) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|Add1~9\) # (GND)))
-- \vga_u0|controller|Add1~11\ = CARRY((!\vga_u0|controller|Add1~9\) # (!\vga_u0|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add1~9\,
	combout => \vga_u0|controller|Add1~10_combout\,
	cout => \vga_u0|controller|Add1~11\);

-- Location: LCCOMB_X34_Y27_N2
\vga_u0|controller|yCounter[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[5]~4_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~10_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~10_combout\,
	datac => \vga_u0|controller|yCounter\(5),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[5]~4_combout\);

-- Location: LCFF_X34_Y27_N3
\vga_u0|controller|yCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[5]~4_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(5));

-- Location: LCCOMB_X34_Y27_N10
\vga_u0|controller|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~2_combout\ = (!\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|always1~0_combout\ & (\vga_u0|controller|always1~1_combout\ & !\vga_u0|controller|yCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|always1~0_combout\,
	datac => \vga_u0|controller|always1~1_combout\,
	datad => \vga_u0|controller|yCounter\(5),
	combout => \vga_u0|controller|always1~2_combout\);

-- Location: LCCOMB_X33_Y27_N0
\vga_u0|controller|yCounter[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[7]~2_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~14_combout\ & (!\vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~14_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(7),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[7]~2_combout\);

-- Location: LCFF_X33_Y27_N1
\vga_u0|controller|yCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[7]~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(7));

-- Location: LCCOMB_X33_Y27_N18
\vga_u0|controller|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~12_combout\ = (\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|Add1~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(6) & (!\vga_u0|controller|Add1~11\ & VCC))
-- \vga_u0|controller|Add1~13\ = CARRY((\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add1~11\,
	combout => \vga_u0|controller|Add1~12_combout\,
	cout => \vga_u0|controller|Add1~13\);

-- Location: LCCOMB_X33_Y27_N2
\vga_u0|controller|yCounter[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[6]~3_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (!\vga_u0|controller|always1~2_combout\ & ((\vga_u0|controller|Add1~12_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(6),
	datad => \vga_u0|controller|Add1~12_combout\,
	combout => \vga_u0|controller|yCounter[6]~3_combout\);

-- Location: LCFF_X33_Y27_N3
\vga_u0|controller|yCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[6]~3_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(6));

-- Location: LCCOMB_X34_Y27_N0
\vga_u0|controller|yCounter[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[8]~1_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~16_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~16_combout\,
	datac => \vga_u0|controller|yCounter\(8),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[8]~1_combout\);

-- Location: LCFF_X34_Y27_N1
\vga_u0|controller|yCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[8]~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(8));

-- Location: LCCOMB_X34_Y27_N16
\vga_u0|controller|controller_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~2_combout\ = (\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|yCounter\(5) & (\vga_u0|controller|controller_translator|Add0~1\ & VCC)) # (!\vga_u0|controller|yCounter\(5) & 
-- (!\vga_u0|controller|controller_translator|Add0~1\)))) # (!\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((\vga_u0|controller|controller_translator|Add0~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~3\ = CARRY((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|yCounter\(5) & !\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((!\vga_u0|controller|controller_translator|Add0~1\) # (!\vga_u0|controller|yCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(3),
	datab => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~1\,
	combout => \vga_u0|controller|controller_translator|Add0~2_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~3\);

-- Location: LCCOMB_X34_Y27_N18
\vga_u0|controller|controller_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~4_combout\ = ((\vga_u0|controller|yCounter\(6) $ (\vga_u0|controller|yCounter\(4) $ (!\vga_u0|controller|controller_translator|Add0~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~5\ = CARRY((\vga_u0|controller|yCounter\(6) & ((\vga_u0|controller|yCounter\(4)) # (!\vga_u0|controller|controller_translator|Add0~3\))) # (!\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(4) & 
-- !\vga_u0|controller|controller_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~3\,
	combout => \vga_u0|controller|controller_translator|Add0~4_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~5\);

-- Location: LCCOMB_X34_Y27_N22
\vga_u0|controller|controller_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~8_combout\ = ((\vga_u0|controller|yCounter\(6) $ (\vga_u0|controller|yCounter\(8) $ (!\vga_u0|controller|controller_translator|Add0~7\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~9\ = CARRY((\vga_u0|controller|yCounter\(6) & ((\vga_u0|controller|yCounter\(8)) # (!\vga_u0|controller|controller_translator|Add0~7\))) # (!\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(8) & 
-- !\vga_u0|controller|controller_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~7\,
	combout => \vga_u0|controller|controller_translator|Add0~8_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~9\);

-- Location: LCCOMB_X34_Y27_N24
\vga_u0|controller|controller_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~10_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|controller_translator|Add0~9\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|controller_translator|Add0~9\) # (GND)))
-- \vga_u0|controller|controller_translator|Add0~11\ = CARRY((!\vga_u0|controller|controller_translator|Add0~9\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~9\,
	combout => \vga_u0|controller|controller_translator|Add0~10_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~11\);

-- Location: LCCOMB_X34_Y27_N26
\vga_u0|controller|controller_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~12_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|controller_translator|Add0~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|controller_translator|Add0~11\ & VCC))
-- \vga_u0|controller|controller_translator|Add0~13\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|controller_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~11\,
	combout => \vga_u0|controller|controller_translator|Add0~12_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~13\);

-- Location: LCCOMB_X35_Y27_N12
\vga_u0|controller|controller_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|xCounter\(7) $ (VCC))) # (!\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|xCounter\(7) & VCC))
-- \vga_u0|controller|controller_translator|mem_address[5]~1\ = CARRY((\vga_u0|controller|yCounter\(2) & \vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datab => \vga_u0|controller|xCounter\(7),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[5]~1\);

-- Location: LCCOMB_X35_Y27_N14
\vga_u0|controller|controller_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ = (\vga_u0|controller|xCounter\(8) & ((\vga_u0|controller|yCounter\(3) & (\vga_u0|controller|controller_translator|mem_address[5]~1\ & VCC)) # (!\vga_u0|controller|yCounter\(3) & 
-- (!\vga_u0|controller|controller_translator|mem_address[5]~1\)))) # (!\vga_u0|controller|xCounter\(8) & ((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((\vga_u0|controller|controller_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|mem_address[6]~3\ = CARRY((\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|yCounter\(3) & !\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|xCounter\(8) & 
-- ((!\vga_u0|controller|controller_translator|mem_address[5]~1\) # (!\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[5]~1\,
	combout => \vga_u0|controller|controller_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[6]~3\);

-- Location: LCCOMB_X35_Y27_N16
\vga_u0|controller|controller_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ = ((\vga_u0|controller|controller_translator|Add0~0_combout\ $ (\vga_u0|controller|xCounter\(9) $ (!\vga_u0|controller|controller_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|mem_address[7]~5\ = CARRY((\vga_u0|controller|controller_translator|Add0~0_combout\ & ((\vga_u0|controller|xCounter\(9)) # (!\vga_u0|controller|controller_translator|mem_address[6]~3\))) # 
-- (!\vga_u0|controller|controller_translator|Add0~0_combout\ & (\vga_u0|controller|xCounter\(9) & !\vga_u0|controller|controller_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~0_combout\,
	datab => \vga_u0|controller|xCounter\(9),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[6]~3\,
	combout => \vga_u0|controller|controller_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[7]~5\);

-- Location: LCCOMB_X35_Y27_N18
\vga_u0|controller|controller_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ = (\vga_u0|controller|controller_translator|Add0~2_combout\ & (!\vga_u0|controller|controller_translator|mem_address[7]~5\)) # (!\vga_u0|controller|controller_translator|Add0~2_combout\ & 
-- ((\vga_u0|controller|controller_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[8]~7\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[7]~5\) # (!\vga_u0|controller|controller_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[7]~5\,
	combout => \vga_u0|controller|controller_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[8]~7\);

-- Location: LCCOMB_X35_Y27_N20
\vga_u0|controller|controller_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ = (\vga_u0|controller|controller_translator|Add0~4_combout\ & (\vga_u0|controller|controller_translator|mem_address[8]~7\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~4_combout\ & (!\vga_u0|controller|controller_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[9]~9\ = CARRY((\vga_u0|controller|controller_translator|Add0~4_combout\ & !\vga_u0|controller|controller_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[8]~7\,
	combout => \vga_u0|controller|controller_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[9]~9\);

-- Location: LCCOMB_X35_Y27_N22
\vga_u0|controller|controller_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ = (\vga_u0|controller|controller_translator|Add0~6_combout\ & (!\vga_u0|controller|controller_translator|mem_address[9]~9\)) # (!\vga_u0|controller|controller_translator|Add0~6_combout\ 
-- & ((\vga_u0|controller|controller_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[10]~11\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[9]~9\) # (!\vga_u0|controller|controller_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[9]~9\,
	combout => \vga_u0|controller|controller_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[10]~11\);

-- Location: LCCOMB_X35_Y27_N24
\vga_u0|controller|controller_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ = (\vga_u0|controller|controller_translator|Add0~8_combout\ & (\vga_u0|controller|controller_translator|mem_address[10]~11\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~8_combout\ & (!\vga_u0|controller|controller_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[11]~13\ = CARRY((\vga_u0|controller|controller_translator|Add0~8_combout\ & !\vga_u0|controller|controller_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[10]~11\,
	combout => \vga_u0|controller|controller_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[11]~13\);

-- Location: LCCOMB_X35_Y27_N26
\vga_u0|controller|controller_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ = (\vga_u0|controller|controller_translator|Add0~10_combout\ & (!\vga_u0|controller|controller_translator|mem_address[11]~13\)) # 
-- (!\vga_u0|controller|controller_translator|Add0~10_combout\ & ((\vga_u0|controller|controller_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[12]~15\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[11]~13\) # (!\vga_u0|controller|controller_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[11]~13\,
	combout => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[12]~15\);

-- Location: LCCOMB_X35_Y27_N28
\vga_u0|controller|controller_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ = (\vga_u0|controller|controller_translator|Add0~12_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~15\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~12_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[13]~17\ = CARRY((\vga_u0|controller|controller_translator|Add0~12_combout\ & !\vga_u0|controller|controller_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[12]~15\,
	combout => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[13]~17\);

-- Location: LCCOMB_X34_Y27_N28
\vga_u0|controller|controller_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~14_combout\ = \vga_u0|controller|controller_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|controller|controller_translator|Add0~13\,
	combout => \vga_u0|controller|controller_translator|Add0~14_combout\);

-- Location: LCCOMB_X35_Y27_N30
\vga_u0|controller|controller_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ = \vga_u0|controller|controller_translator|mem_address[13]~17\ $ (\vga_u0|controller|controller_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|controller_translator|Add0~14_combout\,
	cin => \vga_u0|controller|controller_translator|mem_address[13]~17\,
	combout => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X35_Y27_N8
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ = (!\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\);

-- Location: LCCOMB_X37_Y25_N28
\vga_u0|user_input_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[14]~18_combout\ = \vga_u0|user_input_translator|Add0~14_combout\ $ (\vga_u0|user_input_translator|mem_address[13]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~14_combout\,
	cin => \vga_u0|user_input_translator|mem_address[13]~17\,
	combout => \vga_u0|user_input_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X35_Y25_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & (\vga_u0|user_input_translator|mem_address[14]~18_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datac => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\);

-- Location: LCCOMB_X32_Y27_N20
\vga_u0|controller|xCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~0_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~10_combout\,
	combout => \vga_u0|controller|xCounter~0_combout\);

-- Location: LCFF_X32_Y27_N21
\vga_u0|controller|xCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(5));

-- Location: LCFF_X32_Y27_N13
\vga_u0|controller|xCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~12_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(6));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: M4K_X26_Y28
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X31_Y27_N18
\vga_u0|controller|on_screen~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~1_combout\ = (\vga_u0|controller|on_screen~0_combout\ & (!\vga_u0|controller|xCounter\(4) & (!\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|on_screen~0_combout\,
	datab => \vga_u0|controller|xCounter\(4),
	datac => \vga_u0|controller|xCounter\(8),
	datad => \vga_u0|controller|xCounter\(1),
	combout => \vga_u0|controller|on_screen~1_combout\);

-- Location: LCCOMB_X31_Y27_N28
\vga_u0|controller|on_screen~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~2_combout\ = (\vga_u0|controller|xCounter\(9) & ((\vga_u0|controller|xCounter\(8)) # (\vga_u0|controller|xCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|xCounter\(9),
	datac => \vga_u0|controller|xCounter\(7),
	combout => \vga_u0|controller|on_screen~2_combout\);

-- Location: LCCOMB_X34_Y27_N12
\vga_u0|controller|VGA_VS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~0_combout\ = (\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|yCounter\(7) & \vga_u0|controller|yCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|yCounter\(8),
	datac => \vga_u0|controller|yCounter\(7),
	datad => \vga_u0|controller|yCounter\(5),
	combout => \vga_u0|controller|VGA_VS1~0_combout\);

-- Location: LCCOMB_X31_Y27_N6
\vga_u0|controller|on_screen~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~3_combout\ = (!\vga_u0|controller|yCounter\(9) & (!\vga_u0|controller|VGA_VS1~0_combout\ & ((\vga_u0|controller|on_screen~1_combout\) # (!\vga_u0|controller|on_screen~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|on_screen~1_combout\,
	datac => \vga_u0|controller|on_screen~2_combout\,
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|on_screen~3_combout\);

-- Location: LCFF_X35_Y27_N31
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2));

-- Location: LCFF_X27_Y27_N31
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2));

-- Location: LCCOMB_X37_Y25_N8
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3));

-- Location: LCCOMB_X35_Y27_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3) = (\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3));

-- Location: LCCOMB_X37_Y25_N30
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\);

-- Location: M4K_X52_Y24
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X35_Y25_N10
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3) = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datab => \vga_u0|writeEn~1_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3));

-- Location: LCCOMB_X35_Y27_N10
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3) = (\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3));

-- Location: LCCOMB_X37_Y25_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\);

-- Location: M4K_X52_Y22
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X35_Y25_N28
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3) = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|writeEn~1_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datab => \vga_u0|writeEn~1_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3));

-- Location: LCCOMB_X35_Y27_N4
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3) = (!\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3));

-- Location: LCCOMB_X37_Y25_N2
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\);

-- Location: M4K_X26_Y21
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\);

-- Location: LCFF_X35_Y27_N27
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0));

-- Location: LCFF_X27_Y27_N27
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0));

-- Location: LCCOMB_X37_Y25_N4
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3));

-- Location: LCCOMB_X35_Y27_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3) = (!\vga_u0|controller|controller_translator|mem_address[13]~16_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3));

-- Location: LCCOMB_X37_Y25_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\);

-- Location: M4K_X52_Y28
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N26
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & 
-- (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\)) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\))))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\,
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\);

-- Location: LCCOMB_X27_Y27_N30
\vga_u0|controller|VGA_R[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_R[0]~0_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\,
	datab => \vga_u0|controller|on_screen~3_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\,
	combout => \vga_u0|controller|VGA_R[0]~0_combout\);

-- Location: LCFF_X35_Y27_N29
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1));

-- Location: LCFF_X27_Y27_N17
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1));

-- Location: LCCOMB_X33_Y24_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X52_Y26
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1))))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\);

-- Location: M4K_X26_Y22
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N18
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\) # 
-- ((!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ & 
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\,
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\);

-- Location: M4K_X26_Y26
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N28
\vga_u0|controller|VGA_G[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_G[0]~0_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\,
	datad => \vga_u0|controller|on_screen~3_combout\,
	combout => \vga_u0|controller|VGA_G[0]~0_combout\);

-- Location: M4K_X26_Y25
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y23
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N16
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\) # 
-- ((!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1))))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & 
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\);

-- Location: M4K_X26_Y27
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N8
\vga_u0|controller|VGA_B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_B[0]~0_combout\ = (\vga_u0|controller|on_screen~3_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\,
	datad => \vga_u0|controller|on_screen~3_combout\,
	combout => \vga_u0|controller|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X31_Y27_N16
\vga_u0|controller|VGA_HS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~1_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|VGA_HS1~0_combout\ & (\vga_u0|controller|xCounter\(4) & \vga_u0|controller|xCounter\(5)))) # (!\vga_u0|controller|xCounter\(6) & 
-- (!\vga_u0|controller|xCounter\(5) & ((!\vga_u0|controller|xCounter\(4)) # (!\vga_u0|controller|VGA_HS1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_HS1~0_combout\,
	datab => \vga_u0|controller|xCounter\(6),
	datac => \vga_u0|controller|xCounter\(4),
	datad => \vga_u0|controller|xCounter\(5),
	combout => \vga_u0|controller|VGA_HS1~1_combout\);

-- Location: LCCOMB_X31_Y27_N10
\vga_u0|controller|VGA_HS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~2_combout\ = (\vga_u0|controller|xCounter\(8)) # ((\vga_u0|controller|VGA_HS1~1_combout\) # ((!\vga_u0|controller|xCounter\(9)) # (!\vga_u0|controller|xCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|VGA_HS1~1_combout\,
	datac => \vga_u0|controller|xCounter\(7),
	datad => \vga_u0|controller|xCounter\(9),
	combout => \vga_u0|controller|VGA_HS1~2_combout\);

-- Location: LCFF_X31_Y27_N11
\vga_u0|controller|VGA_HS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_HS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_HS1~regout\);

-- Location: LCCOMB_X31_Y27_N0
\vga_u0|controller|VGA_HS~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS~feeder_combout\ = \vga_u0|controller|VGA_HS1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|VGA_HS1~regout\,
	combout => \vga_u0|controller|VGA_HS~feeder_combout\);

-- Location: LCFF_X31_Y27_N1
\vga_u0|controller|VGA_HS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_HS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_HS~regout\);

-- Location: LCCOMB_X34_Y27_N4
\vga_u0|controller|VGA_VS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~2_combout\ = (\vga_u0|controller|VGA_VS1~1_combout\) # ((\vga_u0|controller|yCounter\(1) $ (!\vga_u0|controller|yCounter\(0))) # (!\vga_u0|controller|VGA_VS1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|VGA_VS1~1_combout\,
	datab => \vga_u0|controller|yCounter\(1),
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|VGA_VS1~2_combout\);

-- Location: LCFF_X34_Y27_N5
\vga_u0|controller|VGA_VS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_VS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_VS1~regout\);

-- Location: LCCOMB_X30_Y27_N24
\vga_u0|controller|VGA_VS~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS~feeder_combout\ = \vga_u0|controller|VGA_VS1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|VGA_VS1~regout\,
	combout => \vga_u0|controller|VGA_VS~feeder_combout\);

-- Location: LCFF_X30_Y27_N25
\vga_u0|controller|VGA_VS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_VS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_VS~regout\);

-- Location: LCCOMB_X31_Y27_N12
\vga_u0|controller|VGA_BLANK1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK1~0_combout\ = (!\vga_u0|controller|yCounter\(9) & (!\vga_u0|controller|on_screen~2_combout\ & !\vga_u0|controller|VGA_VS1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|on_screen~2_combout\,
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|VGA_BLANK1~0_combout\);

-- Location: LCFF_X31_Y27_N13
\vga_u0|controller|VGA_BLANK1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_BLANK1~regout\);

-- Location: LCCOMB_X31_Y27_N26
\vga_u0|controller|VGA_BLANK~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK~feeder_combout\ = \vga_u0|controller|VGA_BLANK1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|VGA_BLANK1~regout\,
	combout => \vga_u0|controller|VGA_BLANK~feeder_combout\);

-- Location: LCFF_X31_Y27_N27
\vga_u0|controller|VGA_BLANK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_BLANK~regout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_HS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_VS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
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
	datain => \vga_u0|controller|VGA_BLANK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
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
	datain => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);
END structure;


