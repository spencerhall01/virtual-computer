-- 3-input NAND

-- A B C Y
-- 0 0 0 1
-- 0 0 1 1
-- 0 1 0 1
-- 0 1 1 1
-- 1 0 0 1
-- 1 0 1 1
-- 1 1 0 1
-- 1 1 1 0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand3 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		Y : out STD_LOGIC  -- output Y
	);
end nand3;

architecture transistors of nand3 is
	signal VDD  : STD_LOGIC := '1'; -- voltage
	signal GND  : STD_LOGIC := '0'; -- ground
	signal nde1 : STD_LOGIC       ; -- internal node
	signal nde2 : STD_LOGIC       ; -- internal node
begin
	-- PUN: three PMOSs in parallel
	PMOS1 : PMOS port map (S => VDD, G => A, D => Y);
	PMOS2 : PMOS port map (S => VDD, G => B, D => Y);
	PMOS3 : PMOS port map (S => VDD, G => C, D => Y);
	
	-- PDN: three NMOSs in series
	NMOS1 : NMOS port map (S => GND , G => A, D => nde1);
	NMOS2 : NMOS port map (S => nde1, G => B, D => nde2);
	NMOS3 : NMOS port map (S => nde2, G => C, D => Y   );
end transistors;