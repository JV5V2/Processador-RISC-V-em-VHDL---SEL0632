library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity som_1a is
	PORT
	(
		-- Input ports
		a,b,ve	: in  STD_LOGIC;

		-- Output ports
		s,vs : out STD_LOGIC
	);
end som_1a;

ARCHITECTURE teste OF som_1a IS

BEGIN

s <= a XOR b XOR ve;
vs <= (a AND b) OR (ve AND (a OR b));

END teste;