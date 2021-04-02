library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alumcu is
	port(
		-- opcode msb 6bits represent opcode
		-- lsb 7bits represent fileRegister input
		-- middle bit represent direction
		opcode : in unsigned(13 downto 0);

		-- output of the alu
		-- not really used for now
		aluOut : buffer unsigned(7 downto 0)
		
	);
end alumcu;

architecture behavior of alumcu is
	signal fileRegister : unsigned(6 downto 0);
	-- Akku
	signal Wreg : unsigned(6 downto 0);
	

	begin process(opCode)
	-- process
		begin
		
		-- opcode processing without directions
		case opcode (13 downto 8) is
			-- ADDWF
			when "000111" => 
				-- If direction is 0 store in W
				if opcode (7) = '0' then
					Wreg <= Wreg + fileRegister;
				-- If direction is 1 store in f register
				elsif opcode (7) = '1' then
					fileRegister <= Wreg + fileRegister;
				end if;
			-- ANDWF
			when "000101" => 
				-- If direciton is 0 store in W
				if opcode (7) = '0' then
					Wreg <= Wreg and fileRegister;
				-- If direction is 1 store in f register
				elsif opcode (7) = '1' then
					fileRegister <= Wreg and fileRegister;
				end if;
			-- CLRF
			when "000001" => 
				-- Clear register F
				fileRegister <= "0000000";
			-- INCF
			when "001010" => 
			-- increment contents of f
				-- if direction is 0 store in W
				if opcode (7) = '0' then
					Wreg <= fileRegister + 1;
				-- if direction is 1 store in f
				elsif opcode (7) = '1' then
					fileRegister <= fileRegister + 1;
				end if;
			-- MOVF
			when "001000" =>
				-- direction 0
				if opcode (7) = '0' then
					-- move fCode to W
					Wreg <= opcode(6 downto 0);
				-- direction 1
				elsif opcode (7) = '1' then
					-- move fCode to fRegister
					fileRegister <= opcode(6 downto 0);
				end if;
			-- BSF
			when "010100" => 
				fileRegister <= opcode(6 downto 0);
			-- others
			when others =>
				aluOut <= "00000000";
		end case;
		
	end process;
	
end behavior;