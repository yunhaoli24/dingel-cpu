LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY COUNTER IS
PORT(
	Q,CLR:IN STD_LOGIC;
	T1,T2,T3,T4:OUT STD_LOGIC
	);
END COUNTER;
ARCHITECTURE A OF COUNTER IS
SIGNAL X:STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	PROCESS(Q,CLR)
	BEGIN
		IF(CLR='0')THEN
			T1<='0';
			T2<='0';
			T3<='0';
			T4<='0';
			X<="00";
		ELSIF(Q'EVENT AND Q='1')THEN
			X<=X+1;
			T1<=(NOT X(1)) AND (NOT X(0));
			T2<=(NOT X(1)) AND X(0);
			T3<=X(1) AND (NOT X(0));
			T4<=X(1) AND X(0);
		END IF;
	END PROCESS;
END A;
