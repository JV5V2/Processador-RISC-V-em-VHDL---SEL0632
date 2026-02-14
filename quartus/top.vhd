library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.riscv_pkg.all; 

entity top is
    generic(RISCV_Data_Width : integer := 32);
    port (
        clk, reset: in STD_LOGIC;
        WriteData, DataAdr: buffer STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
        MemWrite: buffer STD_LOGIC
    );
end;

architecture test of top is
    -- Sinais internos para conectar processador e memórias
    signal PC, Instr, ReadData: STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
begin
    -- Instanciação do Processador RISC-V
    rvsingle: riscvsingle 
        generic map (RISCV_Data_Width => 32) -- Generic descomentado e configurado
        port map(
            clk         => clk,
            reset       => reset,
            PC          => PC,
            Instr       => Instr,
            MemWrite    => MemWrite,
            ALUResult   => DataAdr,   -- O resultado da ALU é o endereço da memória de dados
            WriteData   => WriteData,
            ReadData    => ReadData
        );
        
    -- Instanciação da Memória de Instruções
    imem1: imem 
        generic map (RISCV_Data_Width => 32)
        port map(
            a  => PC,
            rd => Instr
        );
        
    -- Instanciação da Memória de Dados
    dmem1: dmem 
        generic map (RISCV_Data_Width => 32)
        port map(
            clk => clk,
            we  => MemWrite,
            a   => DataAdr,
            wd  => WriteData,
            rd  => ReadData
        );
end;