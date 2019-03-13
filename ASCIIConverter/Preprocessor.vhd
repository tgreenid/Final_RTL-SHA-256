library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
ENTITY Preprocessor IS
	PORT(clock: IN STD_LOGIC;
		  reset : IN STD_LOGIC:='0';
		  ready : IN STD_LOGIC:='0';
		  readyBlock:IN STD_LOGIC:='0';
		  lastBlock,blockset:out STD_LOGIC:='0';
		  --xzeros:out std_logic_vector(0 to 63);
		 -- n,k,z: out integer;
		  --a1:out unsigned(0 to 63);
		  --a2:out unsigned(0 to 63);
		  --messageString : IN string:="ab";
		  --lengthInteger:out integer;
		  --out1:OUT std_logic_vector(0 to 15);
		  sub0 : OUT std_logic_vector(31 downto 0);
		  sub1 : OUT std_logic_vector(31 downto 0);
		  sub2 : OUT  std_logic_vector(31 downto 0);
		  sub3 : OUT  std_logic_vector(31 downto 0);
		  sub4 : OUT  std_logic_vector(31 downto 0);
		  sub5 : OUT  std_logic_vector(31 downto 0);
		  sub6 : OUT  std_logic_vector(31 downto 0);
		  sub7 : OUT  std_logic_vector(31 downto 0);
		  sub8 : OUT  std_logic_vector(31 downto 0);
		  sub9 : OUT  std_logic_vector(31 downto 0);
		  sub10 :OUT std_logic_vector(31 downto 0);
		  sub11 :OUT std_logic_vector(31 downto 0);
		  sub12 :OUT std_logic_vector(31 downto 0);
		  sub13:OUT std_logic_vector(31 downto 0);
		  sub14:OUT Std_logic_vector(31 downto 0);
		  sub15:OUT std_logic_vector(31 downto 0);
		  outBit : OUT std_logic_vector(0 to 511);
		  messageBit : OUT std_logic_vector(0 to 511);
		  messsageLenVecotr : out std_LOGIC_VECTOR(0 to 63)
		 );
end Preprocessor;

ARCHITECTURE behavioral of Preprocessor IS
	--signal input : string(1 to 2);
	constant ss : string :="ab";
	signal output:std_logic_vector(0 to ss'length*8 +(447- ss'length*8) mod 512+64);
	signal message:std_logic_vector(0 to 511);
	signal messageLength : std_LOGIC_VECTOR(63 downto 0);
	signal len_unsigned,k0 : unsigned (63 downto 0);
	signal nBlocks,x:integer;
	signal memAddr : STD_LOGIC_VECTOR (3 downto 0);
	signal memData :STD_LOGIC_VECTOR (31 downto 0);
	signal temp :STD_LOGIC_VECTOR (31 downto 0);
	type sb is array(0 to 15) of std_logic_vector(31 downto 0);
	signal SubBlock: sb;
	
	
	COMPONENT  PaddedMessageRegFile IS
	PORT(
			  clk : in  STD_LOGIC;
           wen : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (3 downto 0);
           dataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (31 downto 0)
		);
		end component;
	
	begin
	
		paddedmessage:PaddedMessageRegFile
		PORT MAP(
			clk=> clock,
			wen=>'1',
			addr=>memAddr,
			dataIn=>x"00000000",
			dataOut=>memData
		);
		
		PROCESS(clock,ready,readyBlock,reset)
		begin	
			if(clock'Event and clock='1' and reset='1')then
				output<=std_logic_vector(to_unsigned(0,output'length));
			
			elsif(clock'Event and clock='1' and readyBlock='1'and ready='1')then
				if(x=(nBlocks-1))then
					lastBlock<='1';
				else
					x<=x+1;
				end if;
				
			elsif(clock'Event and clock='1' and ready ='1')then
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
		--for i in 0 to 511 loop
			messageBit<=message;
		
		
--		L1:for i in 0 to 15 loop
--			L2:for j in  31 downto 0 loop
--			SubBlock(i)<=message(i*32 to (i*32)+31);
--				end loop L2;
--			end loop L1;
--			--SubBlock(i)<= message((i+1)*32 to i*32+31);
--		sub0<=SubBlock(0);
--		sub1<=SubBlock(1);
--		sub2<=SubBlock(2);
--		sub3<=SubBlock(3);
--		sub4<=SubBlock(4);
--		sub5<=SubBlock(5);
--		sub6<=SubBlock(6);
--		sub7<=SubBlock(7);
--		sub8<=SubBlock(8);
--		sub9<=SubBlock(9);
--		sub10<=SubBlock(10);
--		sub11<=SubBlock(11);
--		sub12<=SubBlock(12);
--		sub13<=SubBlock(13);
--		sub14<=SubBlock(14);
--		sub15<=SubBlock(15);
--		
--		for i in 0 to 15 loop
--			memAddr<=std_logic_vector(to_unsigned(i,4));
--			memData<=SubBlock(i);
			
--		end loop;
		outBit<=output;
		
		messsageLenVecotr<= messageLength;
		end process;
end behavioral;