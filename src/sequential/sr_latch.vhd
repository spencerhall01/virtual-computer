-- SR Latch

-- A B Nor
-- 0 0 1
-- 0 1 0
-- 1 0 0
-- 1 1 0

-- S R Output
-- 0 0 hold
-- 0 1 reset (to 0) (R = 1 -> nor is always 0)
-- 1 0 set   (to 1) (S = 1 -> nor is always 0)
-- 1 1 undefined

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_latch is
    Port (
        S  : in  STD_LOGIC; -- set
        R  : in  STD_LOGIC; -- reset
        Q  : out STD_LOGIC  -- stored value
        nQ : out STD_LOGIC; -- negation of stored value
    )
end sr_latch;

architecture structural of sr_latch is
begin
	S_nor : nor2 port map (A => S , B => Q, Y => nQ);
	R_nor : nor2 port map (A => nQ, B => R, Y => Q );
end structural;