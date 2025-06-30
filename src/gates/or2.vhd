-- 2-input OR

-- A B Y
-- 0 0 0
-- 0 1 1
-- 1 0 1
-- 1 1 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or2 is
	Port (
		A : in  STD_LOGIC; -- input A
		B : in  STD_LOGIC; -- input B
		Y : out STD_LOGIC  -- input Y = not(A nor B)
	)
end or2;

architecture gates of or2 is
	signal nde : STD_LOGIC; -- internal node
begin
	nor2 port map (A => A  , B => B, Y => nde);
	not1 port map (A => nde, Y => Y);
end gates;