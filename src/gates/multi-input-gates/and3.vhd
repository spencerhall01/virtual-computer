-- 3-input AND

-- This implementation uses 3-input NAND followed by NOT.
-- AND is only true if all the inputs are true.
--  Because of this it can check for a zero input.

-- A B C Y
-- 0 0 0 0
-- 0 0 1 0
-- 0 1 0 0
-- 0 1 1 0
-- 1 0 0 0
-- 1 0 1 0
-- 1 1 0 0
-- 1 1 1 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and3 is
    Port (
       A : in  STD_LOGIC; -- input  A
       B : in  STD_LOGIC; -- input  B
       C : in  STD_LOGIC; -- input  C
       Y : out STD_LOGIC  -- output Y
    )
end and3;

architecture gates of and3 is
    signal nde : STD_LOGIC; -- internal node
begin
    nand3 port map (A => A  , B => B, C => C, Y => nde);
    not1  port map (A => nde, Y => Y);
end gates;