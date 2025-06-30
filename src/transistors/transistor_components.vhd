-- Transistor Components Library
-- Declares PMOS, NMOS, and Diode components for use in transistor-level designs
-- Used in CMOS-based gates (e.g., NAND, NOR) for a computer built from transistors

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package transistor_components is
    -- PMOS transistor
    -- Conducts when gate is low (G = '0'), connecting source (S) to drain (D)
    component pmos
        port (
            G : in  STD_LOGIC;  -- Gate input
            S : in  STD_LOGIC;  -- Source input
            D : out STD_LOGIC   -- Drain output
        );
    end component;

    -- NMOS transistor
    -- Conducts when gate is high (G = '1'), connecting source (S) to drain (D)
    component nmos
        port (
            G : in  STD_LOGIC;  -- Gate input
            S : in  STD_LOGIC;  -- Source input
            D : out STD_LOGIC   -- Drain output
        );
    end component;

    -- Diode
    -- Allows current from anode (A) to cathode (C) when forward-biased
    component diode
        port (
            A : in  STD_LOGIC;  -- Anode input
            K : out STD_LOGIC   -- Cathode output
        );
    end component;
end package transistor_components;