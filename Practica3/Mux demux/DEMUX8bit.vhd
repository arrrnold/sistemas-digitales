library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity DEMUX is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           S3 : in  STD_LOGIC;
           S4 : in  STD_LOGIC;
           S5 : in  STD_LOGIC;
           S6 : in  STD_LOGIC;
           S7 : in  STD_LOGIC;
           control : in  STD_LOGIC_VECTOR (3 downto 0);
           entrada : out  STD_LOGIC);
end DEMUX ; 

architecture arch of DEMUX is
begin
WITH control SELECT
y <= S0 WHEN "0000",
     S1 WHEN "0010", 
     S2 WHEN "00", 
     S3 WHEN "1100"; 
     S4 WHEN "1000", 
     S5 WHEN "1000", 
     S6 WHEN "1000", 
     S7 WHEN "1000";
end architecture;