-- 2-way MUX (IF)

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	Port (
		A   : in  STD_LOGIC; -- input A
		B   : in  STD_LOGIC; -- input B
		Sel : in  STD_LOGIC; -- select
		Y   : out STD_LOGIC  -- output Y
	);
end mux;

architecture gates of mux is
	signal outA : STD_LOGIC; -- internal node
	signal outB : STD_LOGIC; -- internal node
begin
	NOT1: not1 port map (A => Sel, Y => NotSel);
	AND1: and2 port map (A => A   , B => NotSel, Y => outA);
	AND2: and2 port map (A => Sel , B => B     , Y => outB);
	 OR1:  or2 port map (A => outA, B => outB, Y => Y);
end gates;