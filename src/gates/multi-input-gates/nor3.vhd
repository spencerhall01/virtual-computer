-- 3-input NOR

-- A B C Y
-- 0 0 0 1
-- 0 0 1 0
-- 0 1 0 0
-- 0 1 1 0
-- 1 0 0 0
-- 1 0 1 0
-- 1 1 0 0
-- 1 1 1 0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor3 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		Y : out STD_LOGIC  -- output Y
	)
end nor3;

architecture transistors of nor3 is
	signal VDD  : STD_LOGIC := '1'; -- voltage
	signal GND  : STD_LOGIC := '0'; -- ground
	signal nde1 : STD_LOGIC       ; -- internal node
	signal nde2 : STD_LOGIC       ; -- internal node
begin
	-- PUN: three PMOSs in series
	PMOS1 : pmos port map (S => VDD , G => A, D => nde1);
	PMOS2 : pmos port map (S => nde1, G => B, D => nde2);
	PMOS3 : pmos port map (S => nde2, G => C, D => Y   );
	
	-- PDN: three NMOSs in parallel
	NMOS1 : nmos port map (S => GND, G => A, D => Y);
	NMOS2 : nmos port map (S => GND, G => B, D => Y);
	NMOS3 : nmos port map (S => GND, G => C, D => Y);
end transistors;