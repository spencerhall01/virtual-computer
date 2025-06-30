-- Gate Components Library
-- Declares basic logic gates for use in gate-level designs
-- Used in higher-level components (e.g., flip-flops, ALUs) for a computer built from transistors

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package gate_components is
    -- 2-input NAND gate
    -- Truth table: Y = not(A and B)
    -- A B | Y
    -- 0 0 | 1
    -- 0 1 | 1
    -- 1 0 | 1
    -- 1 1 | 0
    component nand2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A nand B
        );
    end component;

    -- 2-input NOR gate
    -- Truth table: Y = not(A or B)
    -- A B | Y
    -- 0 0 | 1
    -- 0 1 | 0
    -- 1 0 | 0
    -- 1 1 | 0
    component nor2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A nor B
        );
    end component;

    -- 2-input AND gate
    -- Truth table: Y = A and B
    -- A B | Y
    -- 0 0 | 0
    -- 0 1 | 0
    -- 1 0 | 0
    -- 1 1 | 1
    component and2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A and B
        );
    end component;

    -- 2-input OR gate
    -- Truth table: Y = A or B
    -- A B | Y
    -- 0 0 | 0
    -- 0 1 | 1
    -- 1 0 | 1
    -- 1 1 | 1
    component or2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A or B
        );
    end component;

    -- NOT gate (Inverter)
    -- Truth table: Y = not A
    -- A | Y
    -- 0 | 1
    -- 1 | 0
    component not1
        port (
            A : in  STD_LOGIC;  -- Input
            Y : out STD_LOGIC   -- Output: Y = not A
        );
    end component;

    -- 2-input XOR gate
    -- Truth table: Y = A xor B
    -- A B | Y
    -- 0 0 | 0
    -- 0 1 | 1
    -- 1 0 | 1
    -- 1 1 | 0
    component xor2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A xor B
        );
    end component;

    -- 2-input XNOR gate
    -- Truth table: Y = not(A xor B)
    -- A B | Y
    -- 0 0 | 1
    -- 0 1 | 0
    -- 1 0 | 0
    -- 1 1 | 1
    component xnor2
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            Y : out STD_LOGIC   -- Output: Y = A xnor B
        );
    end component;

    -- AOI21 gate (AND-OR-Invert)
    -- Truth table: Y = not((A and B) or C)
    component aoi21
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            C : in  STD_LOGIC;  -- Input C
            Y : out STD_LOGIC   -- Output: Y = not((A and B) or C)
        );
    end component;

    -- OAI21 gate (OR-AND-Invert)
    -- Truth table: Y = not((A or B) and C)
    component oai21
        port (
            A : in  STD_LOGIC;  -- Input A
            B : in  STD_LOGIC;  -- Input B
            C : in  STD_LOGIC;  -- Input C
            Y : out STD_LOGIC   -- Output: Y = not((A or B) and C)
        );
    end component;
end package gate_components;