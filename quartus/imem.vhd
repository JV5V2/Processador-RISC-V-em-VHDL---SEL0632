library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity imem is
    generic(RISCV_Data_Width : integer := 32); 
    port(a  : in  std_logic_vector(31 downto 0);
         rd : out std_logic_vector(31 downto 0));
end;

architecture behave of imem is
    type ramtype is array(0 to 63) of std_logic_vector(31 downto 0);
    
    -- PROGRAMA DE TESTE:
    -- Gera o valor 25 (19 em Hex) e salva no endereço 100 (64 em Hex)
    constant mem : ramtype := (
        0 => X"00500113", -- addi x2, x0, 5   (x2 = 5)
        1 => X"01400193", -- addi x3, x0, 20  (x3 = 20)
        2 => X"00310233", -- add x4, x2, x3   (x4 = 5 + 20 = 25)
        3 => X"06402023", -- sw x4, 100(x0)   (Mem[100] = 25)
        4 => X"00000000", -- nop (fim)
        others => X"00000000" -- O resto é zero (evita metavalues!)
    );
begin
    process(a)
        variable index : integer;
    begin
        -- O PC anda de 4 em 4 bytes, mas o array é indexado por palavra
        -- Dividimos o endereço por 4 (pegando bits 31 downto 2)
        index := to_integer(unsigned(a(31 downto 2)));
        
        if index >= 0 and index <= 63 then
            rd <= mem(index);
        else
            rd <= (others => '0'); -- Retorna 0 se endereço for inválido (EVITA O ERRO METAVALUE)
        end if;
    end process;
end;