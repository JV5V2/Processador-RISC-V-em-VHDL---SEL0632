library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench is
end;

architecture test of testbench is
    component top
        port (
            clk, reset: in STD_LOGIC;
            WriteData, DataAdr: out STD_LOGIC_VECTOR(31 downto 0);
            MemWrite: out STD_LOGIC
        );
    end component;

    signal clk, reset: STD_LOGIC;
    signal WriteData, DataAdr: STD_LOGIC_VECTOR(31 downto 0);
    signal MemWrite: STD_LOGIC;

begin

    dut: top port map(clk, reset, WriteData, DataAdr, MemWrite);

    process begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;

    -- Processo de Reset
    process begin
        reset <= '1';
        wait for 22 ns;
        reset <= '0';
        wait;
    end process;

    process(clk) begin
        if falling_edge(clk) then
            if MemWrite = '1' then
                if (to_integer(unsigned(DataAdr)) = 100 and to_integer(unsigned(WriteData)) = 25) then
                    report "Simulation failed" severity failure;
                elsif (to_integer(unsigned(DataAdr)) /= 96) then

                end if;
            end if;
        end if;
    end process;
    
end;
