library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity ALU is
	port(Input_Switch: in std_logic_vector(7 downto 0);
			reset, clk : in std_logic;
			seven_segment1, seven_segment2, seven_segment3: out std_logic_vector(6 downto 0);
	   	  	BCD1, BCD2, BCD3: out std_logic_vector(6 downto 0);
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
	constant DS: std_logic_vector(6 downto 0) := "0010010";
	constant DD: std_logic_vector(6 downto 0) := "0111111";


	signal a1, a2: natural range 0 to 255;
	signal temp: std_logic_vector(7 downto 0);
	signal ov : std_logic;


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

				if opc = "00000001" then				
						temp <= op1 + op2;
						ov <= '0'; 

				elsif opc = "00000010" then	
					temp <= op1 - op2;
		


				elsif opc = "00000011" then	--OP1 + 1;
					temp <= op1 + "00000001";
					ov <= '0';

				elsif opc = "00000100" then	--OP1 - 1;
					temp <= op1 - "00000001";
					
				


				elsif opc = "00000101" then	--OP1 AND OP2;
					temp <= op1 and op2;
					ov <= '0';
					
					
				elsif opc = "00000110" then	--OP1 OR OP2;
					temp <= op1 OR op2;
					ov <= '0';
					
				elsif opc = "00000111" then	--NOT OP1;
					temp <= NOT op1;
					ov <= '0';


				elsif opc = "00001000" then	--OP1 Arithmetic Shift Right;
					temp <= to_stdlogicvector(to_bitvector(OP1) srl conv_integer(OP2));
					ov <= '0';
					
				elsif opc = "00001001" then	--OP1 Arithmetic Shift Left;
					temp <= to_stdlogicvector(to_bitvector(OP1) sll conv_integer(OP2));
					ov <= '0';

				
				state <= s0;


				end if;

			end case;


			result <= temp;
			



	    end if;
    end process;
	 
display: process (CLK, RESET, seven_segment1, seven_segment2, seven_segment3, result) --binary to hex
begin
	seven_segment1 <= conv_integer (unsigned(result)) / 100 ; --changes to integer, then do mod
	seven_segment2 <= conv_integer (unsigned(result))/10 mod 10;
	seven_segment3 <= conv_integer (unsigned(result)) mod 10;

	if (RESET='1') then
		BCD3 <= DD;
		BCD2 <= DD;
		BCD1 <= DD;
		
	else
	   case seven_segment1 is
			when 0 => BCD1 <= D0; --0 to 9 decimal
			when 1 => BCD1 <= D1;
			when 2 => BCD1 <= D2;
			when 3 => BCD1 <= D3;
			when 4 => BCD1 <= D4;
			when 5 => BCD1 <= D5;
			when 6 => BCD1 <= D6;
			when 7 => BCD1 <= D7;
			when 8 => BCD1 <= D8;
			when 9 => BCD1 <= D9;
			when others => BCD1 <=DD;
		end case;
		
		case seven_segment2 is
			when 0 => BCD2 <= D0;
			when 1 => BCD2 <= D1;
			when 2 => BCD2 <= D2;
			when 3 => BCD2 <= D3;
			when 4 => BCD2 <= D4;
			when 5 => BCD2 <= D5;
			when 6 => BCD2 <= D6;
			when 7 => BCD2 <= D7;
			when 8 => BCD2 <= D8;
			when 9 => BCD2 <= D9;
			when others => BCD2 <=DD;
		end case;
		
		case seven_segment3 is
			when 0 => BCD3 <= D0;
			when 1 => BCD3 <= D1;
			when 2 => BCD3 <= D2;
			when 3 => BCD3 <= D3;
			when 4 => BCD3 <= D4;
			when 5 => BCD3 <= D5;
			when 6 => BCD3 <= D6;
			when 7 => BCD3 <= D7;
			when 8 => BCD3 <= D8;
			when 9 => BCD3 <= D9;
			when others => BCD3 <=DD;
		end case;
		
	end if;
end process;		    
		    
		    
	 LED <= result;
	 
	 
	 end operation;
