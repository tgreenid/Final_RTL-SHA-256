library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
ENTITY Preprocessor1 IS
	PORT(clk: IN STD_LOGIC;
		  reset : IN STD_LOGIC:='0';
		  ready : IN STD_LOGIC:='0';
		  readyBlock:IN STD_LOGIC:='0';
		  lastBlock:out STD_LOGIC:='0';
		  --xzeros:out std_logic_vector(0 to 63);
		 -- n,k,z: out integer;
		  --a1:out unsigned(0 to 63);
		  --a2:out unsigned(0 to 63);
		  --messageString : IN string:="ab";
		  --lengthInteger:out integer;
		  --out1:OUT std_logic_vector(0 to 15);
		  --outBit : OUT std_logic_vector(0 to 1023);
		  messageBit : OUT std_logic_vector(0 to 511)
		  --messsageLenVecotr : out std_LOGIC_VECTOR(0 to 63)
		 );
end Preprocessor1;

ARCHITECTURE behavioral of Preprocessor1 IS
	--signal input : string(1 to 2);
	constant ss : string :="abcdefghijklmopqrstuvwxyzabcdefghijklmopqrstuvwxyzabcd";
	
	signal output:std_logic_vector(0 to ss'length*8 +(447- ss'length*8) mod 512+64);
	signal message:std_logic_vector(0 to 511);
	signal messageLength : std_LOGIC_VECTOR(0 to 63);
	signal len_unsigned,k0 : unsigned (0 to 63);
	signal nBlocks,x:integer;
	
	
	begin
		PROCESS(clk,ready,readyBlock,reset)
		begin	
			if(clk'Event and clk='1' and reset='1')then
				output<=std_logic_vector(to_unsigned(0,output'length));
			
			elsif(clk'Event and clk='1' and readyBlock='1'and ready='1')then
				if(x=(nBlocks-1))then
					lastBlock<='1';
				else
					x<=x+1;
				end if;
				
			elsif(clk'Event and clk='1' and ready ='1')then
			--k<=output'length;
				nBlocks<=output'length/512;
				IF(nBlocks /= 0)then
					x<=0;
				end if;
				--n<=nBlocks;
				
				
				len_unsigned<=shift_left(to_unsigned(ss'length,64),3);
				messageLength<= std_logic_vector(len_unsigned);
				k0<=(447- len_unsigned) mod 512;			
				output(TO_INTEGER(len_unsigned))<='1';
				for i in 1 to 447 loop
					exit when i=((TO_INTEGER(k0))+1);
					output((TO_INTEGER(len_unsigned)) +i)<='0'; 
				end loop;				
				for i in  ss'range loop
					output((8*i)-8 to (8*i)-1)<=std_logic_vector(to_unsigned(character'pos(ss(i)),8));
				end loop;
				for i in 0 to 63 loop
					output(output'length-64+i)<=messageLength(i);
				end loop;
			end if;
			
		for i in 0 to 511 loop
				message(i)<=output(x*512+i);
		end loop;
		messageBit<=message;
		--outBit<=output;
		--z<=to_integer(k0);
		
		end process;
end behavioral;