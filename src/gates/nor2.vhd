-- 2-input NOR

-- A B Y
-- 0 0 1
-- 0 1 0
-- 1 0 0
-- 1 1 0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor2 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		Y : out STD_LOGIC  -- output Y = A nor B
	)
end nor2;

architecture transistors of nor2 is
	signal VDD : STD_LOGIC := '1'; -- voltage
	signal GND : STD_LOGIC := '0'; -- ground
	signal nde : STD_LOGIC       ; -- internal node
begin
	-- PUN: two PMOSs in series
	PMOS1 : pmos port map (S => VDD, G => A, D => nde);
	PMOS2 : pmos port map (S => nde, G => B, D => Y  );
	
	-- PDN: two NMOSs in parallel
	NMOS1 : nmos port map (S => GND, G => A, D => Y);
	NMOS2 : nmos port map (S => GND, G => B, D => Y);
end transistors;