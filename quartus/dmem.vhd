library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dmem is
    generic(RISCV_Data_Width : integer := 32);
    port(clk, we : in std_logic;
         a, wd   : in std_logic_vector(31 downto 0);
         rd      : out std_logic_vector(31 downto 0));
end;

architecture behave of dmem is
    type ramtype is array(0 to 63) of std_logic_vector(31 downto 0);
    signal mem : ramtype := (others => (others => '0')); -- Inicializa tudo com zero!
begin
    process(clk)
        variable index : integer;
    begin
        if rising_edge(clk) then
            if we = '1' then
                index := to_integer(unsigned(a(31 downto 2)));
                if index >= 0 and index <= 63 then
                    mem(index) <= wd;
                end if;
            end if;
        end if;
    end process;

    process(a, mem)
        variable index : integer;
    begin
        index := to_integer(unsigned(a(31 downto 2)));
        if index >= 0 and index <= 63 then
            rd <= mem(index);
        else
            rd <= (others => '0'); -- Segurança contra metavalues
        end if;
    end process;
end;