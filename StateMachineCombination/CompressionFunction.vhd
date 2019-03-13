library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.sha256_datatypes.all;
use work.sha256_constants.all;
use work.sha256_msfunctions.all;
use work.sha256_Pfunctions.all;

entity CompressionFunction is
port(
      clock 		: in std_logic;
		state : out std_logic_vector(2 downto 0);
		--compressdone : out std_logic;
		--n,l : out integer;
		--mes:out std_logic_vector(0 to 511);
		--len:out std_logic_vector(0 to 63);
		--kval 			: out std_logic_vector(6 downto 0);
      digest 		: out std_logic_vector( 255 downto 0);
		
	   message_t,output_t		: out std_logic_vector(0 to 511);
		messageLength_t : out std_LOGIC_VECTOR(0 to 63);
		len_unsigned_t,k0_t : out unsigned(0 to 63);
		nBlocks_t,x_t,l	:out integer;
		lastBlock_t   : out std_logic;
		--blockSet_t 	: out std_logic;
		readyBlock_t   : out std_logic;
		
		--H_test : out std_LOGIC_VECTOR(255 downto 0);
		--sched 		: out std_logic_vector(31 downto 0);
		--sched1 		: out std_logic_vector(31 downto 0);
		--sched32 		: out std_logic_vector(31 downto 0);
		--sched63 		: out std_logic_vector(31 downto 0);
		outmem		: out std_logic_vector(31 downto 0)
		--temp1		: out std_logic_vector(31 downto 0);
		--addrout 		: out std_logic_vector(3 downto 0)
    );
end entity;

architecture behaviour of CompressionFunction is
--Digest Signals
  signal Hdigest : std_logic_vector( 255 downto 0 ):= H0&H1&H2&H3&H4&H5&H6&H7;
  signal a : std_logic_vector( 31 downto 0 ):=H0; 
  signal b : std_logic_vector( 31 downto 0 ):=H1;
  signal c : std_logic_vector( 31 downto 0 ):=H2;
  signal d : std_logic_vector( 31 downto 0 ):=H3;
  signal e : std_logic_vector( 31 downto 0 ):=H4;
  signal f : std_logic_vector( 31 downto 0 ):=H5;
  signal g : std_logic_vector( 31 downto 0 ):=H6;
  signal h : std_logic_vector( 31 downto 0 ):=H7;
  
  --Compression Function Signals
  signal T1, T2, Sigma0, Sigma1, maj, ch : std_logic_vector( 31 downto 0 );
  signal compressed : std_logic := '0';
  signal lastB : boolean;
  signal j			 : std_logic_vector(6 downto 0):="0000000";
  signal memaddr 	: std_logic_vector(3 downto 0):= "0000";
  signal memout 	: std_logic_vector(31 downto 0);
  signal flag 	: std_logic:='0';
  
  --Message Scheduler Signals
  signal schedule : padded_message_block_array;
  signal k		  : std_logic_vector(6 downto 0) := "0000000";
  signal gateval1 : std_logic_vector(6 downto 0) := "1000000";
  signal gateval2 : std_logic_vector(6 downto 0) := "0010000";
  
  --PreProcessor Funciton Signals
	signal ss : string(1 to 3) :="abc";
	signal output:std_logic_vector(0 to ss'length*8 +(447- ss'length*8) mod 512+64);
	signal message:std_logic_vector(0 to 511);
	signal messageLength : std_LOGIC_VECTOR(0 to 63);
	signal len_unsigned,k0 : unsigned(0 to 63):=to_unsigned(0,64);
	signal nBlocks,x:integer:=0;
	signal lastBlock   : std_logic:='0';
	signal blockSet 	: std_logic;
	signal readyBlock   : std_logic:='1';
	type sb is array(0 to 15) of std_logic_vector(31 downto 0);
	signal SubBlock: sb;

  
  --FSM Signals
		type states is(
	Idle,
	PreProcessor,
--	Ready,
	ScheduleMessage,
	CompressBlock,
	Append
);
	signal current_state : states:=Idle;
	
--	COMPONENT PaddedMessageRegFile IS
--	PORT
--	(clk : in  STD_LOGIC;
--    wen : in  STD_LOGIC;
--    addr : in  STD_LOGIC_VECTOR (3 downto 0);
--    dataIn : in  STD_LOGIC_VECTOR (31 downto 0);
--    dataOut : out  STD_LOGIC_VECTOR (31 downto 0)
--	);
--	END COMPONENT;


	
begin


--	paddedmessage : PaddedMessageRegFile
--	PORT MAP(
--			clk => clock ,
--			wen => '0',
--			addr => memaddr,
--			dataIn	=> x"00000000",
--			dataOut	=> memout
--	);


	
process(clock,lastBlock, blockSet)
	begin

	if(clock'Event and clock='1')then
		case current_state is
		
		when Idle =>
		state<="000";
		if(ss = "aaa")then
			current_state<=Idle;
		else
			current_state<=PreProcessor;
			end if;
			
		when PreProcessor =>
		state<="001";
		if (lastBlock='1')then
			ss<="aaa";
			current_state<=Idle;
		else
			if (readyBlock='1') then
				nBlocks<= output'length/512;
				nBlocks_t <= output'length/512;
				l<=output'length;
				if(nBlocks /= 0)then
						x<=1;
				end if;
				
				x_t <= x;

--				len_unsigned_t <= shift_left(to_unsigned(ss'length,64),3);
--				--len_unsigned<=len_unsigned_t;
--				messageLength_t<= std_logic_vector(shift_left(to_unsigned(ss'length,64),3));
--				k0_t <= (447- (shift_left(to_unsigned(ss'length,64),3))) mod 512;
--				output_t<=preProcess(ss,output,k0,shift_left(to_unsigned(ss'length,64),3),std_logic_vector(shift_left(to_unsigned(ss'length,64),3)));
--				message_t <= setBlock(output,message,x);
				lastBlock_t<=lastBlock;
				readyBlock_t<=readyBlock;
				len_unsigned<=shift_left(to_unsigned(ss'length,64),3);
				messageLength<=std_logic_vector(shift_left(to_unsigned(ss'length,64),3));
				k0<=(447- (shift_left(to_unsigned(ss'length,64),3))) mod 512;	
				output<=preProcess(ss,output,k0,shift_left(to_unsigned(ss'length,64),3),messageLength);
				message<=setBlock(output,message,x) after 20 ns;
				
				len_unsigned_t<=len_unsigned after 10 ns;
				messageLength_t<=messageLength after 10 ns;
				k0_t<=k0 after 10 ns;
				output_t<=output after 10 ns;
				message_t<=message after 10 ns;
				L1:for ii in 0 to 15 loop
					L2:for jj in  31 downto 0 loop
						SubBlock(ii)<=message(ii*32 to (ii*32)+31);
					end loop L2;
				end loop L1;
				if(x=(nBlocks))then
						lastBlock<='1';
				else
					lastBlock<='0';
				end if;
			elsif(readyBlock='0')then
					message<=setBlock(output,message,x);
					L3:for ii in 0 to 15 loop
						L4:for jj in  31 downto 0 loop
							SubBlock(ii)<=message(ii*32 to (ii*32)+31);
						end loop L4;
					end loop L3;
				if(x=(nBlocks))then
						lastBlock<='1';
				else
					lastBlock<='0';
				end if;	
			end if;
			current_state<=ScheduleMessage;
		end if;
	
			
			when ScheduleMessage =>
			state<="010";
					readyBlock <= '0';					
					if k < gateval2 then					-- If k < 16 then the message scheduler is the padded input message
--						outmem <=memout;
--						addrout <= memaddr;
						outmem<=SubBlock(to_integer(unsigned(k)));
						schedule(to_integer(unsigned(k))) <= memout;
						k <= std_logic_vector(unsigned(k) + 1);
--						memaddr <= std_logic_vector(unsigned(memaddr) + 1);
					elsif(k < gateval1) then									-- Else, W_k = s1(W[k]-2) + W[k]-7 + s0(W[k]-15) + W[k]-16
						schedule(to_integer(unsigned(k))) <= std_logic_vector(unsigned(s1(schedule(to_integer(unsigned(k)) - 2))) + unsigned(schedule(to_integer(unsigned(k)) - 7)) + unsigned(s0(schedule(to_integer(unsigned(k)) - 15))) + unsigned(schedule(to_integer(unsigned(k)) - 16)));
						k <= std_logic_vector(unsigned(k) + 1);
					else
						current_state<=CompressBlock;
					end if;
				
				when CompressBlock =>
				state<="011";
					readyBlock <= '0';
			
							 if j < gateval1 then
									sigma1   <= Z1(e);
									ch 	  <= (e and f) xor (not(e) and g);
									T1 <= std_logic_vector(unsigned(h)+ unsigned(schedule(to_integer(unsigned(j)))) + unsigned(sigma1) + unsigned(ch) + unsigned(constants(to_integer(unsigned(j)))));
									sigma0   <= Z0(a);
									maj 	  <= std_logic_vector((a and b) xor (a and c) xor (b and c));
									T2 <= std_logic_vector(unsigned(maj) + unsigned(sigma0));
									h <= g;
									g <= f;
									f <= e;
									e <= std_logic_vector( unsigned( d ) + unsigned( T1 ) );
									d <= c;
									c <= b;
									b <= a;
									a <= std_logic_vector( unsigned( T1 ) + unsigned( T2 ) );
									j <= std_logic_vector(unsigned(j) + 1);
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
						  end if; 
						  if (lastBlock = '1') then
								current_state<=Append;
						  else
								current_state<=PreProcessor;
						  end if;
								
				when Append =>
				state<="100";
					readyBlock <= '0';
					
					digest( 31 downto 0 ) <= Hdigest( 31 downto 0 );
					digest( 63 downto 32 ) <= Hdigest( 63 downto 32 );
					digest( 95 downto 64 ) <= Hdigest( 95 downto 64 );
					digest( 127 downto 96 ) <= Hdigest( 127 downto 96 );
					digest( 159 downto 128 ) <= Hdigest( 159 downto 128 );
					digest( 191 downto 160 ) <= Hdigest( 191 downto 160 );
					digest( 223 downto 192 ) <= Hdigest( 223 downto 192 );
					digest( 255 downto 224 ) <= Hdigest( 255 downto 224 );
					
					
					current_state<=PreProcessor;
									
						
	end case;
end if;
--	n<=nBlocks;
	--mes<=output;
	--len<=messageLength;
--	sched <= a ;--schedule(0);
--	sched1 <= b; --schedule(1);
--	sched32 <= schedule(32);
--	sched63 <= schedule(63);
--	compressdone <= compressed;
--	temp1 <= T1;
--	kval <= k;

end process;

end architecture behaviour;