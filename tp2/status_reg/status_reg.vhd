LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY status_reg IS
    PORT (
        -- Inputs
        nrst: IN STD_LOGIC;                       -- Reset
        clk_in: IN STD_LOGIC;                     -- Clock
        abus_in: IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- Enderecamento
        dbus_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
        wr_en: IN STD_LOGIC;                      -- Enable escrita
        rd_en: IN STD_LOGIC;                      -- Enable leitura
        z_in: IN STD_LOGIC;                       -- Dados bit 2
        dc_in: IN STD_LOGIC;                      -- Dados bit 1
        c_in: IN STD_LOGIC;                       -- Dados bit 0
        z_wr_en: IN STD_LOGIC;                    -- Enable escrita bit 2
        dc_wr_en: IN STD_LOGIC;                   -- Enable escrita bit 1
        c_wr_en: IN STD_LOGIC;                    -- Enable escrita bit 0

        -- Outputs
        dbus_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Dados
        irp_out: OUT STD_LOGIC;                     -- Dados bit 7
        rp_out: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);   -- Dados bit 6 e 5
        z_out: OUT STD_LOGIC;                       -- Dados bit 2
        dc_out: OUT STD_LOGIC;                      -- Dados bit 1
        c_out: OUT STD_LOGIC                        -- Dados bit 0
    );
END ENTITY;

ARCHITECTURE status_reg OF status_reg IS
    SIGNAL mem_reg: STD_LOGIC_VECTOR(7 downto 0);
BEGIN
    PROCESS(nrst, clk_in, mem_reg, wr_en, z_in, dc_in, c_in)
    BEGIN
        IF nrst = '0' THEN 
            mem_reg <= "00000000";
        ELSIF RISING_EDGE(clk_in) THEN
            IF wr_en = '1' AND abus_in(6 DOWNTO 0) = "0000011" THEN
                mem_reg <= dbus_in;
            END IF;
            IF z_wr_en = '1' THEN
                mem_reg(2) <= z_in;
            END IF;
            IF dc_wr_en = '1' THEN
                mem_reg(1) <= dc_in;
            END IF;
            IF c_wr_en = '1' THEN
                mem_reg(0) <= c_in;
            END IF;
        END IF;
    END PROCESS;
    
    dbus_out <= mem_reg WHEN rd_en = '1' AND abus_in(6 DOWNTO 0) = "0000011" ELSE "ZZZZZZZZ";
    irp_out <= mem_reg(7);
    rp_out <= mem_reg(6 DOWNTO 5);
    z_out <= mem_reg(2);
    dc_out <= mem_reg(1);
    c_out <= mem_reg(0);
END status_reg;
