LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY addr_max IS
	PORT (
		-- Input
		rp_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		dir_addr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		irp_in : IN STD_LOGIC;
		ind_addr_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		-- Output
		abus_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE addr_max OF addr_max IS
BEGIN
		abus_out <= irp_in & ind_addr_in WHEN dir_addr_in = "0000000" ELSE
							rp_in & dir_addr_in;
	
END addr_max;