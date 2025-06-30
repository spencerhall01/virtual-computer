-- XNOR
-- implemented using OAI gate, with C = A nor B

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity cmos_XNOR is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		Y : out STD_LOGIC  -- output Y = ~(AB+(A nor B))
	);
end cmos_XNOR;

architecture Transistors of cmos_XNOR is
	signal node : STD_LOGIC; -- internal node
begin
	cmos_NOR port map (A => A, B => B, Y => node);
	cmos_OAI port map (A => A, B => B, C => node, Y => Y); 
end Transistors;