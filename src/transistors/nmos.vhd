-- NMOS stands for Negative-channel Metal-Oxide-Semiconductor
-- created by embedding an n-type source and drain in p-type body
-- therefore a positive gate voltage (high, on, 1) relative to source will trigger conduction
--    positive current "flows" toward gate/induces positive charge on gate
--    induces n-type channel/inversion layer
--    means turning the gate ON turns the channel on (i.e. default is for current to not flow)
-- therefore truth table is
--    1 -> 0 (high -> low)
--    0 -> 1
-- "source" is ground and drain/output is a relative positive voltage
--    therefore negative voltage from source to drain
--    therefore negative current (electrons) flows from source to drain
-- acts as a "pull-down" mechanism/switch

-- n-type semiconductors
-- major charge carriers are negative electrons
-- created by doping an intrinsic semiconductor with an electron donor

-- in CMOS drains/output are connected to same node
-- the NMOS is connected to ground at its source
-- the PMOS is connected to the voltage at its source
-- the gates are connected to the same input; therefore one of the transistors is always ON
--    if gate voltage is HIGH then NMOS is on (pulls low, configuration "off")
--    if gate voltage is LOW then PMOS is on (pulls high, configuration "on")

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nmos is
	Port (
		S : in  STD_LOGIC; -- source (ground)
		G : in  STD_LOGIC; -- gate   (input )
		D : out STD_LOGIC  -- drain  (output)
	)
end nmos;

architecture behavioral of nmos is
begin
	process(G,S)
	begin
		if G = '1' then
			D <= S; -- NMOS conducts when gate is HIGH
		else
			D <= 'Z'; -- High impedance when OFF
		end if;
	end process;
end behavioral;