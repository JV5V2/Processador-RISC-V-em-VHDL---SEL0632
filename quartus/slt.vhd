library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity slt is
    generic (
        RISCV_Data_Width : integer := 32  
    );
    port (
        A     : in  STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
        B     : in  STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
       S : out STD_LOGIC -- Se A>=B
    );
end entity;

architecture funcionamento of slt is
begin
    process(A, B)
    begin
        if unsigned(A) = unsigned(B) then -- IGUAL
           S <= '1';
        elsif unsigned(A) > unsigned(B) then -- MAIOR 
           S <= '0';
        else
           S <= '1'; -- MENOR
        end if;
    end process;
end architecture;
