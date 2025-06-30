-- Mux 4:1

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		Sel: in STD_LOGIC; -- input  S
		Y : out STD_LOGIC  -- output Y = ~(AB+(A nor B))
	);
end mux;

architecture gates of mux is
	signal node : STD_LOGIC; -- internal node
begin
	NOT1: cmos_NOT port map (A => Sel, Y => NotSel);
	AND1: cmos_AND port map (A => A, B => NotSel, Y => outA);
	AND2: cmos_AND port map (A => Sel, B => B, Y => outB);
	 OR1: cmos_OR  port map (A => outA, B => outB, Y => Y);
end gates;