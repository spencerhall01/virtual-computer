-- Transmission Gate

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmission_gate is
	Port (
		A   : inout  STD_LOGIC; -- input/output A 
		B   : inout  STD_LOGIC; -- input/output B
		sel : in     STD_LOGIC  -- select/enable
	)
end transmission_gate;

architecture transistors of transmission_gate is
	signal nde : STD_LOGIC; -- internal node
begin
	not1 port map (A => sel, Y => nde      );
	pmos port map (G => nde, S => A, D => B);
	
	nmos port map (G => sel, S => A, D => B);
end transistors;