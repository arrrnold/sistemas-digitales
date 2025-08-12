LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY prioridad IS
    PORT (
        d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END prioridad;

ARCHITECTURE behavioral OF prioridad IS

BEGIN

    q<= "001" WHEN d(1) = '1' ELSE
        "010" WHEN d(2) = '1' ELSE
        "011" WHEN d(3) = '1' ELSE
        "100" WHEN d(4) = '1' ELSE
        "101" WHEN d(5) = '1' ELSE
        "110" WHEN d(6) = '1' ELSE
        "111" WHEN d(7) = '1' ELSE
        "000";

END behavioral;