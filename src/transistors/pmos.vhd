-- PMOS stands for Positive-channel Metal-Oxide-Semiconductor
-- created by embedding a p-type source and drain in an n-type body
-- therefore a negative gate voltage (low, off, 0) relative to source will trigger conduction
--    positive current "flows" away from gate/induces negative charge on gate
--    induces p-type channel/inversion layer
--    means turning the gate ON turns the channel off (i.e. default is for current to flow)
--    logically acts like an inverter/NOT
-- therefore truth table is
--    0 -> 1 (low -> high)
--    1 -> 0
-- source is a positive voltage (VDD) and drain/output is a relative negative voltage
--    therefore positive voltage from source to drain
--    therefore positive current (holes) flows from source to drain
-- acts as a "pull-up" mechanism

-- p-type semiconductors
-- major charge carriers are positive "holes"
-- created by doping an intrinsic semiconductor (Si, Ge) with an electron acceptor (B, Al, Ga)


-- in CMOS drains/output are connected to same node
-- the NMOS is connected to ground at its source
-- the PMOS is connected to the voltage at its source
-- the gates are connected to the same input; therefore one of the transistors is always ON
--    if gate voltage is HIGH then NMOS is on (pulls low, configuration "off")
--    if gate voltage is LOW then PMOS is on (pulls high, configuration "on")
-- no direct connection between voltage and ground so no static power draw -> more efficient

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 0 -> LOW  / NEGATIVE / OFF / High impedance
-- 1 -> HIGH / POSITIVE / ON  / Low impedance

--------------------------------------------------------------------------------
-- PMOS
--------------------------------------------------------------------------------

--  A single PMOS behaves like an inverter (NOT)

-- | G | D |
-- |---|---|
-- | 0 | 1 |
-- | 1 | Z |

entity pmos is
	Port (
		S : in  STD_LOGIC; -- source (voltage)
		G : in  STD_LOGIC; -- gate   (input  )
		D : out STD_LOGIC  -- drain  (output )
	)
end pmos;

architecture behavioral of pmos is
begin
	process(G,S)
	begin
		if G = '0' then
			D <= S; -- Conducts when gate is LOW
		else
			D <= 'Z'; -- High impedance when gate is HIGH
		end if;
	end process;
end behavioral;