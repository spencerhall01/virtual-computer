-- XOR
-- implemented using AOI gate, with C = A nand B

-- XOR is equivalent to non-equivalence, or the negation o biconditional (!<->)

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity cmos_XOR is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		Y : out STD_LOGIC  -- output Y = ~(AB+(A nand B))
	);
end cmos_XOR;

architecture Transistors of cmos_XOR is
	signal node : STD_LOGIC; -- internal node
begin
	cmos_NAND port map (A => A, B => B, Y => node);
	cmos_AOI  port map (A => A, B => B, C => node, Y => Y);
end Transistors;