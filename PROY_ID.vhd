LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PROY_ID IS
	PORT(
			ID3				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ID2				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ID1				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ID0				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			
			F3, F2, F1, F0					: OUT STD_LOGIC
			
			);
END PROY_ID;

ARCHITECTURE FuncLogic OF PROY_ID IS
BEGIN
	WITH ID3 SELECT F3 <= --0225745
		'1' WHEN "000", --0
		'1' WHEN "010", --2
		'1' WHEN "100", --4
		'1' WHEN "101", --5
		'1' WHEN "111", --7
		'0' WHEN OTHERS;
	WITH ID2 SELECT F2 <= --0228637
		'1' WHEN "000", --0
		'1' WHEN "010", --2
		'1' WHEN "011", --3
		'1' WHEN "110", --6
		'1' WHEN "111", --7
		'0' WHEN OTHERS;
	WITH ID1 SELECT F1 <= --0202579
		'1' WHEN "000", --0
		'1' WHEN "010", --2
		'1' WHEN "101", --5
		'1' WHEN "111", --7
		'0' WHEN OTHERS;
	WITH ID0 SELECT F0 <= --0224774
		'1' WHEN "000", --0
		'1' WHEN "010", --2
		'1' WHEN "100", --4
		'1' WHEN "111", --7
		'0' WHEN OTHERS;

END FuncLogic;
		
