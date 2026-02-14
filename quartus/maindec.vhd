library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maindec is
    port (
        op: in STD_LOGIC_VECTOR(6 downto 0);
        ResultSrc: out STD_LOGIC_VECTOR(1 downto 0);
        MemWrite: out STD_LOGIC;
        Branch, ALUSrc: out STD_LOGIC;
        RegWrite, Jump: out STD_LOGIC;
        ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
        ALUOP: out STD_LOGIC_VECTOR(1 downto 0)
    );
end;

architecture behave of maindec is
    signal controls: STD_LOGIC_VECTOR(10 downto 0);
begin
    process(op) begin
        case op is
            -- Instruções de Load (lw)
            when "0000011" => controls <= "10010010000"; 
            -- Instruções de Store (sw)
            when "0100011" => controls <= "00111000000";
            -- Tipo R (Substituído xx por 00 para segurança na simulação)
            when "0110011" => controls <= "10000000100"; 
            -- Branch (beq)
            when "1100011" => controls <= "01000001010"; 
            -- Tipo I (addi, etc)
            when "0010011" => controls <= "10010000100";
            -- Jump (jal)
            when "1101111" => controls <= "11100100001";
            when others    => controls <= "00000000000";
        end case;
    end process;

    -- Atribuição dos sinais (Desmembrado para compatibilidade total)
    -- Ordem: RegWrite, ImmSrc(1:0), ALUSrc, MemWrite, ResultSrc(1:0), Branch, ALUOp(1:0), Jump
    RegWrite     <= controls(10);
    ImmSrc       <= controls(9 downto 8);
    ALUSrc       <= controls(7);
    MemWrite     <= controls(6);
    ResultSrc    <= controls(5 downto 4);
    Branch       <= controls(3);
    ALUOP        <= controls(2 downto 1);
    Jump         <= controls(0);

end;