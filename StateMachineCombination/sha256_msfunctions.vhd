library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.sha256_datatypes.all;
use work.sha256_constants.all;

package sha256_msfunctions is

	-- Small sigma functions:
	function s0(x : std_logic_vector) return std_logic_vector;
	function s1(x : std_logic_vector) return std_logic_vector;
	
	-- Big Sigma Functions
	function Z0(x : std_logic_vector) return std_logic_vector;
	function Z1(x : std_logic_vector) return std_logic_vector;
	
	--Mathematical 
	function ch(x, y, z : std_logic_vector) return std_logic_vector;
	function maj(x, y, z : std_logic_vector) return std_logic_vector;

end package sha256_msfunctions;

package body sha256_msfunctions is

	function s0(x : std_logic_vector) return std_logic_vector is
	begin
		return std_logic_vector(rotate_right(unsigned(x), 7) xor rotate_right(unsigned(x), 18) xor shift_right(unsigned(x), 3));
	end function s0;

	function s1(x : std_logic_vector) return std_logic_vector is
	begin
		return std_logic_vector(rotate_right(unsigned(x), 17) xor rotate_right(unsigned(x), 19) xor shift_right(unsigned(x), 10));
	end function s1;

	function Z0(x : std_logic_vector) return std_logic_vector is
	begin
		return std_logic_vector(rotate_right(unsigned(x), 2) xor rotate_right(unsigned(x), 13) xor rotate_right(unsigned(x), 22));
	end function Z0;

	function Z1(x : std_logic_vector) return std_logic_vector is
	begin
		return std_logic_vector(rotate_right(unsigned(x), 6) xor rotate_right(unsigned(x), 11) xor rotate_right(unsigned(x), 25));
	end function Z1;
	
	function ch(x, y, z : std_logic_vector) return std_logic_vector is
	begin
		return (x and y) xor ((not x) and z);
	end function ch;

	function maj(x, y, z : std_logic_vector) return std_logic_vector is
	begin
		return (x and y) xor (x and z) xor (y and z);
	end function maj;
	
end package body sha256_msfunctions;