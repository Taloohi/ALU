library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	port(Operand1, Operand2: in std_logic_vector(7 downto 0);
			segment1, segment2: out std_logic_vector(6 downto 0);
			LED: out std_logic_vector(7 downto 0));

end ALU;