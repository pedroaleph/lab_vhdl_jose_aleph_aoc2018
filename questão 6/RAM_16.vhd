library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity RAM_16 is
  port (
    wmem: in  std_logic; 
	 clock: in  std_logic;
    address: in  std_logic_vector(3 downto 0);
    datain: in  std_logic_vector(15 downto 0);
    Saida: out std_logic_vector(15 downto 0)
  );
end entity RAM_16;

architecture RAM_MEM of RAM_16 is

   -- tipo ram é um array de (0 to (2^address_length)-1) logo 2**16 = 65536 - 1 = 65535 que será o tamanho 
	type RAM_ARRAY is array (0 to 65535) of std_logic_vector(15 downto 0);
   signal RAM : RAM_ARRAY;
   signal read_address : std_logic_vector(3 downto 0);

begin

	process(clock, wmem, address, datain) is
	begin
		if rising_edge(clock) then
			if (wmem = '1') then
				RAM(to_integer(unsigned(address))) <= datain;
				
			end if;
			
			--read_address <= address;
			
		end if;
	end process ;

	Saida <= RAM(to_integer(unsigned(address)));

end architecture RAM_MEM;