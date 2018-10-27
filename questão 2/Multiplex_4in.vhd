---conteúdo usado como base: https://www.youtube.com/watch?v=fPJsB-yXi3M&t=3s
---questão 2, IDE quartus prime lite edition 18.1
---contém contém 6 entradas, e uma saída, do tipo binário
---duas entradas(S0 e S1) receberá os valores que são usados para indicar qual entrada das outras quatro entrndas (A,B,C,D) o multiplexador irá utilizar para atribuir o seu valor a saída Y
---utiliza uma variavel para atribuir um valor a Y somente ao final do processo 
library ieee;
use ieee.std_logic_1164.all;

entity Multiplex_4in is 
port (
	S0: in std_logic;
	S1: in std_logic;
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	D: in std_logic;
	Y: out std_logic
);
end Multiplex_4in;

architecture behavior of Multiplex_4in is
	signal temp: std_logic;
begin
	process(S0,S1,A,B,C,D)
	begin
		if(S0='0' and S1='0') then temp <= A;
		elsif(S0='0' and S1='1') then temp <= B;
		elsif(S0='1' and S1='0') then temp <= C;
		elsif(S0='1' and S1='1') then temp <= D;
		end if;
	end process;
	Y <= temp;
end behavior;