library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity aludec is
    port(opb5       : in  STD_LOGIC;
         funct3     : in  STD_LOGIC_VECTOR(2 downto 0);
         funct7b5   : in  STD_LOGIC;
         ALUOp      : in  STD_LOGIC_VECTOR(1 downto 0);
         ALUControl : out STD_LOGIC_VECTOR(2 downto 0));
end;

architecture behave of aludec is
    signal RtypeSub : std_logic;
begin
    RtypeSub <= funct7b5 and opb5; -- Verdadeiro se for instrução R-type SUB

    process(ALUOp, funct3, opb5, RtypeSub) begin
        case ALUOp is
            when "00" => ALUControl <= "000"; -- LW/SW -> Soma (Add)
            when "01" => ALUControl <= "001"; -- BEQ   -> Subtração (Sub)
            when others => -- R-type (10)
                case funct3 is
                    when "000" => 
                        if (RtypeSub = '1') then 
                            ALUControl <= "001"; -- Sub
                        else 
                            ALUControl <= "000"; -- Add
                        end if;
                    when "010" => ALUControl <= "101"; -- SLT
                    when "110" => ALUControl <= "011"; -- OR
                    when "111" => ALUControl <= "010"; -- AND
                    when others => ALUControl <= "000"; -- Default
                end case;
        end case;
    end process;
end;
