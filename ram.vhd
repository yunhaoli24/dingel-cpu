
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
ENTITY RAM IS
PORT(
     RD_D,CS_D:IN STD_LOGIC;
     DIN:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 	 ADDR:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	 DOUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END RAM;
ARCHITECTURE A OF RAM IS
TYPE MEMORY IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
   PROCESS(CS_D)
   VARIABLE MEM:MEMORY;
   BEGIN
      IF(CS_D'EVENT AND CS_D='0') THEN
	      IF(RD_D='0') THEN												--дRAM
			  MEM(CONV_INTEGER(ADDR(4 DOWNTO 0))):=DIN;
          ELSE															--��RAM
			 DOUT<=MEM(CONV_INTEGER(ADDR(4 DOWNTO 0)));
          END IF;
      END IF;
  END PROCESS;
END A;

