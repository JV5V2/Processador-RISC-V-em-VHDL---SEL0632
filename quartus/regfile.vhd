library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity regfile is
    generic(width : integer := 32); -- ADICIONADO PARA CORRIGIR O AVISO
    port(clk : in std_logic;
         we3 : in std_logic;
         a1, a2, a3 : in std_logic_vector(4 downto 0);
         wd3 : in std_logic_vector(width-1 downto 0);
         rd1, rd2 : out std_logic_vector(width-1 downto 0));
end;

architecture behave of regfile is
    type ramtype is array (31 downto 0) of std_logic_vector(width-1 downto 0);
    -- Registrador 0 hardcoded como 0
    signal mem : ramtype := (0 => (others => '0'), others => (others => '0'));
begin
    process(clk) begin
        if rising_edge(clk) then
            if we3 = '1' then
                mem(to_integer(unsigned(a3))) <= wd3;
            end if;
        end if;
    end process;

    process(a1, a2, mem) begin
        if (to_integer(unsigned(a1)) = 0) then 
            rd1 <= (others => '0');
        else 
            rd1 <= mem(to_integer(unsigned(a1)));
        end if;

        if (to_integer(unsigned(a2)) = 0) then 
            rd2 <= (others => '0');
        else 
            rd2 <= mem(to_integer(unsigned(a2)));
        end if;
    end process;
end;