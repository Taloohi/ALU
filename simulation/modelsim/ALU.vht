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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/29/2017 17:03:56"
                                                            
-- Vhdl Test Bench template for design  :  ALU
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_tst IS
END ALU_vhd_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Input_Switch : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
signal done: std_logic;
SIGNAL BCD1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL BCD2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL BCD3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ALU
	PORT (
	clk : IN STD_LOGIC;
	Input_Switch : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	done: out std_logic;
	BCD1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	BCD2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	BCD3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Input_Switch => Input_Switch,
	LED => LED,
	reset => reset,
	BCD1 => BCD1,
	BCD2 => BCD2,
	BCD3 => BCD3,
	done => done
	);


	clk_gen: process 
	begin -- clock period = 10 ns
		clk <= '1';
		wait for 5 ns;
		clk <= '0';
		wait for 5 ns;

		if now >= 1500 ns then -- run for 150 cc
			assert false
			 report "simulation is completed (not error)."
			 severity error;
			wait;
		end if;
	end process;

	
	data_gen: process 
	begin
	
		
			
			--OP1 + OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000001";
			wait for 20 ns;
			
			
			--OP1 - OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000010";
			wait for 20 ns;
			
			
						--OP1 + 1 ;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000011";
			wait for 20 ns;
			
			
						--OP1 - 1;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000100";
			wait for 20 ns;
			
			
						--OP1 AND OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000101";
			wait for 20 ns;
			
			
			
			--OP1 OR OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 20 ns;
			
			
			-- NOT OP1 ;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00000111";
			wait for 20 ns;
			
			--OP1 SR OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00001000";
			wait for 20 ns;
			
			
			
				--OP1 SL OP2;
			input_switch <= "11011011";
			wait for 10 ns;
			input_switch <= "00000110";
			wait for 10 ns;
			input_switch <= "00001001";
			wait for 20 ns;
			
	
	wait;
	
	end process;
	
	
END ALU_arch;
