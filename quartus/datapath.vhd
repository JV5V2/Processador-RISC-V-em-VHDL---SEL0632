library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library WORK;
use WORK.riscv_pkg.ALL; 

ENTITY datapath IS
    GENERIC(RISCV_Data_Width : INTEGER := 32);
    PORT(
        clk, reset : IN STD_LOGIC;
        ResultSrc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        PCSrc : IN STD_LOGIC;
        ALUSrc : IN STD_LOGIC;
        RegWrite : IN STD_LOGIC;
        ImmSrc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        ALUControl : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        Zero : OUT STD_LOGIC;
        PC : BUFFER STD_LOGIC_VECTOR(RISCV_Data_Width-1 DOWNTO 0);
        Instr : IN STD_LOGIC_VECTOR(RISCV_Data_Width-1 DOWNTO 0);
        ALUResult, WriteData : BUFFER STD_LOGIC_VECTOR(RISCV_Data_Width-1 DOWNTO 0);
        ReadData : IN STD_LOGIC_VECTOR(RISCV_Data_Width-1 DOWNTO 0)
    );
END datapath;

ARCHITECTURE struct OF datapath IS
    -- Sinais internos
    signal PCNext, PCPlus4, PCTarget: STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
    signal ImmExt: STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
    signal SrcA, SrcB: STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
    signal Result: STD_LOGIC_VECTOR(RISCV_Data_Width-1 downto 0);
    
BEGIN
    -- Lógica do PC (Program Counter)
    -- Mux do PC: Escolhe entre PC+4 ou PCTarget (Branch/Jump)
    pcmux: mux2 generic map(RISCV_Data_Width)
        port map(PCPlus4, PCTarget, PCSrc, PCNext);
        
    -- Registrador PC
    pcreg: flopr generic map(RISCV_Data_Width)
        port map(clk, reset, PCNext, PC);
        
    -- Somador PC + 4
    pcadd4: adder generic map(RISCV_Data_Width)
        port map(PC, std_logic_vector(to_unsigned(4, RISCV_Data_Width)), '0', open, PCPlus4);
        
    -- Somador PC + Imm (Para Branches e Jumps)
    pcaddbranch: adder generic map(RISCV_Data_Width)
        port map(PC, ImmExt, '0', open, PCTarget);

    -- Lógica do Banco de Registradores
    rf: regfile 
        port map(
            clk => clk,
            we3 => RegWrite,
            a1  => Instr(19 downto 15),
            a2  => Instr(24 downto 20),
            a3  => Instr(11 downto 7),
            wd3 => Result,
            rd1 => SrcA,
            rd2 => WriteData 
        );
        
    -- Extensor de Sinal (Immediate Generate)
    ext: extend port map(ImmSrc, Instr, ImmExt);
    
    -- Lógica da ALU
    -- Mux da entrada B da ALU: Escolhe entre Registrador (RD2) ou Imediato
    srcbmux: mux2 generic map(RISCV_Data_Width)
        port map(WriteData, ImmExt, ALUSrc, SrcB);
        
    -- ALU Principal
    mainalu: alu generic map(RISCV_Data_Width)
        port map(SrcA, SrcB, ALUControl, ALUResult, Zero, open);
        
    -- Lógica do Resultado (Writeback)
    -- Escolhe o que escrever no registrador: Resultado da ALU, Dado da Memória ou PC+4
    resultmux: mux3 generic map(RISCV_Data_Width)
        port map(ALUResult, ReadData, PCPlus4, ResultSrc, Result);

END struct;