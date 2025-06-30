-- 4-way MUX

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	Port (
		A    : in  STD_LOGIC; -- input  A
		B    : in  STD_LOGIC; -- input  B
		Sel1 : in  STD_LOGIC; -- select 1
		C    : in  STD_LOGIC; -- input  C
		D    : in  STD_LOGIC; -- input  D
		Sel2 : in  STD_LOGIC; -- select 2
		Y    : out STD_LOGIC  -- output Y
	);
end mux4;

architecture gates of mux4 is
	signal out1 : STD_LOGIC; -- internal node
	signal out2 : STD_LOGIC; -- internal node
begin
	MUX2_1: mux2 port map (A => A   , B => B   , Sel => Sel1, Y => out1);
	MUX2_2: mux2 port map (A => C   , B => D   , Sel => Sel1, Y => out2);
	MUX2_3: mux2 port map (A => out1, B => out2, Sel => Sel2, Y => Y   );
end gates;