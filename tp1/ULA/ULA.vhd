LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ula IS
	PORT (
		-- Input
		a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		c_in : IN STD_LOGIC;
		op_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		bit_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		-- Output
		r_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		c_out : OUT STD_LOGIC;
		dc_out: OUT STD_LOGIC;
		z_out: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE ula OF ula IS
	SIGNAL aux : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL aux_nibble : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL a, b: STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN
	a <= '0' & a_in;
	b <= '0' & b_in; 

	WITH op_sel SELECT
		aux <= a XOR b WHEN "0000",					-- XOR
					  a OR b WHEN "0001" ,					-- OR
					  a AND b WHEN "0010",					-- AND
					  "000000000" WHEN "0011",						-- CLR
					  a +  b WHEN "0100", 					-- ADD
					  a -  b WHEN "0101", 						-- SUB
					  a + 1 WHEN "0110", 							-- INC
					  a - 1 WHEN "0111", 							-- DEC
					  a WHEN "1000", 								-- PASS_A
					  b WHEN "1001", 								-- PASS_B
					  NOT a WHEN "1010", 						-- COM
					  '0' & a(3 DOWNTO 0) & a(7 DOWNTO 4) WHEN "1011",			-- SWAP
					  a OR STD_LOGIC_VECTOR(SHIFT_LEFT(TO_UNSIGNED(1, 8), TO_INTEGER(UNSIGNED(bit_sel)))) WHEN "1100", 				-- BS
					  a AND NOT STD_LOGIC_VECTOR(SHIFT_LEFT(TO_UNSIGNED(1, 8), TO_INTEGER(UNSIGNED(bit_sel)))) WHEN "1101",	-- BC
					  '0' & c_in & a(7 DOWNTO 1) WHEN "1110",						-- RR
					  '0' & a(6 DOWNTO 0) & c_in WHEN "1111";						-- RL

	z_out <= a(TO_INTEGER(UNSIGNED(bit_sel))) WHEN op_sel(3 DOWNTO 1) = "110" ELSE -- BS and BC
				'1' WHEN aux(7 DOWNTO 0) = "00000000";

	aux_nibble <= ('0' & a(3 DOWNTO 0)) + ('0' + b(3 DOWNTO 0)) WHEN op_sel(0) = '0' 
	ELSE ('0' & a(3 DOWNTO 0)) - ('0' & b(3 DOWNTO 0));
	dc_out <= aux_nibble(4);

	r_out <= aux(7 DOWNTO 0);
	c_out <= aux(8);
END ula;