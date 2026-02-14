library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package riscv_pkg is

    -- ===============================================================
    -- COMPONENTES DO DATAPATH (PEQUENOS)
    -- ===============================================================

    component mux2 is
        generic(width : integer := 32);
        port(d0, d1 : in std_logic_vector(width-1 downto 0);
             s      : in std_logic;
             y      : out std_logic_vector(width-1 downto 0));
    end component;

    component mux3 is
        generic(width : integer := 32);
        port(d0, d1, d2 : in std_logic_vector(width-1 downto 0);
             s          : in std_logic_vector(1 downto 0);
             y          : out std_logic_vector(width-1 downto 0));
    end component;

    component adder is
        generic(width : integer := 32);
        port(a, b : in std_logic_vector(width-1 downto 0);
             cin  : in std_logic;
             cout : out std_logic;
             s    : out std_logic_vector(width-1 downto 0));
    end component;

    component flopr is
        generic(width : integer := 32);
        port(clk, reset : in std_logic;
             d          : in std_logic_vector(width-1 downto 0);
             q          : out std_logic_vector(width-1 downto 0));
    end component;

    component extend is
        port(imm_src : in std_logic_vector(1 downto 0);
             instr   : in std_logic_vector(31 downto 0);
             imm_ext : out std_logic_vector(31 downto 0));
    end component;

    component regfile is
        generic(width : integer := 32);
        port(clk : in std_logic;
             we3 : in std_logic;
             a1, a2, a3 : in std_logic_vector(4 downto 0);
             wd3 : in std_logic_vector(31 downto 0);
             rd1, rd2 : out std_logic_vector(31 downto 0));
    end component;

    component alu is
        generic(width : integer := 32);
        port(srca, srcb : in std_logic_vector(width-1 downto 0);
             alucontrol : in std_logic_vector(2 downto 0);
             aluresult  : out std_logic_vector(width-1 downto 0);
             zero       : out std_logic;
             overflow   : out std_logic);
    end component;

    -- ===============================================================
    -- COMPONENTES DO TOP LEVEL (GRANDES)
    -- ===============================================================

    -- Processador RISC-V Single Cycle
    component riscvsingle is
        generic(RISCV_Data_Width : integer := 32);
        port(clk, reset : in std_logic;
             PC         : out std_logic_vector(31 downto 0);
             Instr      : in  std_logic_vector(31 downto 0);
             MemWrite   : out std_logic;
             ALUResult  : out std_logic_vector(31 downto 0);
             WriteData  : out std_logic_vector(31 downto 0);
             ReadData   : in  std_logic_vector(31 downto 0));
    end component;

    -- Memória de Instruções
    component imem is
        generic(RISCV_Data_Width : integer := 32); 
        port(a  : in  std_logic_vector(31 downto 0);
             rd : out std_logic_vector(31 downto 0));
    end component;

    -- Memória de Dados
    component dmem is
        generic(RISCV_Data_Width : integer := 32);
        port(clk, we : in std_logic;
             a, wd   : in std_logic_vector(31 downto 0);
             rd      : out std_logic_vector(31 downto 0));
    end component;

end package;
