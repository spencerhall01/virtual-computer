-- Gated SR Latch

-- S E And
-- 0 0 0
-- 0 1 0
-- 1 0 0
-- 1 1 1

-- R E And
-- 0 0 0
-- 0 1 0
-- 1 0 0
-- 1 1 1

-- E = 0 -> S = R = 0
-- E = 1 -> same behavior as SR Latch
-- thus setting E = 0 removes the undefined behavior (S = R = 1)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gated_sr_latch is
    Port (
        S  : in  STD_LOGIC; -- set
        R  : in  STD_LOGIC; -- reset
        E  : in  STD_LOGIC; -- enable
        Q  : out STD_LOGIC; -- stored value
        nQ : out STD_LOGIC  -- negation of stored value
    )
end gated_sr_latch;

architecture structural of gated_sr_latch is
	signal nde1 : STD_LOGIC; -- internal node
	signal nde2 : STD_LOGIC; -- internal node
begin
	S_and : and2 port map (A => S, B => E, Y => nde1);
	R_and : and2 port map (A => E, B => R, Y => nde2);
	
    sr_latch port map (S => nde1, R => nde2, Q => Q, nQ => nQ);
end structural;