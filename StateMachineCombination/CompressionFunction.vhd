library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.sha256_datatypes.all;
use work.sha256_constants.all;
use work.sha256_msfunctions.all;
use work.sha256_Pfunctions.all;

pport(
      clock 		: in std_logic;
		state_out : out std_logic_vector(2 downto 0);
		--compressdone : out std_logic;
		--n,l : out integer;
		--mes:out std_logic_vector(0 to 511);
		--len:out std_logic_vector(0 to 63);
		--kval 			: out std_logic_vector(6 downto 0);
--      digest 		: out std_logic_vector( 255 downto 0);
--		
--	   message_t,output_t		: out std_logic_vector(0 to 511);
--		messageLength_t : out std_LOGIC_VECTOR(0 to 63);
--		len_unsigned_t,k0_t : out unsigned(0 to 63);
--		nBlocks_t,x_t,l,count	:out integer;
--		lastBlock_t   : out std_logic;
--		--blockSet_t 	: out std_logic;
--		readyBlock_t   : out std_logic;
		
--		a_t : out std_logic_vector( 31 downto 0 ); 
--		b_t : out std_logic_vector( 31 downto 0 ); 
--		c_t : out std_logic_vector( 31 downto 0 ); 
--		d_t : out std_logic_vector( 31 downto 0 ); 
--		e_t : out std_logic_vector( 31 downto 0 ); 
--		f_t : out std_logic_vector( 31 downto 0 ); 
--		g_t : out std_logic_vector( 31 downto 0 ); 
--		h_t : out std_logic_vector( 31 downto 0 );
--		
--		T1_t : out std_logic_vector( 31 downto 0 ); 
--		T2_t : out std_logic_vector( 31 downto 0 );
--		j_t : out integer;
		
--		temp : out std_LOGIC_VECTOR(31 downto 0);
		--H_test : out std_LOGIC_VECTOR(255 downto 0);
		--sched 		: out std_logic_vector(31 downto 0);
		--sched1 		: out std_logic_vector(31 downto 0);
		--sched32 		: out std_logic_vector(31 downto 0);
--		sched63 		: out std_logic_vector(31 downto 0);
--		outmem		: out std_logic_vector(31 downto 0)
		--temp1		: out std_logic_vector(31 downto 0);
		--addrout 		: out std_logic_vector(3 downto 0)
		
		   sw0: IN STD_LOGIC;
			sw1: IN STD_LOGIC;
			sw2: IN STD_LOGIC;
			led:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led1:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led2:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led3:OUT STD_LOGIC_VECTOR (1 TO 7);
         led4:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led5:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led6:OUT STD_LOGIC_VECTOR (1 TO 7);
	      led7:OUT STD_LOGIC_VECTOR (1 TO 7)
    );
end entity;

architecture behaviour of CompressionFunction is
--Digest Signals
  signal Hdigest : std_logic_vector( 255 downto 0 ):= H0&H1&H2&H3&H4&H5&H6&H7;
  signal digest : std_logic_vector( 255 downto 0 );
  signal a : std_logic_vector( 31 downto 0 ):=H0; 
  signal b : std_logic_vector( 31 downto 0 ):=H1;
  signal c : std_logic_vector( 31 downto 0 ):=H2;
  signal d : std_logic_vector( 31 downto 0 ):=H3;
  signal e : std_logic_vector( 31 downto 0 ):=H4;
  signal f : std_logic_vector( 31 downto 0 ):=H5;
  signal g : std_logic_vector( 31 downto 0 ):=H6;
  signal h : std_logic_vector( 31 downto 0 ):=H7;
  
  --Compression Function Signals
  signal compressed : std_logic := '0';
  signal lastB : boolean;
  signal j			 : integer:=0;
  signal memaddr 	: std_logic_vector(3 downto 0):= "0000";
  signal memout 	: std_logic_vector(31 downto 0);
  signal flag 	: std_logic:='0';
  
  --Message Scheduler Signals
  signal schedule : padded_message_block_array;
  signal k		  : integer:=0;
  signal gateval1 : std_logic_vector(6 downto 0) := "1000000";
  signal gateval2 : std_logic_vector(6 downto 0) := "0010000";
  
      --Compression Function Signals
  signal T1 :std_logic_vector( 31 downto 0 ) := std_logic_vector(unsigned(h)+ unsigned(schedule(0)) + unsigned(Z1(e)) + unsigned(ch(e,f,g)) + unsigned(constants(0)));
  signal T2 :std_logic_vector( 31 downto 0 ) := std_logic_vector(unsigned(maj(a,b,c)) + unsigned(Z0(a)));
  
  --PreProcessor Funciton Signals
	signal ss : string(1 to 23) :="Tabitha Greenidge ! @ #";
	signal output:std_logic_vector(0 to ss'length*8 +(447- ss'length*8) mod 512+64);
	signal message:std_logic_vector(0 to 511);
	signal messageLength : std_LOGIC_VECTOR(0 to 63);
	signal len_unsigned,k0 : unsigned(0 to 63):=to_unsigned(0,64);
	signal nBlocks,x,o:integer:=0;
	signal lastBlock   : std_logic:='0';
	signal blockSet 	: std_logic;
	signal readyBlock   : std_logic:='1';
	type sb is array(0 to 15) of std_logic_vector(31 downto 0);
	signal SubBlock: sb;
	
	
   --Seven Seg signals
   signal sel : std_logic_vector(2 downto 0);
   signal Rdigest : std_logic_vector(31 downto 0);

  
  --FSM Signals
		type states is(
	Ready,
	PreProcessor,
	ScheduleMessage,
	CompressBlock,
	Append,
	Idle
);
	signal current_state : states:= Ready;
	
--	COMPONENT PaddedMessageRegFile IS
--	PORT
--	(clk : in  STD_LOGIC;
--    wen : in  STD_LOGIC;
--    addr : in  STD_LOGIC_VECTOR (3 downto 0);
--    dataIn : in  STD_LOGIC_VECTOR (31 downto 0);
--    dataOut : out  STD_LOGIC_VECTOR (31 downto 0)
--	);
--	END COMPONENT;

	COMPONENT sevsegdebug is 
PORT(    R:IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	      leds:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds1:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds2:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds3:OUT STD_LOGIC_VECTOR (1 TO 7);
         leds4:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds5:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds6:OUT STD_LOGIC_VECTOR (1 TO 7);
	      leds7:OUT STD_LOGIC_VECTOR (1 TO 7));
END COMPONENT;



	
begin


--	paddedmessage : PaddedMessageRegFile
--	PORT MAP(
--			clk => clock ,
--			wen => '0',
--			addr => memaddr,
--			dataIn	=> x"00000000",
--			dataOut	=> memout
--	);

	sevseg : sevsegdebug
	PORT MAP( R=>Rdigest,
				 leds=>led,
				 leds1=>led1,
				 leds2=>led2,
				 leds3=>led3,
				 leds4=>led4,
				 leds5=>led5,
				 leds6=>led6,
				 leds7=>led7	 
	);
	
	sel<= sw2&sw1&sw0;

	
process(clock,lastBlock, blockSet)
	begin

	if(clock'Event and clock='1')then
		case current_state is
		
		when Ready=>
			state_out<="000";
			readyBlock<='1';
			lastBlock<='0';
			current_state<=PreProcessor;
			
			
		when PreProcessor =>
		state_out<="001";
--			readyBlock_t<=readyBlock;
--			lastBlock_t<=lastBlock;
			if (readyBlock='1') then
				output<=std_LOGIC_VECTOR(to_unsigned(0,output'length));
				len_unsigned<=shift_left(to_unsigned(ss'length,64),3);
				for m in  ss'range loop
					output((8*m)-8 to (8*m)-1)<=std_logic_vector(to_unsigned(character'pos(ss(m)),8));
				end loop;
				messageLength<=std_logic_vector(shift_left(to_unsigned(ss'length,64),3));
				output(ss'length*8)<='1'after 10 ns;
				output(output'length-64 to output'LENGTH-1)<=std_logic_vector(shift_left(to_unsigned(ss'length,64),3));
				readyBlock<='0';
				current_state<=Preprocessor;
			elsif(readyBlock='0') then
				for m in 0 to 15 loop
					SubBlock(m)<= output(m*32 to (m*32)+31);
				end loop;
				lastBlock<='1';
				current_state <= ScheduleMessage;
			end if;
			
			
			when ScheduleMessage =>
			state_out<="010";
					readyBlock <= '0';					
					if k < 16 then					-- If k < 16 then the message scheduler is the padded input message
--						outmem <=memout;
--						addrout <= memaddr;
--						outmem<=SubBlock(k);
						schedule(k) <= SubBlock(k);
						k <= k+1;
--						memaddr <= std_logic_vector(unsigned(memaddr) + 1);
					elsif(k < 64) then									-- Else, W_k = s1(W[k]-2) + W[k]-7 + s0(W[k]-15) + W[k]-16
						schedule(k) <= std_logic_vector(unsigned(s1(schedule(k-2))) + unsigned(schedule(k-7)) + unsigned(s0(schedule(k-15))) + unsigned(schedule(k-16)));
						k <= k+1;
					else
					  a <=H0; 
					  b <=H1;
					  c <=H2;
					  d <=H3;
					  e <=H4;
					  f <=H5;
					  g <=H6;
					  h <=H7;
					  T1 <= std_logic_vector(unsigned(H7)+ unsigned(schedule(0)) + unsigned(Z1(H4)) + unsigned(ch(H4,H5,H6)) + unsigned(constants(0)));
					  T2 <= std_logic_vector(unsigned(maj(H0,H1,H2)) + unsigned(Z0(H0)));
						current_state<=CompressBlock;
					end if;
					
				
				when CompressBlock =>
				state_out<="011";
					readyBlock <= '0';
			
							if j<64 then
									h <= g;
									g <= f;
									f <= e;
									e <= std_logic_vector( unsigned( d ) + unsigned( T1));
									d <= c;
									c <= b;
									b <= a ;
									a <= std_logic_vector( unsigned( T1 ) + unsigned(T2));
									
									j <= j + 1;
									
--									j_t <= j;
--									a_t <=a;
--									b_t <=b;
--									c_t <=c;
--									d_t <=d;
--									e_t <=e;
--									f_t <=f;
--									g_t <=g;
--									h_t <=h;
									
									T1 <= std_logic_vector(unsigned(g)+ unsigned(schedule(j+1)) + unsigned(Z1(std_logic_vector( unsigned( d ) + unsigned( T1)))) + unsigned(ch(std_logic_vector( unsigned( d ) + unsigned( T1)),e,f)) + unsigned(constants(j+1)));
									T2 <= std_logic_vector(unsigned(maj(std_logic_vector( unsigned( T1 ) + unsigned(T2)),a,b)) + unsigned(Z0(std_logic_vector( unsigned( T1 ) + unsigned(T2)))));
--									T1_t <= T1;
--									T2_t <= T2;
							 else
					
							compressed <= '1';
							 end if;
							 
						  if (compressed = '1') then
									 Hdigest( 255 downto 224 ) <= std_logic_vector( unsigned ( Hdigest( 255 downto 224 ) ) + unsigned( a ) );
									 Hdigest( 223 downto 192 ) <= std_logic_vector( unsigned (  Hdigest( 223 downto 192 ) ) + unsigned( b ) );
									 Hdigest( 191 downto 160 ) <= std_logic_vector( unsigned ( Hdigest( 191 downto 160 ) ) + unsigned( c ) );
									 Hdigest( 159 downto 128 ) <= std_logic_vector( unsigned ( Hdigest( 159 downto 128 ) ) + unsigned( d ) ); 
									 Hdigest( 127 downto 96 ) <= std_logic_vector( unsigned( Hdigest( 127 downto 96 ) ) + unsigned( e ) );
									 Hdigest( 95 downto 64 ) <= std_logic_vector( unsigned( Hdigest( 95 downto 64 ) ) + unsigned( f ) );
									 Hdigest( 63 downto 32 ) <= std_logic_vector( unsigned( Hdigest( 63 downto 32 ) ) + unsigned( g ) );
									 Hdigest( 31 downto 0 ) <= std_logic_vector( unsigned( Hdigest( 31 downto 0 ) ) + unsigned( h ) );
							  if (lastBlock = '1') then
									current_state<=Append;
								else
									current_state <= PreProcessor;
							  end if;
						  end if; 
						  
								
				when Append =>
				state_out<="100";
					readyBlock <= '0';
					
					digest( 31 downto 0 ) <= Hdigest( 31 downto 0 );
					digest( 63 downto 32 ) <= Hdigest( 63 downto 32 );
					digest( 95 downto 64 ) <= Hdigest( 95 downto 64 );
					digest( 127 downto 96 ) <= Hdigest( 127 downto 96 );
					digest( 159 downto 128 ) <= Hdigest( 159 downto 128 );
					digest( 191 downto 160 ) <= Hdigest( 191 downto 160 );
					digest( 223 downto 192 ) <= Hdigest( 223 downto 192 );
					digest( 255 downto 224 ) <= Hdigest( 255 downto 224 );
					
					
					current_state<=Idle;
					
					
				when Idle =>
				state_out<="111";
				current_state<=Idle;
--				readyBlock_t<=readyBlock;
--				lastBlock_t<=lastBlock;
											
						
	end case;
end if;
--len_unsigned_t<=len_unsigned;
--messageLength_t<=messageLength;
--output_t<=output;
--outmem<=SubBlock(0);
--temp<=SubBlock(15);
----	n<=nBlocks;
--	--mes<=output;
--	--len<=messageLength;
----	sched <= a ;--schedule(0);
----	sched1 <= b; --schedule(1);
----	sched32 <= schedule(32);
--	sched63 <= schedule(63);
----	compressdone <= compressed;
----	temp1 <= T1;
----	kval <= k;
--j_t<=j;
end process;

						with sel select
								Rdigest <= digest(255 downto 224) when "000",
											  digest(223 downto 192) when "001",
											  digest(191 downto 160) when "010",
											  digest(159 downto 128) when "011",
											  digest(127 downto 96) when "100",
											  digest(95 downto 64) when "101",
											  digest(63 downto 32) when "110",
											  digest(31 downto 0) when "111",
											  x"00000000" when others;

end architecture behaviour;