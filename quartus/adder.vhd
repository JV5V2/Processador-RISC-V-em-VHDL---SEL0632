library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
    generic(width : integer := 32);
    port(a, b : in std_logic_vector(width-1 downto 0);
         cin  : in std_logic;
         cout : out std_logic;
         s    : out std_logic_vector(width-1 downto 0));
end;

architecture behave of adder is
    signal result : unsigned(width downto 0);
begin
    result <= unsigned('0' & a) + unsigned('0' & b) + ("" & cin);
    s      <= std_logic_vector(result(width-1 downto 0));
    cout   <= result(width);
end;
