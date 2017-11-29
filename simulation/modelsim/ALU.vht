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
SIGNAL seven_segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ALU
	PORT (
	clk : IN STD_LOGIC;
	Input_Switch : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	seven_segment1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_segment2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_segment3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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
	seven_segment1 => seven_segment1,
	seven_segment2 => seven_segment2,
	seven_segment3 => seven_segment3
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END ALU_arch;
