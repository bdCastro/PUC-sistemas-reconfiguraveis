LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY port_io IS
    GENERIC (
        port_addr: IN STD_LOGIC_VECTOR(8 DOWNTO 0) :=  "000000011";
        tris_addr: IN STD_LOGIC_VECTOR(8 DOWNTO 0) :=  "000000111";
        alt_port_addr: IN STD_LOGIC_VECTOR(8 DOWNTO 0) :=  "100000000";
        alt_tris_addr: IN STD_LOGIC_VECTOR(8 DOWNTO 0) :=  "110000000"
    );
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
        port_io: INOUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- bidirectional port
    );
END ENTITY;

ARCHITECTURE port_io OF port_io IS
    SIGNAL port_reg: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL tris_reg: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL latch: STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL en_tris_addr: STD_LOGIC;
    SIGNAL en_port_addr: STD_LOGIC;
BEGIN

    en_tris_addr <= '1' WHEN (abus_in = tris_addr) OR (abus_in = alt_tris_addr) ELSE '0';
    en_port_addr <= '1' WHEN (abus_in = port_addr) OR (abus_in = alt_port_addr) ELSE '0';

    PROCESS(nrst, clk_in, abus_in, en_tris_addr, tris_reg, port_reg)
    BEGIN
        IF nrst = '0' THEN
            port_reg <= "00000000";
            tris_reg <= "11111111";
        ELSIF RISING_EDGE(clk_in) THEN
            IF en_tris_addr = '1' THEN
                IF(wr_en = '1') THEN
                    -- escrita
                    tris_reg <= dbus_in;
                END IF;
            END IF;
            IF en_port_addr = '1' THEN
                IF(wr_en = '1') THEN
                    -- escrita
                    port_reg <= dbus_in;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    dbus_out <= tris_reg WHEN en_tris_addr = '1' AND rd_en = '1' ELSE 
                latch WHEN en_port_addr = '1' AND rd_en = '1' ELSE "ZZZZZZZZ";

    latch <= port_io WHEN en_port_addr = '0' OR rd_en = '0';

    port_io(0) <= port_reg(0) WHEN tris_reg(0) = '0' ELSE 'Z';
    port_io(1) <= port_reg(1) WHEN tris_reg(1) = '0' ELSE 'Z';
    port_io(2) <= port_reg(2) WHEN tris_reg(2) = '0' ELSE 'Z';
    port_io(3) <= port_reg(3) WHEN tris_reg(3) = '0' ELSE 'Z';
    port_io(4) <= port_reg(4) WHEN tris_reg(4) = '0' ELSE 'Z';
    port_io(5) <= port_reg(5) WHEN tris_reg(5) = '0' ELSE 'Z';
    port_io(6) <= port_reg(6) WHEN tris_reg(6) = '0' ELSE 'Z';
    port_io(7) <= port_reg(7) WHEN tris_reg(7) = '0' ELSE 'Z';

END port_io;
