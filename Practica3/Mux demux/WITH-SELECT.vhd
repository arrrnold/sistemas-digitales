library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity wSelect is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC);
end wSelect ; 

architecture rtl of wSelect is
begin
WITH control SELECT
y <= I0 WHEN "00",
     I1 WHEN "01", 
     I2 WHEN "10", 
     I3 WHEN "11";
end architecture;