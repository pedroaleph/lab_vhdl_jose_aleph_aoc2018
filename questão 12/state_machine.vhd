--- conteúdo usado como base : https://www.youtube.com/watch?v=ogjjk4OrA9c 
library ieee;
use ieee.std_logic_1164.all;

entity state_machine is
port(
	turn: in std_logic;
	Clock: in std_logic;	
	P: in std_logic;
	state: out std_logic_vector(1 downto 0)
);
end state_machine;

architecture behavior of state_machine is
	type states is (A,B,C,D);
	signal status : states;
	signal R: std_logic;
begin
	process(turn,Clock)
	begin
		if (turn ='1') then
		status <= A;
		R <= '0';
		elsif (Clock='1' and Clock'event) then
			 case status is
				when A => if P = '1' then status <= B;
				end if;
				when B =>  if P = '1' then status <= C;
				end if;
				when C =>  if P = '1' then status <= D; R <= '1';
				end if;
				when D =>  if P = '1' then status <= B; R <= '0';
					elsif P = '0' then status <= A; R <= '0';
				end if;
			end case;
		end if;
	end process;
	with status select
		state <= "00" when A,
					"01" when B,
					"10" when C,
					"11" when D;
end behavior;