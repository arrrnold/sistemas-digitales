LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX4bit IS
    PORT (
        A0 : IN STD_LOGIC;
        A1 : IN STD_LOGIC;
        A2 : IN STD_LOGIC;
        A3 : IN STD_LOGIC;
        S0 : IN STD_LOGIC;
        S1 : IN STD_LOGIC;
        Y : OUT STD_LOGIC);
END MUX4bit;

ARCHITECTURE Behavioral OF MUX4bit IS

BEGIN

    Y <= (A0 AND NOT(S0) AND NOT(S1)) OR
        (A1 AND NOT(S0) AND S1) OR
        (A2 AND S0 AND NOT(S1)) OR
        (A3 AND S0 AND S1);

END Behavioral;


