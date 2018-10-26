library ieee;
use ieee.std_logic_1164.all;


entity Port_and is
	port( X: in std_logic;
			Y: in std_logic;
			Z: out std_logic
	);
end Port_and;

architecture behavior of Port_and is
begin
	Z <= (X and Y);
end behavior;