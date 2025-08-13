library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cathode is
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
end cathode;

architecture Behavioral of cathode is

begin

    a <= (not(D2) AND not(D0)) OR (D2 AND D0) OR D3 OR (D1 AND D0);
    b <= (not(D2)) OR (not(D1) AND not(D0)) OR (D1 AND D0);
    c <= (not(D1)) OR D2;
    d <= (not(D2) AND not(D0)) OR (not(D2) AND D1) OR (D2 AND not(D1) AND D0) OR (D1 AND not(D0));
    e <= (not(D2) AND not(D0)) OR (D1 AND not(D0));
    f <= (not(D1) AND not(D0)) OR (D2 AND not(D1)) OR (D2 AND not(D0)) OR D3;
    g <= (not(D2) AND D1) OR (D2 AND not(D1)) OR D3 OR (D2 AND not(D0));
	 
end Behavioral;

