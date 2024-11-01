LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY w_reg IS
	PORT (
        -- Inputs
        nrst : IN STD_LOGIC;                    -- Reset
        clk_in: IN STD_LOGIC;                   -- Clock
        d_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0);  -- Dados
        wr_en : IN STD_LOGIC;                   -- Enable

        -- Outputs
        w_out : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
	);
END ENTITY;

ARCHITECTURE w_reg OF w_reg IS

BEGIN
END w_reg;
