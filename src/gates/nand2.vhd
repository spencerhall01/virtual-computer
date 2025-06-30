-- 2-input NAND

-- A B Y
-- 0 0 1
-- 0 1 1
-- 1 0 1
-- 1 1 0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand2 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		Y : out STD_LOGIC  -- output Y = A nand B
	)
end nand2;

architecture transistors of nand2 is
	signal VDD : STD_LOGIC := '1'; -- voltage
	signal GND : STD_LOGIC := '0'; -- ground
	signal nde : STD_LOGIC       ; -- internal node
begin
	-- PUN: two PMOSs in parallel
	PMOS1 : PMOS port map (S => VDD, G => A, D => Y);
	PMOS2 : PMOS port map (S => VDD, G => B, D => Y);
	
	-- PDN: two NMOSs in series
	NMOS1 : NMOS port map (S => GND, G => A, D => nde);
	NMOS2 : NMOS port map (S => nde, G => B, D => Y  );
end transistors;