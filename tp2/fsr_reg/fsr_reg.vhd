LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY fsr_reg IS
    PORT (
        -- Inputs
        nrst : IN STD_LOGIC;                      -- Reset
        clk_in: IN STD_LOGIC;                     -- Clock
        abus_in: IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- Endereçamento
        dbus_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
        wr_en : IN STD_LOGIC;                     -- Enable escrita
        rd_en : IN STD_LOGIC;                     -- Enable leitura

        -- Outputs
        dbus_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
        fsr_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  -- Registrador
    );
END ENTITY;

ARCHITECTURE fsr_reg OF fsr_reg IS
    SIGNAL mem_reg: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    PROCESS (nrst, clk_in, mem_reg, abus_in, dbus_in)
    BEGIN
        IF nrst = '0' THEN
            mem_reg <= "00000000";
        ELSIF abus_in(6 DOWNTO 0) = "0000100" THEN
            IF RISING_EDGE(clk_in) THEN
                IF wr_en = '1' THEN
                    mem_reg <= dbus_in;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    dbus_out <= mem_reg WHEN rd_en = '1' ELSE "ZZZZZZZZ";
    fsr_out <= mem_reg;
END fsr_reg;
