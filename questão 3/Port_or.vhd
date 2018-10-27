library ieee;
use ieee.std_logic_1164.all;


entity Port_or is
	port( X: in std_logic;
			Y: in std_logic;
			Z: out std_logic
	);
end Port_or;

architecture behavior of Port_or is
begin
	Z <= (X or Y);
end behavior;