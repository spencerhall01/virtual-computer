-- 4-input NOR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor4 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		D : in  STD_LOGIC; -- input  D
		Y : out STD_LOGIC  -- output Y
	)
end nor4;

architecture transistors of nor4 is
	signal VDD  : STD_LOGIC := '1'; -- voltage
	signal GND  : STD_LOGIC := '0'; -- ground
	signal nde1 : STD_LOGIC       ; -- internal node
	signal nde2 : STD_LOGIC       ; -- internal node
	signal nde3 : STD_LOGIC       ; -- internal node
begin
	-- PUN: four PMOSs in series
	PMOS1 : pmos port map (S => VDD , G => A, D => nde1);
	PMOS2 : pmos port map (S => nde1, G => B, D => nde2);
	PMOS3 : pmos port map (S => nde2, G => C, D => nde3);
	PMOS4 : pmos port map (S => nde3, G => D, D => Y   );
	
	-- PDN: four NMOSs in parallel
	NMOS1 : nmos port map (S => GND, G => A, D => Y);
	NMOS2 : nmos port map (S => GND, G => B, D => Y);
	NMOS3 : nmos port map (S => GND, G => C, D => Y);
	NMOS4 : nmos port map (S => GND, G => D, D => Y);
end transistors;