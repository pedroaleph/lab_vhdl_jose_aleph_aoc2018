--- codigo retirado https://en.wikibooks.org/wiki/VHDL_for_FPGA_Design/JK_Flip_Flop
--- acesso em: 21/10/1---IDE quartus prime lite edition 18.1
---Registrador flip-flop tipo JK
---contém quatro entradas e duas saída do tipo binário(J e K, Set e Reset, Clock, Q e Not_Q, respectivamente)
---possui uma variável temp para receber os valores durante o processo e depois é atruída a Q
---quando inicia se o processo, ele aguada-rá até aja uma transmissão no Clock para 1 
---Set e Reset representam o estado, Caso Set o resultado irá prosseguir, e Reset, irá resetar
---para cada combinação de J e K, depois de confirmar o estado, temp irá prosseguir para um resultado
---e ao final este resultado é atribuido a Q
library ieee;
use ieee.std_logic_1164.all;

entity TypeJK is
port(	
	J:	in std_logic;
	K: in std_logic;
	Set: in std_logic;
	Reset: in std_logic;
	Clock: in std_logic;
	Q:	out std_logic;
	not_Q: out std_logic
);
end TypeJK;


architecture behavior of TypeJK is
	signal temp : std_logic;
begin
	process(J,K,Set, Reset, Clock)
	begin
	if (Clock='1' and Clock'event) then
			if(Reset='1') then temp <= '0';
			elsif(Set ='1') then
				if(J='0' and K='1') then temp <= '0';
				elsif(J='1' and K='0') then temp <= '1';
				elsif (J='0' and K='0') then temp <= temp;
				elsif (J='1' and K='1') then temp <= not (temp);
				end if;
			end if;
		end if;
	end process;
	Q <= temp;
	not_Q <= not(temp);
	 
end behavior;