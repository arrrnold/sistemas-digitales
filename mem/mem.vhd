----------------------------------------------------------------------------------
-- Engineer: Arnold Torres Maldonado
-- Create Date:    22:20:23 06/14/2022 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

--Bloque generic: Cumple las mismas funciones las variables que
--se declaran que las constants


entity SRAM is
generic (
		w : integer:=4; --ancho de palabra
		d: integer:=4; --n° de palabras
		a: integer:=2); --ancho de dirección
--
port (
		Clock : in std_logic;
		Enable : in std_logic;
		leer : in std_logic;
		escribir : in std_logic;
		adress : in std_logic_vector (a-1 downto 0);
		Data_in : in std_logic_vector (w-1 downto 0);
		Data_out : out std_logic_vector (w-1 downto 0));


end SRAM;

architecture memoria_arc of SRAM is

--Array para guardar los valores de memoria
type ram_type is array (0 to d-1) of std_logic_vector(w-1 downto 0);
signal tmp_ram: ram_type;

begin
--Declarando los ciclos de lectura y de escritura

--lectura
process (leer, Clock)
begin
	if (Clock'event and Clock='1') then
		if (Enable='1') then
			if (leer='1') then
				Data_out <= tmp_ram(conv_integer(adress));
			else
				Data_out <= (Data_out'range => 'Z');
			end if;
		end if;		
	end if;
end process;

--escritura
process (escribir, Clock)
begin
	if (Clock'event and Clock='1') then
		if (Enable='1') then
			if (escribir='1') then
				tmp_ram(conv_integer(adress)) <= Data_in;
			end if;
		end if;
	end if;
end process; 

end memoria_arc;


