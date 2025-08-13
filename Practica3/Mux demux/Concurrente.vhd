library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Func is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in STD_LOGIC;
           y : out  STD_LOGIC);
end Func ; 

architecture arch of Func is

begin

y <= (I0 AND (not(S1)) AND (not(S0))) or
        (I1 AND (not(S1)) AND S0) or
        (I2 AND S1 AND (not(S0))) or
        (I3 AND S1 AND S0);

end architecture;