library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alumcu is
	port(
		-- opcode also includes direction
		-- direction bit is the 1st LSB
		-- the rest MSB are opcodes
		opCode : in std_logic_vector(13 downto 7);
		-- file code is the LSB 14bit of the 
		-- 14bit opcode according to PIC16 design
		fileCode : in std_logic_vector(6 downto 0);
		
		-- accumulator that is 14-bits
		accumulator : in std_logic_vector(13 downto 0)
		
	);
end alumcu;

architecture behavior of alumcu is
	signal tempOut : std_logic_vector(13 downto 0);
	signal fileRegister : std_logic_vector(6 downto 0);
	
	begin process(opCode, accumulator, fileCode)
	-- process
		begin
		
		-- opcode processing without directions
		case opcode (13 downto 8) is
			-- ADDWF
			when "000111" => tempOut <= accumulator + fileCode;
			-- ANDWF
			when "000101" => tempOut <= accumulator and fileCode;
			-- CLRF
			when "000001" => fileRegister <= "0000000";
			-- INCF
			when "001010" => fileRegister <= fileRegister + "0000001";
			-- MOVF
			-- BSF
			-- others
			when others => tempOut <= "00000000000000";
		end case;
		
	end process;
	
end behavior;