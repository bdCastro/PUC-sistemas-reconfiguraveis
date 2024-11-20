LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ram_mem IS
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
    );
END ENTITY;

ARCHITECTURE ram_mem OF ram_mem IS
BEGIN
END ram_mem;
