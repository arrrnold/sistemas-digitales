----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:55 10/28/2021 
-- Design Name: 
-- Module Name:    Practica1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Practica1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : out  STD_LOGIC;
           w : out STD_LOGIC;
			  x : out STD_LOGIC;
			  y : out STD_LOGIC;
			  z : out STD_LOGIC);
			  
end Practica1;

architecture Behavioral of Practica1 is

begin
c <= a AND b;	--Compuerta AND
w <= a OR b;	--Compuerta OR
x <= a NAND b;	--Compuerta NAND
y <= a NOR b;	--Compuerta NOR
z <= a XOR b;	--Compuerta XOR
end Behavioral;

