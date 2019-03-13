library ieee;
use ieee.std_logic_1164.all;

package sha256_datatypes is

	-- Type for storing the expanded message blocks, W_j:
	type padded_message_block_array is array(0 to 63) of std_logic_vector(31 downto 0);
	
	-- Type for storing the constant array, K_j:
	type k_array is array(0 to 63) of std_logic_vector(31 downto 0);
end package;