--- codigo retirado de https://pt.wikibooks.org/wiki/VHDL/Flip-flop_d
--- acesso em 21/10/18
---questão 1
---IDE quartus prime lite edition 18.1
---Registrador flip-flop tipo d
---contém duas entradas ( entrada D e uma para o clock) e uma saída Q ,tipo binario(0 e 1)
---dentro é executado a mudança na saída Q que recebe o valor de D quando houver uma transição no clock para 1
---DA seguinte forma: inicia-se o processo recebendo as entradas, quando houver um evento em Clock para 1, então o valor de D é atribuido a Q
library ieee;
use ieee.std_logic_1164.all;

entity TypeData is
port(	
	D:	in std_logic;
	Clock: in std_logic;
	Q:	out std_logic
);
end TypeData;


architecture behavior of TypeData is
begin

    process(D, Clock)
    begin
	if (Clock='1' and Clock'event) then
	    Q <= D;
	end if;
    end process;	
end behavior;