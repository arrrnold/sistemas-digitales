library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity Proceso is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC);
end Proceso ; 

architecture arch of Proceso is
begin
MUX : process(I0,I1,I2,I3,control)
begin
    CASE control IS
    WHEN "00" => salida <= I0;
    WHEN "01" => salida <= I1;
    WHEN "10" => salida <= I2;
    WHEN "11" => salida <= I3;
    WHEN OTHERS => salida <= I0;
  END CASE;
end process;
    end architecture;