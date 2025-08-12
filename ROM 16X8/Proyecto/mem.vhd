LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY ROM IS
	GENERIC
	(
		w : INTEGER := 8; --ancho de palabra
		d : INTEGER := 16; --n° de palabras
	a : INTEGER := 4); --ancho de dirección
	PORT
	(
		Clock : IN std_logic;
		Enable : IN std_logic;
		Leer : IN std_logic;
		dout : OUT std_logic_vector(w - 1 DOWNTO 0)
	);
END ENTITY ROM;
ARCHITECTURE ROM_arch OF ROM IS
	SIGNAL cuenta : INTEGER := 0;
	SIGNAL direccion : std_logic_vector (a - 1 DOWNTO 0);
	TYPE MEMORY_16_8 IS ARRAY (0 TO d - 1) OF std_logic_vector(w - 1 DOWNTO 0);
	CONSTANT ROM_16_8 : MEMORY_16_8 := ("10001000", "00010001", "11001100", "00110011",
		"10101010", "01010101", "01110111", "10001000",
		"00100010", "11001100", "01000100", "10001000",
		"00000000", "00100010", "10001000", "00000000"
	);
BEGIN
	--lectura
	PROCESS (Clock)
	BEGIN
		IF (Clock'EVENT AND Clock = '1') THEN
			dout <= ROM_16_8(to_integer(unsigned(direccion)));
		END IF;
	END PROCESS;
	reloj : PROCESS (Leer, Enable, direccion, Clock)
	BEGIN
		IF (Enable <= '1') THEN
			IF (Leer <= '1') THEN
				IF (Clock'EVENT AND Clock = '1') THEN
					CASE (cuenta) IS
						WHEN 0 =>
							direccion <= "0000";
							cuenta <= cuenta + 1;
						WHEN 1 =>
							direccion <= "0001";
							cuenta <= cuenta + 1;
						WHEN 2 =>
							direccion <= "0010";
							cuenta <= cuenta + 1;
						WHEN 3 =>
							direccion <= "0011";
							cuenta <= cuenta + 1;
						WHEN 4 =>
							direccion <= "0100";
							cuenta <= cuenta + 1;
						WHEN 5 =>
							direccion <= "0101";
							cuenta <= cuenta + 1;
						WHEN 6 =>
							direccion <= "0110";
							cuenta <= cuenta + 1;
						WHEN 7 =>
							direccion <= "0111";
							cuenta <= cuenta + 1;
						WHEN 8 =>
							direccion <= "1000";
							cuenta <= cuenta + 1;
						WHEN 9 =>
							direccion <= "1001";
							cuenta <= cuenta + 1;
						WHEN 10 =>
							direccion <= "1010";
							cuenta <= cuenta + 1;
						WHEN 11 =>
							direccion <= "1011";
							cuenta <= cuenta + 1;
						WHEN 12 =>
							direccion <= "1100";
							cuenta <= cuenta + 1;
						WHEN 13 =>
							direccion <= "1101";
							cuenta <= cuenta + 1;
						WHEN 14 =>
							direccion <= "1110";
							cuenta <= cuenta + 1;
						WHEN 15 =>
							direccion <= "1111";
							cuenta <= cuenta + 1;
						WHEN OTHERS =>
							cuenta <= 0;
					END CASE;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE ROM_arch;