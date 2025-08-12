
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY demux8bit IS
    PORT (
        A0 : OUT STD_LOGIC;
        A1 : OUT STD_LOGIC;
        A2 : OUT STD_LOGIC;
        A3 : OUT STD_LOGIC;
        A4 : OUT STD_LOGIC;
        A5 : OUT STD_LOGIC;
        A6 : OUT STD_LOGIC;
        A7 : OUT STD_LOGIC;
        Z : OUT STD_LOGIC;
        S0 : IN STD_LOGIC;
        S1 : IN STD_LOGIC;
        S2 : IN STD_LOGIC;
        Y : IN STD_LOGIC);

END demux8bit;

ARCHITECTURE Behavioral OF demux8bit IS
BEGIN

    A0 <= (Y AND NOT(S0) AND NOT(S1) AND NOT(S2));
    A1 <= (Y AND NOT(S0) AND NOT(S1) AND S2);
    A2 <= (Y AND NOT(S0) AND S1 AND NOT(S2));
    A3 <= (Y AND NOT(S0) AND S1 AND S2);
    A4 <= (Y AND S0 AND NOT(S1) AND NOT(S2));
    A5 <= (Y AND S0 AND NOT(S1) AND S2);
    A6 <= (Y AND S0 AND S1 AND NOT(S2));
    A7 <= (Y AND S0 AND S1 AND S2);

END Behavioral;