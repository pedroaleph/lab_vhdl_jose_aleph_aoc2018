library ieee;
use ieee.std_logic_1164.all;


entity Port_not is
	port( X: in std_logic;
			Y: out std_logic
	);
end Port_not;

architecture behavior of Port_not is
begin
	Y <= not(X);
end behavior;
