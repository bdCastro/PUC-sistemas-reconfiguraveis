LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY controller IS
    PORT (
        -- Inputs
        clk : IN STD_LOGIC;                       -- Clock
        nrst : IN STD_LOGIC;                      -- Reset
        alu_z : IN STD_LOGIC;                     -- Alu Z
        instr : IN STD_LOGIC_VECTOR(13 DOWNTO 0); -- Instruction
        
        -- Outputs
        op_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Operation selected
        bit_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- Bit selected
        wr_z_en : OUT STD_LOGIC;                    -- Write Z enable
        wr_c_en : OUT STD_LOGIC;                    -- Write C enable
        wr_dc_en : OUT STD_LOGIC;                   -- Write DC enable
        wr_w_reg_en: OUT STD_LOGIC;                 -- Write W register enable
        wr_en : OUT STD_LOGIC;                      -- Write enable
        rd_en : OUT STD_LOGIC;                      -- Read enable
        load_pc : OUT STD_LOGIC;                    -- Load PC
        inc_pc : OUT STD_LOGIC;                     -- Incremant PC
        stack_push : OUT STD_LOGIC;                 -- Stack Push
        stack_pop : OUT STD_LOGIC;                  -- Stack pop
        lit_sel : OUT STD_LOGIC                     -- Lit Selectio
    );
END ENTITY;

ARCHITECTURE controller OF controller IS
    TYPE stateType IS (rst, fetch_only, fetch_dec_ex);
    SIGNAL presState, nextState: stateType;
    SIGNAL OPtype : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL whichOP : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN 
    PROCESS(clk, nrst)
    BEGIN   
        IF(nrst = '0') THEN 
            presState <= rst;

        ELSIF RISING_EDGE(clk) THEN
            presState <= nextState;
        END IF;
    END PROCESS;

    PROCESS(all)
    BEGIN
        OPtype <= "00";
        whichOP <= "0000";
        op_sel <= "0000";
        bit_sel <= instr(9 DOWNTO 7);
        wr_z_en <= '0';
        wr_c_en <= '0';
        wr_dc_en <= '0';
        wr_w_reg_en <= '0';
        wr_en <= '0';
        rd_en <= '0';
        load_pc <= '0';
        inc_pc <= '0';
        stack_push <= '0';
        stack_pop <= '0';
        lit_sel <= '0';

        CASE presState IS
            WHEN rst =>
                nextState <=  fetch_only;

            WHEN fetch_only =>
                inc_pc <= '1';
                nextState <= fetch_dec_ex;

            WHEN fetch_dec_ex =>
                nextState <= fetch_dec_ex;
                
                OPtype <= instr (13 DOWNTO 12);

                CASE OPtype IS
                    -- Byte-Oriented
                    WHEN "00" =>
                        whichOP <= instr(11 DOWNTO 8);

                        CASE  whichOP IS
                            WHEN "0000" => -- No Op - Return - Move W to F 
                                op_sel <= "1001";
                                IF(instr(7) = '1') THEN -- Move W to F
                                    inc_pc <= '1';
                                    wr_en <= '1';
                                ELSE
                                    IF(instr(3) = '1') THEN -- Return
                                        stack_pop <= '1';
                                        nextState <= fetch_only;
                                    ELSE -- No Op
                                        inc_pc <= '1';
                                    END IF;
                                END IF;

                            WHEN "0001" => -- Clear F/W
                                op_sel <= "0011";
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Clear W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Clear F
                                    wr_en <= '1';
                                END IF;

                            WHEN "0010" => --Subtract W from F
                                op_sel <= "0101";
                                rd_en <= '1';
                                inc_pc <= '1';
                                wr_c_en <= '1';
                                wr_dc_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;

                            WHEN "0011" => --Decrement F
                                op_sel <= "0111";
                                inc_pc <= '1';
                                rd_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    -- Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;

                            WHEN "0100" => --OR W with F
                                op_sel <= "0001";
                                inc_pc <= '1';
                                rd_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;

                            WHEN "0101" => -- AND W with F
                                op_sel <= "0010";
                                inc_pc <= '1';
                                rd_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                            
                            WHEN "0110" => -- XOR W with F
                                op_sel <= "0000";
                                inc_pc <= '1';
                                rd_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "0111" => -- ADD W with F
                                op_sel <= "0100";
                                inc_pc <= '1';
                                rd_en <= '1';
                                wr_c_en <= '1';
                                wr_dc_en <= '1';
                                wr_z_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1000" => --Move F
                                op_sel <= "1000";
                                wr_z_en <= '1';
                                rd_en <= '1';
                                wr_en <= '1';
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1001" => -- Complement F
                                op_sel <= "1010";
                                wr_z_en <= '1';
                                rd_en <= '1';
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1010" => --Increment F
                                op_sel <= "0110";
                                wr_z_en <= '1';
                                rd_en <= '1';
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1011" => --Decrement F, skip if 0
                                op_sel <= "0111";
                                inc_pc <= '1';
                                rd_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                                IF(alu_z = '1')THEN
                                    --Change to fetch only
                                    nextState <= fetch_only;
                                END IF;
                                
                            WHEN "1100" => --Rotate Right
                                op_sel <= "1110";
                                wr_c_en <= '1';
                                rd_en <= '1';
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1101" => --Rotate Left
                                op_sel <= "1111";
                                wr_c_en <= '1';
                                rd_en <= '1';
                                inc_pc <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1110" => --Swap Nibles
                                op_sel <= "1011";
                                inc_pc <= '1';
                                rd_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                            WHEN "1111" => -- Increment F, skip if 0
                                op_sel <= "0110";
                                inc_pc <= '1';
                                rd_en <= '1';
                                
                                IF(instr(7) = '0')THEN
                                    --Write to W
                                    wr_w_reg_en <= '1';
                                ELSE
                                    --Write to F
                                    wr_en <= '1';
                                END IF;
                                
                                IF(alu_z = '1')THEN
                                    --Change to fetch only
                                    nextState <= fetch_only;
                                END IF;
                        END CASE;

                    --Bitwise Operation
                    WHEN "01" =>
                        whichOP <= "00" & instr(11 DOWNTO 10);
                        
                        CASE whichOP IS
                            WHEN "0000" => --Bit Clear F
                                op_sel <= "1101";
                                inc_pc <= '1';
                                wr_en <= '1';
                                rd_en <= '1';
                            
                            WHEN "0001" => --Bit Set F
                                op_sel <= "1100";
                                inc_pc <= '1';
                                wr_en <= '1';
                                rd_en <= '1';
                                
                            WHEN "0010" => -- Bit Test F, skip if clear(0)
                                op_sel <= "1101";
                                inc_pc <= '1';
                                rd_en <= '1';
                                
                                IF(alu_z = '0') THEN
                                    --Mudar estado para fetch only
                                    nextState <= fetch_only;
                                END IF;
                                
                            WHEN "0011" => -- Bit Test F, skip if set(1)
                                op_sel <= "1100";
                                inc_pc <= '1';
                                rd_en <= '1';
                                
                                IF(alu_z = '1') THEN
                                --Mudar estado para fetch only
                                nextState <= fetch_only;
                                END IF;
                            WHEN OTHERS =>
                        END CASE;
                            
                    --Branch Operation
                    WHEN "10" =>
                        IF(instr(11) = '0')THEN -- Call subroutine
                            nextState <= fetch_only;
                            load_pc <= '1';
                            stack_push <= '1';
                        ELSE -- Go To 
                            nextState <= fetch_only;
                            load_pc <= '1';
                        END IF;
                        
                    --Literals Operations
                    WHEN "11" =>
                        whichOP <= instr(11 DOWNTO 8);
                        
                        CASE whichOP IS
                            WHEN "0000" | "0001" | "0010" | "0011" => --Move Literal To W
                                op_sel <= "1000";
                                lit_sel <= '1';
                                inc_pc <= '1';
                                wr_w_reg_en <= '1';
                            
                            WHEN "0100" | "0101" | "0110" | "0111" => --Return with Literal in W
                                nextState <= fetch_only;
                                op_sel <= "1000";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                                stack_pop <= '1';
                                
                            WHEN "1000" => -- OR Literal with W
                                op_sel <= "0001";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                                
                            WHEN "1001" => -- AND Literal with W
                                op_sel <= "0010";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                                
                            WHEN "1010" => -- XOR Literal with W
                                op_sel <= "0000";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                                
                            WHEN "1011" => --No Op
                            
                            WHEN "1100" | "1101" => -- Sub W from Literal
                                op_sel <= "0101";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                            
                            WHEN "1110" | "1111" => -- ADD W and Literal
                                op_sel <= "0100";
                                inc_pc <= '1';
                                lit_sel <= '1';
                                wr_w_reg_en <= '1';
                        END CASE;
                END CASE;
        END CASE;
    END PROCESS;
END controller;
