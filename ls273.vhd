LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY LS273 IS
PORT(
		D:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		CLK:IN STD_LOGIC;
		O:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END LS273;
ARCHITECTURE A OF LS273 IS
BEGIN
		PROCESS(CLK)
		BEGIN
			IF(CLK'EVENT AND CLK='1')THEN
				O<=D;
			END IF;
		END PROCESS;
END A;
