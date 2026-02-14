library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    generic(width : integer := 32);
    port(srca, srcb : in std_logic_vector(width-1 downto 0);
         alucontrol : in std_logic_vector(2 downto 0);
         aluresult  : out std_logic_vector(width-1 downto 0);
         zero       : out std_logic;
         overflow   : out std_logic); -- Mantido para compatibilidade com o pacote
end;

architecture behave of alu is
    signal result   : std_logic_vector(width-1 downto 0);
    signal condinvb : std_logic_vector(width-1 downto 0);
    signal sum      : std_logic_vector(width-1 downto 0);
    signal cout     : std_logic; -- Carry out interno (não usado na saída, mas útil na lógica)
begin

    -- Lógica para inverter B se for Subtração (001) ou SLT (101)
    -- O bit 0 do ALUControl geralmente indica subtração (verifique seu controller)
    -- Mas no padrão Harris, ALUControl(2) é usado para selecionar lógica vs aritmética
    -- Vamos usar uma abordagem comportamental direta baseada nos códigos padrão:
    
    process(srca, srcb, alucontrol)
        variable v_srca, v_srcb : signed(width-1 downto 0);
        variable v_sum          : signed(width-1 downto 0);
    begin
        v_srca := signed(srca);
        v_srcb := signed(srcb);
        v_sum  := (others => '0');
        
        case alucontrol is
            when "000" => -- ADD (Soma)
                result <= std_logic_vector(v_srca + v_srcb);
                
            when "001" => -- SUB (Subtração)
                result <= std_logic_vector(v_srca - v_srcb);
                
            when "010" => -- AND
                result <= srca and srcb;
                
            when "011" => -- OR
                result <= srca or srcb;
                
            when "101" => -- SLT (Set Less Than)
                if (v_srca < v_srcb) then
                    result <= (0 => '1', others => '0');
                else
                    result <= (others => '0');
                end if;
                
            when others => -- Default
                result <= (others => '0');
        end case;
    end process;

    -- Saída do Resultado
    aluresult <= result;

    -- Flag Zero: '1' se o resultado for todo zero, '0' caso contrário
    zero <= '1' when unsigned(result) = 0 else '0';
    
    -- Overflow (Não implementado nesta arquitetura simples, fixo em 0)
    overflow <= '0';

end behave;