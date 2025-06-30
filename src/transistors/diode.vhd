library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity diode is
	Port (
		A : in  STD_LOGIC; -- annode  (voltage, P)
		K : out STD_LOGIC  -- cathode (ground , N)
	)
end diode;

architecture behavioral of diode is
begin
	process (A)
	begin
		if A = '1' then
			K <= '1'; -- Conduct when forward-biased
		else
			K <= 'Z'; -- High impedance (open circuit)
		end if;
	end process;
end behavioral;