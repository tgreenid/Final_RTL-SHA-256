library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.sha256_datatypes.all;
use work.sha256_constants.all;

entity CompressionFunction is
port(
      clock 		: in std_logic;
		lastBlock   : in boolean;
		w				: in padded_message_block_array;
	   k				: in std_logic_vector(63 downto 0);	
      digest 		: out std_logic_vector( 255 downto 0 )
    );
end entity;

architecture behaviour of CompressionFunction is
  signal H, digest : std_logic_vector( 255 downto 0 ) ;
  signal a : std_logic_vector( 31 downto 0 ):=H0; 
  signal b : std_logic_vector( 31 downto 0 ):=H1;
  signal c : std_logic_vector( 31 downto 0 ):=H2;
  signal d : std_logic_vector( 31 downto 0 ):=H3;
  signal e : std_logic_vector( 31 downto 0 ):=H4;
  signal f : std_logic_vector( 31 downto 0 ):=H5;
  signal g : std_logic_vector( 31 downto 0 ):=H6;
  signal h : std_logic_vector( 31 downto 0 ):=H7;
  signal temp : padded_message_block_array:=w;
  signal T1, T2, Sigma0, Sigma1, maj, ch : std_logic_vector( 31 downto 0 );
  signal compressed : boolean := false;
  signal lastBlock : boolean;
  signal j : std_logic:= 0;

	
begin
  sha256_compress: process( clock, reset, enable, lastBlock )	 
    begin                
          if j < 64 then
				sigma1   <= Z1(e);
				ch 	  <= std_logic_vector((e and f) xor (not(e) and g));
				T1 := std_logic_vector(unsigned(h)+ unsigned(temp(j)) + unsigned(sigma1) + unsigned(ch) + unsigned(k_array(j)));
				sigma0   <= Z0(a);
				maj 	  <= std_logic_vector((a and b) xor (a and c) xor (b and c));
            T2 := std_logic_vector(unsigned(maj) + unsigned(sigma0));
				
            h <= g;
            g <= f;
            f <= e;
            e <= std_logic_vector( unsigned( d ) + unsigned( T1 ) );
            d <= c;
            c <= b;
            b <= a;
            a <= std_logic_vector( unsigned( T1 ) + unsigned( T2 ) );
            j := j + 1;
          else
            compressed <= true;
          end if;
        if compressed then
          H( 31 downto 0 ) <= std_logic_vector( unsigned ( H( 31 downto 0 ) ) + unsigned( a ) );
          H( 63 downto 32 ) <= std_logic_vector( unsigned (  H( 63 downto 32 ) ) + unsigned( b ) );
          H( 95 downto 64 ) <= std_logic_vector( unsigned ( H( 95 downto 64 ) ) + unsigned( c ) );
          H( 127 downto 96 ) <= std_logic_vector( unsigned ( H( 127 downto 96 ) ) + unsigned( d ) ); 
          H( 159 downto 128 ) <= std_logic_vector( unsigned( H( 159 downto 128 ) ) + unsigned( e ) );
          H( 191 downto 160 ) <= std_logic_vector( unsigned( H( 191 downto 160 ) ) + unsigned( f ) );
          H( 223 downto 192 ) <= std_logic_vector( unsigned( H( 223 downto 192 ) ) + unsigned( g ) );
          H( 255 downto 224 ) <= std_logic_vector( unsigned( H( 255 downto 224 ) ) + unsigned( h ) );
        end if; 
		  
		  if lastBlock then
			digest( 31 downto 0 ) := H( 255 downto 224 );
			digest( 63 downto 32 ) := H( 223 downto 192 );
			digest( 95 downto 64 ) := H( 191 downto 160 );
			digest( 127 downto 96 ) := H( 159 downto 128 );
			digest( 159 downto 128 ) := H( 159 downto 128 );
			digest( 191 downto 160 ) := H( 255 downto 224 );
			digest( 223 downto 192 ) := H( 63 downto 32 );
			digest( 255 downto 224 ) := H( 31 downto 0 );
			end if
  end process sha256_compress;

end architecture behaviour;