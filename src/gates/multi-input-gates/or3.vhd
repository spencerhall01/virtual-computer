-- 3-input OR

-- A B C Y
-- 0 0 0 0
-- 0 0 1 1
-- 0 1 0 1
-- 0 1 1 1
-- 1 0 0 1
-- 1 0 1 1
-- 1 1 0 1
-- 1 1 1 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or3 is
	Port (
		A : in  STD_LOGIC; -- input A
		B : in  STD_LOGIC; -- input B
		C : in  STD_LOGIC; -- input C
		Y : out STD_LOGIC  -- input Y
	)
end or3;

architecture gates of or3 is
	signal nde : STD_LOGIC; -- internal node
begin
	nor3 port map (A => A  , B => B, C => C, Y => nde);
	not1 port map (A => nde, Y => Y);
end gates;