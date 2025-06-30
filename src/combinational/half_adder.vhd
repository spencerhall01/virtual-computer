-- Half Adder

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
	Port (
		A : in  STD_LOGIC; -- input A
		B : in  STD_LOGIC; -- input B
		S : out STD_LOGIC; -- sum
		C : out STD_LOGIC  -- carry
	)
end half_adder;

architecture gates of half_adder is
begin
	xor2 port map (A => A, B => B, Y => S); -- sum
	and2 port map (A => A, B => B, Y => C); -- carry
end gates;