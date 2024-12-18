LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY pc_reg IS
    PORT (
        -- Inputs
        nrst: IN STD_LOGIC;                        -- Reset
        clk_in: IN STD_LOGIC;                      -- Clock
        addr_in: IN STD_LOGIC_VECTOR(10 DOWNTO 0); -- Dados
        abus_in: IN STD_LOGIC_VECTOR(8 DOWNTO 0);  -- Endereçamento PCL e PCLATH
        dbus_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0);  -- Dados PCL e PCLATH
        inc_pc: IN STD_LOGIC;                      -- Enable incremento.
        load_pc: IN STD_LOGIC;                     -- Enable carga.
        wr_en: IN STD_LOGIC;                       -- Enable escrita.
        rd_en: IN STD_LOGIC;                       -- Enable leitura.
        stack_push: IN STD_LOGIC;                  -- Enable push op
        stack_pop: IN STD_LOGIC;                   -- Enable pop op

        -- Outputs
        nextpc_out: OUT STD_LOGIC_VECTOR(12 DOWNTO 0); -- Contador
        dbus_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)     -- Dados
    );
END ENTITY;

ARCHITECTURE pc_reg OF pc_reg IS
    SIGNAL stack_reg1, stack_reg2, stack_reg3, stack_reg4, stack_reg5, stack_reg6, stack_reg7, stack_reg8 : STD_LOGIC_VECTOR(12 DOWNTO 0);
    SIGNAL stack_popped: STD_LOGIC_VECTOR(12 DOWNTO 0);
    SIGNAL pc: STD_LOGIC_VECTOR(12 DOWNTO 0);
    SIGNAL lath_pc: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL nextpc: STD_LOGIC_VECTOR(12 DOWNTO 0);
BEGIN

    -- Stack
    PROCESS(nrst, clk_in, stack_push, stack_pop, stack_popped)
    BEGIN
        IF nrst = '0' THEN
            stack_reg1 <= "0000000000000";
            stack_reg2 <= "0000000000000";
            stack_reg3 <= "0000000000000";
            stack_reg4 <= "0000000000000";
            stack_reg5 <= "0000000000000";
            stack_reg6 <= "0000000000000";
            stack_reg7 <= "0000000000000";
            stack_reg8 <= "0000000000000";
        ELSIF RISING_EDGE(clk_in) THEN
            IF stack_pop = '1' THEN
                stack_popped <= stack_reg1;
                stack_reg1 <= stack_reg2;
                stack_reg2 <= stack_reg3;
                stack_reg3 <= stack_reg4;
                stack_reg4 <= stack_reg5;
                stack_reg5 <= stack_reg6;
                stack_reg6 <= stack_reg7;
                stack_reg7 <= stack_reg8;
                stack_reg8 <= "0000000000000";
            ELSIF stack_push = '1' THEN
                stack_reg8 <= stack_reg7;
                stack_reg7 <= stack_reg6;
                stack_reg6 <= stack_reg5;
                stack_reg5 <= stack_reg4;
                stack_reg4 <= stack_reg3;
                stack_reg3 <= stack_reg2;
                stack_reg2 <= stack_reg1;
                stack_reg1 <= pc; 
            END IF;
        END IF;
    END PROCESS;

    -- logica combinacional para nextpc
    PROCESS(stack_pop, inc_pc, load_pc, wr_en, abus_in, pc, addr_in, lath_pc, stack_popped, dbus_in)
    BEGIN
        IF stack_pop = '1' THEN
            nextpc <= stack_popped;
        ELSIF inc_pc = '1' THEN
            nextpc <= pc + 1;
        ELSIF load_pc = '1' THEN
            nextpc(10 DOWNTO 0) <= addr_in;
            nextpc(12 DOWNTO 11) <= lath_pc(4 DOWNTO 3);
        ELSIF wr_en = '1' AND abus_in(6 DOWNTO 0) = "0000010" THEN
            nextpc <= lath_pc(4 DOWNTO 0) & dbus_in;
        ELSE
            nextpc <= pc;
        END IF;
        
        nextpc_out <= nextpc;
    END PROCESS;

    -- logica sequencial para PC_reg
    PROCESS(clk_in, nrst, pc, nextpc)
    BEGIN
        IF RISING_EDGE(clk_in) THEN
            pc <= nextpc;
        END IF;

        IF nrst = '0' THEN
            pc <= "0000000000000";
        END IF;
    END PROCESS;

    -- logica sequencial para PCLATH
    PROCESS(clk_in, nrst, wr_en, abus_in)
    BEGIN
        IF RISING_EDGE(clk_in) THEN
            IF wr_en = '1' AND abus_in(6 DOWNTO 0) = "0001010" THEN
                lath_pc <= dbus_in;
            END IF;
        END IF;
        
        IF nrst = '0' THEN
            lath_pc <= "00000000";
        END IF;
    END PROCESS;

    -- logica combinacional para dbus_out
    PROCESS(clk_in, rd_en, abus_in, lath_pc, pc)
    BEGIN
        IF abus_in(6 DOWNTO 0) = "0001010" AND rd_en = '1' THEN
            dbus_out <= lath_pc(7 DOWNTO 0);
        ELSIF abus_in(6 DOWNTO 0) = "0000010" AND rd_en = '1' THEN
            dbus_out <= pc(7 DOWNTO 0);
        ELSE
            dbus_out <= "ZZZZZZZZ";
        END IF;
    END PROCESS;

END pc_reg;
