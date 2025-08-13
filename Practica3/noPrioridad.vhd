library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity noPrioridad is
    Port ( D0 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D3 : in  STD_LOGIC;
           D4 : in  STD_LOGIC;
           D5 : in  STD_LOGIC;
           D6 : in  STD_LOGIC;
           D7 : in  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q0 : in  STD_LOGIC);
end noPrioridad;

architecture Behavioral of noPrioridad is

begin

    Q2 <= D7 OR D6 OR D5 OR D4;
    Q1 <= D7 OR D6 OR D3 OR D2;
    Q0 <= D7 OR D5 OR D3 OR D1;


end Behavioral;

