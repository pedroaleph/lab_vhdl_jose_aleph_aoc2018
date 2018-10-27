---questão 3, IDE quartus prime lite edition 18.1
---conteúdo usado como base: https://www.youtube.com/watch?v=ZYJZaC9gjIE
---contém duas entradas(A e B) e uma saída(Y), do tipo binário
---durante o processo utiliza-se componentes not, and e or
---primero as entradas são divididas em duas possibilidades utilizando not (not A e not B, ainda mantém os valores iniciais)
---em seguida os valores vão para duas portas and (A e not B, not A e B)
---ao fim o resultado de ambas segue para a porta or e de lá saíra o resultado final
---utiliza-se variáveis temporarias para as atribuições durante o processo
library ieee;
use ieee.std_logic_1164.all;

entity Port_xor is
port(
	A : in std_logic;
	B : in std_logic;
	Y : out std_logic
);
end Port_xor;

architecture behavior of Port_xor is
	component Port_not is
	port( X: in std_logic;
			Y: out std_logic);
	end component;
	component Port_and is
	port( X: in std_logic;
			Y: in std_logic;
			Z: out std_logic);
	end component;
	component Port_or is
	port( X: in std_logic;
			Y: in std_logic;
			Z: out std_logic);
	end component;
	
	signal not_A: std_logic;
	signal not_B: std_logic;
	signal and_A: std_logic;
	signal and_B: std_logic;
	signal or_AB: std_logic;
begin
	Not_componentA : Port_not port map(
		X => A,
		Y => not_A
	);
	Not_componentB : Port_not port map(
		X => B,
		Y => not_B
	);
	And_componentA : Port_and port map(
		X => not_A,
		Y => B,
		Z => and_A
	);
	And_componentB : Port_and port map(
		X => A,
		Y => not_B,
		Z => and_B
	);
	Or_component : Port_or port map(
		X => and_A,
		Y => and_B,
		Z => or_AB
	);
	Y <= or_AB;	
end behavior;