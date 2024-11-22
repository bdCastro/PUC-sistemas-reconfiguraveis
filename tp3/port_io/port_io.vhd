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
BEGIN
    PROCESS(nrst, clk_in, abus_in, tris_reg, port_reg)
    BEGIN
        IF nrst = '0' THEN
            port_reg <= "00000000";
            tris_reg <= "11111111";
        ELSIF RISING_EDGE(clk_in) THEN
            IF(abus_in = tris_addr OR abus_in = alt_tris_addr) THEN
                IF(wr_en = '1') THEN
                    -- escrita
                    tris_reg <= dbus_in;
                END IF;
            END IF;
            IF(abus_in = port_addr OR abus_in = alt_port_addr) THEN
                IF(wr_en = '1') THEN
                    -- escrita
                    port_reg <= dbus_in;
                END IF;
            END IF;
        END IF;
    END PROCESS;

	dbus_out <= tris_reg WHEN ((abus_in = tris_addr OR abus_in = alt_tris_addr) AND (rd_en = '1')) ELSE 
				latch WHEN ((abus_in = port_addr OR abus_in = alt_port_addr) AND rd_en = '1');
				
    port_io <= (port_io AND tris_reg) XOR (port_reg AND NOT tris_reg);
    
    latch <= port_io WHEN NOT((abus_in = port_addr OR abus_in = alt_port_addr) AND rd_en = '1');
END port_io;
