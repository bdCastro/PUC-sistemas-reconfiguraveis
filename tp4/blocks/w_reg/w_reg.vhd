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
        w_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- Dados
	);
END ENTITY;

ARCHITECTURE w_reg OF w_reg IS
    SIGNAL mem_reg: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN

    PROCESS (nrst, clk_in)
    BEGIN
        IF nrst = '0' THEN
            mem_reg <= "00000000";
        ELSIF RISING_EDGE(clk_in) then
            IF wr_en = '1' THEN
                mem_reg <= d_in;
            END IF;
        END IF;
    END PROCESS;

    w_out <= mem_reg;

END w_reg;
