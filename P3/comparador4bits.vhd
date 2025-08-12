----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:11 11/12/2021 
-- Design Name: 
-- Module Name:    comparador4bits - Behavioral 
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

entity comparador4bits is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           AEQB : out  STD_LOGIC;
           ALTB : out  STD_LOGIC;
           AGTB : out  STD_LOGIC);
end comparador4bits;

architecture Behavioral of comparador4bits is

begin

AEQB <= not(A3 XOR B3) and not(A2 XOR B2) and not(A1 XOR B1) and not(A0 XOR B0);
ALTB <= (NOT(A3) and (B3)) or 
(not(A3 XOR B3) and not(A2) and B2) or 
(not(A3 XOR B3) and not(A2 XOR B2) and not(A1) and B1) or
(not(A3 XOR B3) and not(A2 XOR B2) and not(A1 XOR B1) and not(A0) and B0);
AGTB <= (A3 and not(B3)) or
(not(A3 XOR B3) and A2 and not(B2)) or
(not(A3 XOR B3) and not(A2 XOR B2) and A1 and not(B1)) or
(not(A3 XOR B3) and not(A2 XOR B2) and not(A1 XOR B1) and A0 and not(B0));
end Behavioral;

