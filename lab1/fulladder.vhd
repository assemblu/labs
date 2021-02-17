library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fulladder is
	port(
		a1 : in std_logic;
		a2 : in std_logic;
		b1 : in std_logic;
		b2 : in std_logic;
		c1 : in std_logic;
		
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
  signal WIRE_8 : std_logic;
  signal WIRE_9 : std_logic;
  signal WIRE_10 : std_logic;
  
begin
	-- First wire section
	WIRE_1 <= a1 xor b1;
	WIRE_2 <= a1 and b1;
	WIRE_3 <= WIRE_1 AND c1;
	WIRE_4 <= c1 xor WIRE_1;
	WIRE_5 <= WIRE_3 or WIRE_2;
	
	-- Second wire section
	WIRE_6 <= a2 xor b2;
	WIRE_7 <= a2 and b2;
	WIRE_8 <= WIRE_6 and WIRE_5;
	WIRE_9 <= WIRE_5 xor WIRE_6;
	WIRE_10 <= WIRE_8 or WIRE_7;
	
	-- Outputs
	o_sum1 <= WIRE_4;
	o_sum2 <= WIRE_9;
	o_carr <= WIRE_10;
 
end rtl;