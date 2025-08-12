LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY ROM IS
	GENERIC (
		w : INTEGER := 4; --ancho de palabra
		d : INTEGER := 8; --n° de palabras
	a : INTEGER := 3); --ancho de dirección
	PORT (
		Clock : IN std_logic;
		Enable : IN std_logic;
		Leer : IN std_logic;
		funciona : IN std_logic;
		ad : IN std_logic; -- ascendente si ad = 1
		X : OUT std_logic;
		dout : OUT std_logic_vector(w - 1 DOWNTO 0)
	);
END ENTITY ROM;
ARCHITECTURE ROM_arch OF ROM IS
	CONSTANT max_count : INTEGER := 5000000;
	SIGNAL count : INTEGER RANGE 0 TO max_count;
	SIGNAL clk_state : std_logic := '0';
	SIGNAL clk : std_logic;
	SIGNAL cuenta : INTEGER := 0;
	SIGNAL direccion : std_logic_vector (a - 1 DOWNTO 0);
	TYPE MEMORY_8_4 IS ARRAY (0 TO d - 1) OF std_logic_vector(w - 1 DOWNTO 0);
	CONSTANT ROM_8_4 : MEMORY_8_4 := ("1000", "0001", "1100", "0011", 
		"1010", "0101", "0111", "1000"
	);
BEGIN
	--lectura
	PROCESS (clk)
	BEGIN
		IF (clk'EVENT AND clk = '1') THEN
			dout <= ROM_8_4(to_integer(unsigned(direccion)));
		END IF;
	END PROCESS;
 
	PROCESS (funciona, Leer, Enable, direccion, clk)
	BEGIN
		IF (funciona <= '1') THEN
			IF (Enable <= '1') THEN
				IF (Leer <= '1') THEN
					IF (clk'EVENT AND clk = '1') THEN
						IF (ad <= '1') THEN
							CASE (cuenta) IS
								WHEN 0 => 
									direccion <= "000";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 1 => 
									direccion <= "001";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 2 => 
									direccion <= "010";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 3 => 
									direccion <= "011";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 4 => 
									direccion <= "100";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 5 => 
									direccion <= "101";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 6 => 
									direccion <= "110";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN 7 => 
									direccion <= "111";
									cuenta <= cuenta + 1;
									X <= '1';
								WHEN OTHERS => 
									cuenta <= 0;
									X <= '1';
							END CASE;
						END IF;
					ELSIF (ad <= '0') THEN
						CASE (cuenta) IS
							WHEN 0 => 
								direccion <= "111";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 1 => 
								direccion <= "110";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 2 => 
								direccion <= "101";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 3 => 
								direccion <= "100";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 4 => 
								direccion <= "011";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 5 => 
								direccion <= "010";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 6 => 
								direccion <= "001";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN 7 => 
								direccion <= "000";
								cuenta <= cuenta - 1;
								X <= '0';
							WHEN OTHERS => 
								cuenta <= 0;
								X <= '0';
						END CASE;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
 
	gen_clock : PROCESS (Clock, count)
	BEGIN
		IF Clock' event AND Clock = '1' THEN
			IF count < max_count THEN
				count <= count + 1;
			ELSE
				clk_state <= NOT clk_state;
				count <= 0;
			END IF;
		END IF;
	END PROCESS;

	asignacion : PROCESS (clk_state)
	BEGIN
		clk <= clk_state;
	END PROCESS;
 
END ARCHITECTURE ROM_arch;