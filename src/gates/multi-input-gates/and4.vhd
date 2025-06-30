-- 4-input AND

-- AND is only true if all the inputs are true.
-- Bc of this it can check if there is a zero.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and4 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		D : in  STD_LOGIC; -- input  D
		Y : out STD_LOGIC  -- output Y
	)
end and4;

architecture gates of and4 is
	signal nde : STD_LOGIC; -- internal node
begin
	nand4 port map (A => A  , B => B, C => C, D => D, Y => nde);
	 not1 port map (A => nde, Y => Y);
end gates;