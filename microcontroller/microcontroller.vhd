--
-- Minimal 8 Bit CPU
--
-- rev 15102001
--
-- 01-02/2001 Tim Böscke
-- 10   /2001 slight changes for proper simulation.
--
-- t.boescke@tuhh.de
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
	signal	akku:	std_logic_vector(15 downto 0);	-- akku(8) is carry !
	signal	adreg:	std_logic_vector(11 downto 0);
	--signal	greg:	std_logic_vector(7 downto 0);
	--signal pc_track : std_logic_vector(5 downto 0);
	signal 	pc:	std_logic_vector(11 downto 0);
	signal	opcode:	std_logic_vector(5 downto 0); -- 4bit
	signal p_opcode : std_logic_vector(5 downto 0); -- 4bit
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
			--if (p_opcode /= "100000") then 
				pc <= adreg + 1;
			--else
				adreg <= pc;
			--end if;
			adreg	<= "00" & data(9 downto 0);
		else	
			adreg <= pc;
		end if;

		-- ALU / Data Path
		case opcode is
			when "000001" => akku(11 downto 0) <= adreg; -- MOV into akku (kinda like loading)
			when "000010" => akku <= ("0000" & adreg) + akku; -- ADD adreg + akku and store in akku
			--when "100" => pc <= (others => '1'); p_opcode <= opcode; -- JMP (to line number of data)
			--when "101" => null;
			--when "110" => null;
			--when "111" => null;
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
	
