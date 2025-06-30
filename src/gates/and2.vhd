-- 2-Input AND

-- This implementation uses NAND followed by NOT.

-- AND is only true if all the inputs are true.
--   Because of this it can check for a zero input.

-- TRUTH TABLE
--    A B Y
--    0 0 0
--    0 1 0
--    1 0 0
--    1 1 1

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.components.all;

entity and2 is
    Port (
        A : in  STD_LOGIC; -- input  A
        B : in  STD_LOGIC; -- input  B
        Y : out STD_LOGIC  -- output Y = not(A nand B)
    );
end and2;

architecture structural of and2 is
    signal nand2not : STD_LOGIC; -- internal node
begin
    -- NAND
    nand2 port map (
        A => A,
        B => B,
        Y => nand2not
    );
    -- NOT
    not1  port map (
        A => nand2not, 
        Y => Y
    );
end structural;