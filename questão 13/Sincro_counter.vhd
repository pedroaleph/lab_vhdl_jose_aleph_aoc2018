library ieee;
use ieee.std_logic_1164.all;

entity Sincro_counter is
port (
	Clk: in std_logic;
	Clear: in std_logic;
	Q1: out std_logic;
	Q2: out std_logic
);
end Sincro_counter;

architecture behavior of Sincro_counter is
	component TypeJK is
	port(
	J:	in std_logic;
	K: in std_logic;
	Set: in std_logic;
	Reset: in std_logic;
	Clock: in std_logic;
	Q:	out std_logic
	);
	end component;
	
	constant N: std_logic := '1';
	signal temp: std_logic;
	signal temp2: std_logic;
	signal S1: std_logic;
	signal S2: std_logic;
begin
	component_A : TypeJK port map(
		J => N, K => N, Set => N, Reset => temp2,
		Clock => temp, Q => S1
	);
	component_B : TypeJK port map(
		J => S1, K => S1, Set => N, Reset => temp2,
		Clock => S1, Q => S2
	);
	process(Clk,Clear)
	begin
		if (Clk='1' and Clk'event) then
			temp <= Clk;
			temp2 <= Clear;
			Q1 <= S1;
			Q2 <= S2;
		end if;	
	end process;
end behavior;
