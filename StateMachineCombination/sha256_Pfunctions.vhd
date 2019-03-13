library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.sha256_datatypes.all;
use work.sha256_constants.all;

package sha256_Pfunctions is

	function numBlock(output : std_logic_vector) return integer;
	function mLength(ss : string;len_unsigned:unsigned) return unsigned;
	function numZeros(len_unsigned : unsigned;k0:unsigned) return unsigned;
	function preProcess(ss : string;output:std_logic_vector;k0:unsigned;len_unsigned:unsigned;messageLength:std_logic_vector) return std_logic_vector;
	function setBlock(output : std_logic_vector;message : std_logic_vector; i : integer) return std_logic_vector;


end package sha256_Pfunctions;

package body sha256_Pfunctions is
	function numBlock(output : std_logic_vector) return integer is
	
	variable n :integer:=0;
	begin
		n:=output'length/512;
	return integer(n);
	end function numBlock;
	
	function mLength(ss : string;len_unsigned:unsigned) return unsigned is
	variable l:unsigned(0 to 63):=len_unsigned;
	begin
		l:=shift_left(to_unsigned(ss'length,64),3);
	return unsigned(l);
	end function mLength;
	
	function numZeros(len_unsigned : unsigned;k0:unsigned) return unsigned is
	variable k : unsigned(0 to 63):=k0;
	begin
		k:=(447- len_unsigned) mod 512;	
	return (k);
	end function numZeros;
	
	function preProcess(ss : string;output: std_logic_vector;k0:unsigned;len_unsigned:unsigned;messageLength:std_logic_vector) return std_logic_vector is
	variable o: std_logic_vector(0 to output'length-1) :=output;
	begin
		o(TO_INTEGER(len_unsigned)):='1';
				for i in 1 to 447 loop
					exit when i=((TO_INTEGER(k0))+1);
					o((TO_INTEGER(len_unsigned)) +i):='0'; 
				end loop;				
				for i in  ss'range loop
					o((8*i)-8 to (8*i)-1):=std_logic_vector(to_unsigned(character'pos(ss(i)),8));
				end loop;
				for i in 0 to 63 loop
					o(o'length-64+i):=messageLength(i);
				end loop;
	return(o);
	end function preProcess;

	function setBlock(output : std_logic_vector;message : std_logic_vector; i : integer) return std_logic_vector is
	variable m : std_logic_vector(0 to 511):=message;
	variable x:integer:=i;
	begin
		if(x=1)then
			for i in 0 to 511 loop
				m(i):=output(x*512+i);
			end loop;
		else	
			x:=x+1;
			for i in 0 to 511 loop
				m(i):=output(x*512+i);
			end loop;
		end if;
	return(m);
	end function setBlock;
	
end package body sha256_Pfunctions;