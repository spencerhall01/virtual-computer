-- Testbench for 2-Input AND

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.components.all;

entity and2_tb is
    -- Testbench has no ports
end and2_tb;

architecture behavioral of and2_tb is
    -- Signals for connecting to the Unit Under Test (UUT)
    signal A : STD_LOGIC := '0'; -- Input A
    signal B : STD_LOGIC := '0'; -- Input B
    signal Y : STD_LOGIC       ; -- Output Y

begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: entity work.and2
        port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Stimulus process to apply inputs and check outputs
    stimulus: process
    begin
        -- Test case 1: A = 0, B = 0, expect Y = 0
        A <= '0'; B <= '0';
        wait for 10 ns;
        assert Y = '0' report "Error: A=0, B=0, Y should be 0 but is " & STD_LOGIC'image(Y) severity error;

        -- Test case 2: A = 0, B = 1, expect Y = 0
        A <= '0'; B <= '1';
        wait for 10 ns;
        assert Y = '0' report "Error: A=0, B=1, Y should be 0 but is " & STD_LOGIC'image(Y) severity error;

        -- Test case 3: A = 1, B = 0, expect Y = 0
        A <= '1'; B <= '0';
        wait for 10 ns;
        assert Y = '0' report "Error: A=1, B=0, Y should be 0 but is " & STD_LOGIC'image(Y) severity error;

        -- Test case 4: A = 1, B = 1, expect Y = 1
        A <= '1'; B <= '1';
        wait for 10 ns;
        assert Y = '1' report "Error: A=1, B=1, Y should be 1 but is " & STD_LOGIC'image(Y) severity error;

        -- End simulation
        report "Testbench completed successfully" severity note;
        wait; -- Stop simulation
    end process;

end behavioral;