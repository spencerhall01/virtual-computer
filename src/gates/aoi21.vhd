-- 2-1 AND-OR-INVERT (AOI)

-- Inputs A and B are combined with AND (the 2). The output is then
-- combined with C using OR (the 1). Finally, the result is inverted.

-- This implementation uses less transistors than simpley combining
-- the indiviual gates in series
--   Efficiently implements sum-of-products

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.components.all;

entity aoi21 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		Y : out STD_LOGIC  -- output Y = not((A and B) or C)
	);
end aoi21;

architecture structural of aoi21 is
	signal VDD   : STD_LOGIC := '1'; -- voltage
	signal GND   : STD_LOGIC := '0'; -- ground
	signal pnode : STD_LOGIC;        -- node internal to PMOS network
	signal nnode : STD_LOGIC;        -- node intenral to NMOS network
begin
	-- PUN: two parallel PMOSs in series with another PMOS
	PMOS1 : PMOS port map (S => VDD,   G => A, D => pnode);
	PMOS2 : PMOS port map (S => VDD,   G => B, D => pnode);
	PMOS3 : PMOS port map (S => pnode, G => C, D => Y);
	
	-- PDN: two series NMOSs in parallel with another NMOS
	NMOS1 : NMOS port map (S => GND,   G => A, D => nnode);
	NMOS2 : NMOS port map (S => nnode, G => B, D => Y);
	NMOS3 : NMOS port map (S => GND,   G => C, D => Y); 
end structural;