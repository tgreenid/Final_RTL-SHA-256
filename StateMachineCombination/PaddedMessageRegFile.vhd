library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PaddedMessageRegFile is
    Port ( clk : in  STD_LOGIC;
           wen : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (3 downto 0);
           dataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end PaddedMessageRegFile;

architecture Behavioral of PaddedMessageRegFile is
	type registerFile is array(0 to 15) of std_logic_vector(31 downto 0);
	signal registers : registerFile := (
			x"61626380", x"00000000", x"00000000", x"00000000", x"00000000", x"00000000", x"00000000", x"00000000",
			x"00000000", x"00000000", x"00000000", x"00000000", x"00000000", x"00000000", x"00000000", x"00000018"
		);
	
begin

	regFile : process(clk) is
	begin
		if rising_edge(clk) then
			if wen ='1' then
			registers(to_integer(unsigned(addr))) <= dataIn;
			end if;
		end if;
	end process;	
			dataOut <= registers(to_integer(unsigned(addr)));

end Behavioral;
