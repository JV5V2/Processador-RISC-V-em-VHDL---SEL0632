library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.riscv_pkg.all; 

entity riscvsingle is
    generic(RISCV_Data_Width : integer := 32);
    port(clk, reset : in std_logic;
         PC         : out std_logic_vector(31 downto 0);
         Instr      : in  std_logic_vector(31 downto 0);
         MemWrite   : out std_logic;
         ALUResult  : out std_logic_vector(31 downto 0);
         WriteData  : out std_logic_vector(31 downto 0);
         ReadData   : in  std_logic_vector(31 downto 0));
end;

architecture struct of riscvsingle is
    -- Sinais internos
    signal ALUSrc, RegWrite, Jump, Zero, PCSrc, MemWrite_sig : std_logic;
    signal ResultSrc, ImmSrc : std_logic_vector(1 downto 0);
    signal ALUControl : std_logic_vector(2 downto 0);

    -- ==========================================================
    -- DECLARAÇÃO DOS COMPONENTES (ADICIONADOS AQUI)
    -- ==========================================================
    
    component controller is
        port(op             : in  STD_LOGIC_VECTOR(6 downto 0);
             funct3         : in  STD_LOGIC_VECTOR(2 downto 0);
             funct7b5       : in  STD_LOGIC;
             Zero           : in  STD_LOGIC;
             ResultSrc      : out STD_LOGIC_VECTOR(1 downto 0);
             MemWrite       : out STD_LOGIC;
             PCSrc          : out STD_LOGIC;
             ALUSrc         : out STD_LOGIC;
             RegWrite       : out STD_LOGIC;
             Jump           : out STD_LOGIC;
             ImmSrc         : out STD_LOGIC_VECTOR(1 downto 0);
             ALUControl     : out STD_LOGIC_VECTOR(2 downto 0));
    end component;

    component datapath is
        generic(RISCV_Data_Width : INTEGER := 32);
        port(clk, reset : IN STD_LOGIC;
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
             ReadData : IN STD_LOGIC_VECTOR(RISCV_Data_Width-1 DOWNTO 0));
    end component;

begin
    -- Unidade de Controle
    c: controller port map(
        op         => Instr(6 downto 0),
        funct3     => Instr(14 downto 12),
        funct7b5   => Instr(30),
        Zero       => Zero,
        ResultSrc  => ResultSrc,
        MemWrite   => MemWrite_sig,
        PCSrc      => PCSrc,
        ALUSrc     => ALUSrc,
        RegWrite   => RegWrite,
        Jump       => Jump,
        ImmSrc     => ImmSrc,
        ALUControl => ALUControl
    );

    -- Datapath
    dp: datapath 
        generic map(RISCV_Data_Width => RISCV_Data_Width)
        port map(
        clk        => clk, 
        reset      => reset,
        ResultSrc  => ResultSrc,
        PCSrc      => PCSrc,
        ALUSrc     => ALUSrc,
        RegWrite   => RegWrite,
        ImmSrc     => ImmSrc,
        ALUControl => ALUControl,
        Zero       => Zero,
        PC         => PC,
        Instr      => Instr,
        ALUResult  => ALUResult,
        WriteData  => WriteData,
        ReadData   => ReadData
    );
    
    MemWrite <= MemWrite_sig;
end;