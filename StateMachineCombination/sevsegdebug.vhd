LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sevsegdebug IS 
	PORT (R:IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	      leds:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds1:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds2:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds3:OUT STD_LOGIC_VECTOR (1 TO 7);
         leds4:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds5:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds6:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds7:OUT STD_LOGIC_VECTOR (1 TO 7));
END sevsegdebug;

ARCHITECTURE Behaviour OF sevsegdebug IS
signal bcd,bcd1,bcd2,bcd3,bcd4,bcd5,bcd6,bcd7 : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
bcd <= R (31 DOWNTO 28);
bcd1 <= R (27 DOWNTO 24);
bcd2 <= R (23 DOWNTO 20);
bcd3 <= R (19 DOWNTO 16);
bcd4 <= R (15 DOWNTO 12);
bcd5 <= R (11 DOWNTO 8);
bcd6 <= R (7 DOWNTO 4);
bcd7 <= R (3 DOWNTO 0);


	PROCESS (bcd)
	BEGIN 
		CASE bcd IS 
		WHEN "0000" => leds <= "0000001";
		WHEN "0001" => leds <= "1001111";
		WHEN "0010" => leds <= "0010010";
		WHEN "0011" => leds <= "0000110";
		WHEN "0100" => leds <= "1001100";
		WHEN "0101" => leds <= "0100100";
		WHEN "0110" => leds <= "0100000";
		WHEN "0111" => leds <= "0001111";
		WHEN "1000" => leds <= "0000000";
		WHEN "1001" => leds <= "0001100";
		WHEN "1010" => leds <= "0001000"; --A
		WHEN "1011" => leds <= "1100000"; --B
		WHEN "1100" => leds <= "0110001"; --C
		WHEN "1101" => leds <= "1000010"; --D
		WHEN "1110" => leds <= "0110000"; --E
		WHEN "1111" => leds <= "0111000"; --F
		WHEN OTHERS => leds <= "-------";
	END CASE;
	END PROCESS;
	
	PROCESS (bcd1)
	BEGIN 
		CASE bcd1 IS 
		WHEN "0000" => leds1 <= "0000001";
		WHEN "0001" => leds1 <= "1001111";
		WHEN "0010" => leds1 <= "0010010";
		WHEN "0011" => leds1 <= "0000110";
		WHEN "0100" => leds1 <= "1001100";
		WHEN "0101" => leds1 <= "0100100";
		WHEN "0110" => leds1 <= "0100000";
		WHEN "0111" => leds1 <= "0001111";
		WHEN "1000" => leds1 <= "0000000";
		WHEN "1001" => leds1 <= "0001100";
		WHEN "1010" => leds1 <= "0001000"; --A
		WHEN "1011" => leds1 <= "1100000"; --B
		WHEN "1100" => leds1 <= "0110001"; --C
		WHEN "1101" => leds1 <= "1000010"; --D
		WHEN "1110" => leds1 <= "0110000"; --E
		WHEN "1111" => leds1 <= "0111000"; --F
		WHEN OTHERS => leds1 <= "-------";
	END CASE;
	END PROCESS;

	PROCESS (bcd2)
	BEGIN 
		CASE bcd2 IS 
		WHEN "0000" => leds2 <= "0000001";
		WHEN "0001" => leds2 <= "1001111";
		WHEN "0010" => leds2 <= "0010010";
		WHEN "0011" => leds2 <= "0000110";
		WHEN "0100" => leds2 <= "1001100";
		WHEN "0101" => leds2 <= "0100100";
		WHEN "0110" => leds2 <= "0100000";
		WHEN "0111" => leds2 <= "0001111";
		WHEN "1000" => leds2 <= "0000000";
		WHEN "1001" => leds2 <= "0001100";
		WHEN "1010" => leds2 <= "0001000"; --A
		WHEN "1011" => leds2 <= "1100000"; --B
		WHEN "1100" => leds2 <= "0110001"; --C
		WHEN "1101" => leds2 <= "1000010"; --D
		WHEN "1110" => leds2 <= "0110000"; --E
		WHEN "1111" => leds2 <= "0111000"; --F
		WHEN OTHERS => leds2 <= "-------";
	END CASE;
	END PROCESS;

	PROCESS (bcd3)
	BEGIN 
		CASE bcd3 IS 
		WHEN "0000" => leds3 <= "0000001";
		WHEN "0001" => leds3 <= "1001111";
		WHEN "0010" => leds3 <= "0010010";
		WHEN "0011" => leds3 <= "0000110";
		WHEN "0100" => leds3 <= "1001100";
		WHEN "0101" => leds3 <= "0100100";
		WHEN "0110" => leds3 <= "0100000";
		WHEN "0111" => leds3 <= "0001111";
		WHEN "1000" => leds3 <= "0000000";
		WHEN "1001" => leds3 <= "0001100";
		WHEN "1010" => leds3 <= "0001000"; --A
		WHEN "1011" => leds3 <= "1100000"; --B
		WHEN "1100" => leds3 <= "0110001"; --C
		WHEN "1101" => leds3 <= "1000010"; --D
		WHEN "1110" => leds3 <= "0110000"; --E
		WHEN "1111" => leds3 <= "0111000"; --F
		WHEN OTHERS => leds3 <= "-------";
	END CASE;
	END PROCESS;

	PROCESS (bcd4)
	BEGIN 
		CASE bcd4 IS 
		WHEN "0000" => leds4 <= "0000001";
		WHEN "0001" => leds4 <= "1001111";
		WHEN "0010" => leds4 <= "0010010";
		WHEN "0011" => leds4 <= "0000110";
		WHEN "0100" => leds4 <= "1001100";
		WHEN "0101" => leds4 <= "0100100";
		WHEN "0110" => leds4 <= "0100000";
		WHEN "0111" => leds4 <= "0001111";
		WHEN "1000" => leds4 <= "0000000";
		WHEN "1001" => leds4 <= "0001100";
		WHEN "1010" => leds4 <= "0001000"; --A
		WHEN "1011" => leds4 <= "1100000"; --B
		WHEN "1100" => leds4 <= "0110001"; --C
		WHEN "1101" => leds4 <= "1000010"; --D
		WHEN "1110" => leds4 <= "0110000"; --E
		WHEN "1111" => leds4 <= "0111000"; --F
		WHEN OTHERS => leds4 <= "-------";
	END CASE;
	END PROCESS;


	PROCESS (bcd5)
	BEGIN 
		CASE bcd5 IS 
		WHEN "0000" => leds5 <= "0000001";
		WHEN "0001" => leds5 <= "1001111";
		WHEN "0010" => leds5 <= "0010010";
		WHEN "0011" => leds5 <= "0000110";
		WHEN "0100" => leds5 <= "1001100";
		WHEN "0101" => leds5 <= "0100100";
		WHEN "0110" => leds5 <= "0100000";
		WHEN "0111" => leds5 <= "0001111";
		WHEN "1000" => leds5 <= "0000000";
		WHEN "1001" => leds5 <= "0001100";
		WHEN "1010" => leds5 <= "0001000"; --A
		WHEN "1011" => leds5 <= "1100000"; --B
		WHEN "1100" => leds5 <= "0110001"; --C
		WHEN "1101" => leds5 <= "1000010"; --D
		WHEN "1110" => leds5 <= "0110000"; --E
		WHEN "1111" => leds5 <= "0111000"; --F		
		WHEN OTHERS => leds5 <= "-------";
	END CASE;
	END PROCESS;

	PROCESS (bcd6)
	BEGIN 
		CASE bcd6 IS 
		WHEN "0000" => leds6 <= "0000001";
		WHEN "0001" => leds6 <= "1001111";
		WHEN "0010" => leds6 <= "0010010";
		WHEN "0011" => leds6 <= "0000110";
		WHEN "0100" => leds6 <= "1001100";
		WHEN "0101" => leds6 <= "0100100";
		WHEN "0110" => leds6 <= "0100000";
		WHEN "0111" => leds6 <= "0001111";
		WHEN "1000" => leds6 <= "0000000";
		WHEN "1001" => leds6 <= "0001100";
		WHEN "1010" => leds6 <= "0001000"; --A
		WHEN "1011" => leds6 <= "1100000"; --B
		WHEN "1100" => leds6 <= "0110001"; --C
		WHEN "1101" => leds6 <= "1000010"; --D
		WHEN "1110" => leds6 <= "0110000"; --E
		WHEN "1111" => leds6 <= "0111000"; --F
		WHEN OTHERS => leds6 <= "-------";
	END CASE;
	END PROCESS;

	PROCESS (bcd7)
	BEGIN 
		CASE bcd7 IS 
		WHEN "0000" => leds7 <= "0000001";
		WHEN "0001" => leds7 <= "1001111";
		WHEN "0010" => leds7 <= "0010010";
		WHEN "0011" => leds7 <= "0000110";
		WHEN "0100" => leds7 <= "1001100";
		WHEN "0101" => leds7 <= "0100100";
		WHEN "0110" => leds7 <= "0100000";
		WHEN "0111" => leds7 <= "0001111";
		WHEN "1000" => leds7 <= "0000000";
		WHEN "1001" => leds7 <= "0001100";
		WHEN "1010" => leds7 <= "0001000"; --A
		WHEN "1011" => leds7 <= "1100000"; --B
		WHEN "1100" => leds7 <= "0110001"; --C
		WHEN "1101" => leds7 <= "1000010"; --D
		WHEN "1110" => leds7 <= "0110000"; --E
		WHEN "1111" => leds7 <= "0111000"; --F
		WHEN OTHERS => leds7 <= "-------";
	END CASE;
	END PROCESS;
END Behaviour;
		
			
