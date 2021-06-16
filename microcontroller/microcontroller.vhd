--
-- Author: Emirhan Gocturk
-- Number: 460385
--
-- 16-Bit microcontroller
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity microcontroller is
	port (	data:	inout	std_logic_vector(15 downto 0);
		adress:	out	std_logic_vector(11 downto 0);
		oe:	out	std_logic;
		we:	out	std_logic;		-- Asynchronous memory interface
		rst:	in	std_logic;
		clk:	in	std_logic);
end;

architecture CPU_ARCH of microcontroller is
	signal	akku:	std_logic_vector(15 downto 0);
	signal	adreg:	std_logic_vector(11 downto 0);
	signal cx: std_logic_vector(15 downto 0);
	signal 	pc:	std_logic_vector(11 downto 0);
	signal	opcode:	std_logic_vector(5 downto 0);
	signal p_opcode : std_logic_vector(5 downto 0); 
	signal carry_reg : std_logic;
begin
	process(clk,rst)
	begin
	   if (rst = '0') then 
		adreg	<= (others => '0');	-- start execution at memory location 0 
		opcode	<= (others => '0');
		akku <= (others => '0');
		pc   <= (others => '0');
		--pc_track <= (others => '0');
	   elsif rising_edge(clk) then

		-- PC / Adress path
		if (opcode = "000000") then 
			if (p_opcode /= "000011" and p_opcode /= "000110") then 
				pc <= adreg + 1;
			else
				adreg <= pc;
				p_opcode <= "000000";
				carry_reg <= '0';
			end if;
			adreg	<= "00" & data(9 downto 0);
		else	
			adreg <= pc;
		end if;

		-- ALU / Data Path
		case opcode is
			when "000001" => akku(11 downto 0) <= adreg; -- MOV into akku
			when "000010" => akku <= ("0000" & adreg) + akku; -- ADD adreg + akku and store in akku
			when "000011" => pc <= adreg; p_opcode <= opcode; -- JMP (to line number of data)
			when "000100" => akku <= akku + 1; -- INC akku
			when "000101" => if (akku <= "0000" & adreg) then carry_reg <= '1'; end if; -- CMPLE
			when "000110" => if (carry_reg = '1') then pc <= adreg; p_opcode <= opcode; end if;  -- JE
			when "000111" => cx <= akku; -- MOV into cx from akku
			when "001000" => cx(11 downto 0) <= adreg; -- Directly write to cx
			when "001001" => if (cx <= "0000" & adreg) then carry_reg <= '1'; end if; -- CMPLE for cx
			when "001010" => if (cx = "0000" & adreg) then carry_reg <= '1'; end if; -- CMP with cx
			when "001011" => cx <= cx + 1; -- INC cx
			when others => null;						-- instr. fetch, jcc taken (000), sta (001) 
		end case;						

		-- State machine
		if (opcode /= "000000") then opcode <= "000000"; 			-- fetch next opcode
		--else if (opcode = "100") then adreg <= pc;
		else  opcode <= not data(15 downto 10); 			-- execute instruction	
		end if;	
	   end if;
	end process;
	
	-- output
	adress	<= adreg;
	data 	<= "ZZZZZZZZZZZZZZZZ" when opcode /= "001000" else akku;
	oe <= '1' when (clk='1' or opcode  = "001000" or rst='0') else '0'; 	-- no memory access during reset and 
	we <= '1' when (clk='1' or opcode /= "001000" or rst='0') else '0'; 			-- state "101" (branch not taken)
	
end CPU_ARCH;
	
