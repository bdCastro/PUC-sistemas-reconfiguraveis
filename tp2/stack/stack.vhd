LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY stack IS
    PORT (
        -- Inputs
        nrst: IN STD_LOGIC;                         -- Reset
        clk_in: IN STD_LOGIC;                       -- Clock
        stack_in: IN STD_LOGIC_VECTOR(12 DOWNTO 0); -- Dados
        stack_push: IN STD_LOGIC;                   -- Enable push op
        stack_pop: IN STD_LOGIC;                    -- Enable pop op
        
        -- Outputs
        stack_out: OUT STD_LOGIC_VECTOR(12 DOWNTO 0) -- Stack output
    );
END ENTITY;

ARCHITECTURE stack OF stack IS
    SIGNAL mem_reg1, mem_reg2, mem_reg3, mem_reg4, mem_reg5, mem_reg6, mem_reg7, mem_reg8 : STD_LOGIC_VECTOR(12 DOWNTO 0);
BEGIN
    PROCESS(nrst, clk_in, stack_push, stack_pop)
    BEGIN
        IF nrst = '0' THEN
            mem_reg1 <= "0000000000000";
            mem_reg2 <= "0000000000000";
            mem_reg3 <= "0000000000000";
            mem_reg4 <= "0000000000000";
            mem_reg5 <= "0000000000000";
            mem_reg6 <= "0000000000000";
            mem_reg7 <= "0000000000000";
            mem_reg8 <= "0000000000000";
        ELSIF RISING_EDGE(clk_in) THEN
			stack_out <= "0000000000000";
            IF stack_pop = '1' THEN
                stack_out <= mem_reg1;
                mem_reg1 <= mem_reg2;
                mem_reg2 <= mem_reg3;
                mem_reg3 <= mem_reg4;
                mem_reg4 <= mem_reg5;
                mem_reg5 <= mem_reg6;
                mem_reg6 <= mem_reg7;
                mem_reg7 <= mem_reg8;
                mem_reg8 <= "0000000000000";
            ELSIF stack_push = '1' THEN
                mem_reg8 <= mem_reg7;
                mem_reg7 <= mem_reg6;
                mem_reg6 <= mem_reg5;
                mem_reg5 <= mem_reg4;
                mem_reg4 <= mem_reg3;
                mem_reg3 <= mem_reg2;
                mem_reg2 <= mem_reg1;
                mem_reg1 <= stack_in; 
            END IF;
        END IF;
    END PROCESS;
END stack;
