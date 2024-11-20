LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY port_io IS
    PORT (
        -- Processor Side
        -- Inputs
        nrst : IN STD_LOGIC;                      -- Reset
        clk_in: IN STD_LOGIC;                     -- Clock
        abus_in: IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- Endereçamento
        dbus_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
        wr_en : IN STD_LOGIC;                     -- Enable escrita
        rd_en : IN STD_LOGIC;                     -- Enable leitura

        -- Outputs
        dbus_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados

        -- Port side
        port_io: INOUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- bidirectional port
    );
END ENTITY;

ARCHITECTURE port_io OF port_io IS
BEGIN
END port_io;
