# Spanning Trees on Quantum Annealers
   
   This project is a digital computer built entirely from the ground up in VHDL. It starts at the transistor level (PMOS, NMOS) and builds upwards to basic logic gates (NOT, NAND, NOR, etc.), followed by combinational and sequential circuits (AND, OR, XOR, XNOR, IMPLY, flip-flops, multiplexers, etc.), memory components, an ALU, and eventually a simple CPU architecture.
   
   The purpose of this project is educational — to fully understand how computers work at the lowest levels of abstraction by constructing each component manually in VHDL.
   
   The project is currently a work in progress. Some components are functional and tested, while others are still under development or being refined.
   
## Project Status
   
   ### Implemented
   
   - Transistors
   - Basic logic gates
   - Multiplexers
   - Half-adder
   - Some sequential components
   
   ### In Progress
   
   - Testbenches
   - Naming convention cleanup
   - More sequential components
   - Planning for ALU
   
## Repository Structure
   
    .
    ├── src/         # Scripts as they were at the end of the research projects
    ├── docs/        # Notes, images, TODOs, links, etc. - empty for now
    ├── sim/         # Core scripts used during the studies - may be updated later
    ├── LICENSE      # License file (MIT)
    └── README.md    # Project overview and documentation
   
## Requirements
   
   - GHDL or any other VHDL simulator
   - GTKWave for waveform analysis and viewing signal outputs
   - Synthesis tool if targeting FPGAs (optional)
   - Basic understanding of VHDL and digital design
   
   Tested primarily on Linux/WSL but should work on Mac and Windows with appropriate setup
   
## Usage
   
   Below is an example workflow using GHDL and GTKWave.
   
   1. Analyze source files
      
       ghdl -a src/combinational/gates/and.vhdl
       ghdl -a src/testbenches/and_tb.vhdl
      
   2. Elaborate the design
      
       ghdl -e and_tb
      
   3. Run the simulation
      
       ghdl -r and_tb --wave=and_tb.ghw
        
   4. View waveforms
      
       gtkwave and_tb.ghw
      
   Repeat for other components by changing the filenames to match the module/testbench you're running.
   
## Known Issues / TODO
   
   - Some files still need cleanup (consistent naming & formatting)
   - Additional testbenches are being added
   - More complex components like full adders, encoders, counters, *etc.*, are planned
   - ALU is currently being researched and planned
   - No synthesis constraints; simulation only for now
   
## License
   
   This repository is licensed under the MIT License. See [`LICENSE`](./LICENSE) for details.
   
## Citation
   
   If you use this code or portions of it, please cite or acknowledge this repository :)
   