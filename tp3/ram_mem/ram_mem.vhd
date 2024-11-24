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
        dbus_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- Dados
    );
END ENTITY;

ARCHITECTURE ram_mem OF ram_mem IS
    TYPE mem_type0 IS ARRAY(0 TO 79) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    TYPE mem_type1 IS ARRAY(0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL mem0: mem_type0;
    SIGNAL mem1: mem_type0;
    SIGNAL mem2: mem_type0;
    SIGNAL mem_com: mem_type1;
    SIGNAL addr_int : INTEGER RANGE 0 TO 511;

BEGIN
    addr_int <= TO_INTEGER(UNSIGNED(abus_in));


    PROCESS(clk_in, nrst, addr_int, rd_en)
    BEGIN
        IF RISING_EDGE(clk_in) THEN
            IF wr_en = '1' THEN
                CASE addr_int IS 
                    -- mem0 80 bytes
                    WHEN 32 TO 111 =>
                        mem0(addr_int - 32) <= dbus_in;

                    -- mem1 80 bytes
                    WHEN 160 TO 239 =>
                        mem1(addr_int - 160) <= dbus_in;

                    -- mem2 80 bytes
                    WHEN 288 TO 367 =>
                        mem2(addr_int - 288) <= dbus_in;

                    -- mem_com 16 bytes
                    WHEN 112 TO 127 =>
                        mem_com(addr_int - 112) <= dbus_in;
                    WHEN 240 TO 255 =>
                        mem_com(addr_int - 240) <= dbus_in;
                    WHEN 368 TO 383 =>
                        mem_com(addr_int - 368) <= dbus_in;
                    WHEN 496 TO 511 =>
                        mem_com(addr_int - 496) <= dbus_in;

                    -- default
                    WHEN OTHERS =>
                END CASE;
            END IF;
        END IF;
        
        IF nrst = '0' THEN
                mem0 <= (OTHERS => (OTHERS => '0'));
                mem1 <= (OTHERS => (OTHERS => '0'));
                mem2 <= (OTHERS => (OTHERS => '0'));
                mem_com <= (OTHERS => (OTHERS => '0'));
        END IF;
    END PROCESS;

    PROCESS(clk_in, addr_int, rd_en, mem0, mem1, mem2, mem_com)
    BEGIN
        IF rd_en = '1' THEN
            CASE addr_int IS 
                -- mem0 80 bytes
                WHEN 32 TO 111 =>
                    dbus_out <= mem0(addr_int - 32);

                -- mem1 80 bytes
                WHEN 160 TO 239 =>
                    dbus_out <= mem1(addr_int - 160);

                -- mem2 80 bytes
                WHEN 288 TO 367 =>
                    dbus_out <= mem2(addr_int - 288);

                -- mem_com 16 bytes
                WHEN 112 TO 127 =>
                    dbus_out <= mem_com(addr_int - 112);
                WHEN 240 TO 255 =>
                    dbus_out <= mem_com(addr_int - 240);
                WHEN 368 TO 383 =>
                    dbus_out <= mem_com(addr_int - 368);
                WHEN 496 TO 511 =>
                    dbus_out <= mem_com(addr_int - 496);

                -- default
                WHEN OTHERS =>
            END CASE;
        ELSE
            dbus_out <= "ZZZZZZZZ";
        END IF;
    END PROCESS;

END ram_mem;
