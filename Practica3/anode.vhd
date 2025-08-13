library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anode is
    Port ( D0 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D3 : in  STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           f : out  STD_LOGIC;
           g : out  STD_LOGIC);
end anode;

architecture Behavioral of anode is

begin

    a <= (not(D3) AND not(D2) AND not(D1) AND D0) OR (D2 AND not(D0));
    b <= (not(D2) AND not(D1) AND D0) OR (D2 AND D1 AND not(D0));
    c <= (not(D2) AND D1 AND not(D0));
    d <= (not(D2) AND not(D1) AND D0) OR (D2 AND not(D1) AND not(D0)) OR (D2 AND D1 AND D0);
    e <= (D0) OR (D2 AND not(D1));
    f <= (not(D3) AND not(D2) AND D0) OR (not(D2) AND D1) OR (D1 AND D0);
    g <= (not(D3) AND not(D2) AND not(D1)) OR (D2 AND D1 AND D0);
    
end Behavioral;

