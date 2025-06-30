-- OAI
-- ~((A+B)C)

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity oai21 is
	Port (
		A : in  STD_LOGIC; -- input  A
		B : in  STD_LOGIC; -- input  B
		C : in  STD_LOGIC; -- input  C
		Y : out STD_LOGIC  -- output Y
	);
end oai21;

architecture transistors of oai21 is
	signal VDD   : STD_LOGIC := '1'; -- voltage
	signal GND   : STD_LOGIC := '0'; -- ground
	signal pnode : STD_LOGIC;        -- node internal to PMOS network
	signal nnode : STD_LOGIC;        -- node intenral to NMOS network
begin
	-- PUN: two series PMOSs in parallel with another PMOS
	PMOS1 : PMOS port map (S => VDD,   G => A, D => pnode);
	PMOS2 : PMOS port map (S => pnode, G => B, D => Y);
	PMOS3 : PMOS port map (S => VDD,   G => C, D => Y);
	
	-- PDN: two parallel NMOSs in series with another NMOS
	NMOS1 : NMOS port map (S => GND,   G => A, D => nnode);
	NMOS2 : NMOS port map (S => GND,   G => B, D => nnode);
	NMOS3 : NMOS port map (S => nnode, G => C, D => Y); 
end transistors;