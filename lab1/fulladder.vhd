library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fulladder is
	port(
		i_bit1 : in std_logic;
		i_bit2 : in std_logic;
		i_bit3 : in std_logic;
		i_bit4 : in std_logic;
		
		o_sum1 : out std_logic;
		o_sum2 : out std_logic;
		o_carr : out std_logic
	);
end fulladder;
 
 
architecture rtl of fulladder is
 
  signal WIRE_1 : std_logic;
  signal WIRE_2 : std_logic;
  signal WIRE_3 : std_logic;
  signal WIRE_4 : std_logic;
  signal WIRE_5 : std_logic;
  signal WIRE_6 : std_logic;
  signal WIRE_7 : std_logic;
  
begin
	-- First wire section
	WIRE_1 <= i_bit1 xor i_bit2;
	WIRE_2 <= i_bit1 and i_bit2;
	WIRE_3 <= i_bit3 xor i_bit4;
	WIRE_4 <= i_bit3 and i_bit4;
	
	-- Second wire section
	WIRE_5 <= WIRE_3 xor WIRE_2;
	WIRE_6 <= WIRE_3 and WIRE_2;
	WIRE_7 <= WIRE_6 or WIRE_4;
	
	-- Outputs
	o_sum1 <= WIRE_1;
	o_sum2 <= WIRE_5;
	o_carr <= WIRE_7;
 
end rtl;