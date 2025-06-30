-- NOT (Inverter)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not1 is
	Port (
		A : in  STD_LOGIC; -- input  A
		Y : out STD_LOGIC  -- output Y = not A
	)
end not1;

architecture structural of not1 is
	signal VDD : STD_LOGIC := '1'; -- voltage
	signal GND : STD_LOGIC := '0'; -- ground
begin
	pmos port map (S => VDD, G => A, D => Y); -- PUN
	nmos port map (S => GND, G => A, D => Y); -- PDN
end structural;