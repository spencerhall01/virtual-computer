-- 4-input OR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or4 is
	Port (
		A : in  STD_LOGIC; -- input A
		B : in  STD_LOGIC; -- input B
		C : in  STD_LOGIC; -- input C
		D : in  STD_LOGIC; -- input D
		Y : out STD_LOGIC  -- input Y
	)
end or4;

architecture gates of or4 is
	signal nde : STD_LOGIC; -- internal node
begin
	nor4 port map (A => A  , B => B, C => C, D => D, Y => nde);
	not1 port map (A => nde, Y => Y);
end gates;