--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:22:02 06/15/2022
-- Design Name:   
-- Module Name:   C:/Users/ar/Desktop/RAM 4X4/Proyecto/sim.vhd
-- Project Name:  Proyecto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRAM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRAM
    PORT(
         Clock : IN  std_logic;
         Enable : IN  std_logic;
         leer : IN  std_logic;
         escribir : IN  std_logic;
         adress : IN  std_logic_vector(3 downto 0);
         Data_in : IN  std_logic_vector(7 downto 0);
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Enable : std_logic := '0';
   signal leer : std_logic := '0';
   signal escribir : std_logic := '0';
   signal adress : std_logic_vector(3 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRAM PORT MAP (
          Clock => Clock,
          Enable => Enable,
          leer => leer,
          escribir => escribir,
          adress => adress,
          Data_in => Data_in,
          Data_out => Data_out
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

      -- insert stimulus here 
	Enable <= '1';escribir <= '1'; adress <= "0000"; Data_in <= "10011001"; wait for 100 ns;
	Enable <= '1';leer <= '1'; adress <= "0000"; wait for 100 ns;
	Enable <= '1';escribir <= '1'; adress <= "0010"; Data_in <= "01001101"; wait for 100 ns;
	Enable <= '1';leer <= '1'; adress <= "0010"; wait for 100 ns;
	Enable <= '1';escribir <= '1'; adress <= "0100"; Data_in <= "00100101"; wait for 100 ns;
	Enable <= '1';leer <= '1'; adress <= "0100"; wait for 100 ns;
	Enable <= '1';escribir <= '1'; adress <= "1000"; Data_in <= "00100100"; wait for 100 ns;
	Enable <= '1';leer <= '1'; adress <= "1000"; wait for 100 ns;
      wait;
   end process;

END;
