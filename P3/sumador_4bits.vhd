----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:07 11/04/2021 
-- Design Name: 
-- Module Name:    sumador_4bits - Behavioral 
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

entity sumador_4bits is
    Port ( Ai : in  STD_LOGIC_VECTOR (3 downto 0);
           Bi : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin_i : in  STD_LOGIC;
           Si : out  STD_LOGIC;
           Cout_i : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador_4bits;

architecture Behavioral of sumador_4bits is

begin


end Behavioral;

