library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	port(Input_Switch: in std_logic_vector(7 downto 0);
			segment1, segment2: out std_logic_vector(6 downto 0);
			LED: out std_logic_vector(7 downto 0));

end ALU;



architecture operation of ALU is
	type state_type is (s0, s1, s2, s3);
	signal state : state_type;


	signal segment1: std_logic_vector(6 downto 0);
	signal segment2: std_logic_vector(6 downto 0);
	signal segment3: std_logic_vector(6 downto 0);

	constant D0: std_logic_vector(6 downto 0) := "1000000"; 
	constant D1: std_logic_vector(6 downto 0) := "1111001";	
	constant D2: std_logic_vector(6 downto 0) := "0100100";
	constant D3: std_logic_vector(6 downto 0) := "0110000";
	constant D4: std_logic_vector(6 downto 0) := "0011001";
	constant D5: std_logic_vector(6 downto 0) := "0010010";
	constant D6: std_logic_vector(6 downto 0) := "0000010";
	constant D7: std_logic_vector(6 downto 0) := "1111000";
	constant D8: std_logic_vector(6 downto 0) := "0000000";
	constant D9: std_logic_vector(6 downto 0) := "0010000";
	constant DA: std_logic_vector(6 downto 0) := "0001000";
	constant DB: std_logic_vector(6 downto 0) := "0000011";
	constant DC: std_logic_vector(6 downto 0) := "1000110";
	constant DD: std_logic_vector(6 downto 0) := "0100001";
	constant DE: std_logic_vector(6 downto 0) := "0000110";
	constant DF: std_logic_vector(6 downto 0) := "0001110";
	constant DS: std_logic_vector(6 downto 0) := "0010010";

	signal op1, op2 : std_logic_vector(7 downto 0);
	signal opc : std_logic_vector(7 downto 0);
	signal done : std_logic;
	signal result : std_logic_vector(7 downto 0);

	begin

	state_register: process (CLK, RESET)
		begin

		if(RESET = '1') then
			state <= S0;

		elsif (clk'event and clk = '1') then

		case state is
			
			when S0 => 
			
				op1 <= Input_Switch;
				segment1 <= DS;
				segment2 <= D0;
				segment3 <= D0;

				state <= s1;

			when S1 =>
			
				op2 <= Input_Switch;
				segment1 <= DS;
				segment2 <= D0;
				segment3 <= D1;

				state <= s2;

				
			when S2 =>
				
				op2 <= Input_Switch;
				segment1 <= DS;
				segment2 <= D0;
				segment3 <= D2;

				state <= S3;


			
			when S3 =>
			
				segment1 <= DS;
				segment2 <= D0;
				segment3 <= D3;






		end case;
	    end if;
    end process;