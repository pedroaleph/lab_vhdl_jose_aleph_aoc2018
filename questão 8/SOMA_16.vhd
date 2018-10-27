library ieee;
use ieee.std_logic_1164.all;
use Ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity SOMA_16 is 
port(
	A, B	: in 	std_logic_vector(15 downto 0);
	cin 	: in 	std_logic;
	cout 	: out	std_logic;
	sum	: out std_logic_vector(15 downto 0)
);
end entity SOMA_16;

architecture adder of SOMA_16 is

begin 

	process(A, B, cin)

		variable soma	: std_logic_vector (15 downto 0);
		variable c	  	: std_logic;
	
		begin
		
		c := cin;
		for i in 0 to 15 loop
		soma(i) := A(i) xor B(i) xor C;
		c := (A(i) and B(i)) or ((A(i) xor B(i)) and c);
		end loop;

	cout <= c;
	sum <= soma;

	end process;

end adder;