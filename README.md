# SPI-Slave with Single Port RAM

## Overview

### This project involves designing and implementing an SPI Slave with Single Port RAM.
### The SPI Slave with Single Port RAM project involves designing an SPI Slave module integrated with a Single Port RAM. This project provides a reliable interface for SPI communication and efficient data storage, ensuring robust performance for embedded systems and microcontroller-based applications.

## Project Description File

### The project description file provides an overview of the project's objectives, design details, and implementation guidelines. It is a crucial resource for understanding the scope and requirements of the project.

### You can find the project description in the following file:

[`SPI SLAVE WITH SINGLE PORT RAM.pdf`](SPI%20SLAVE%20WITH%20SINGLE%20PORT%20RAM.pdf): Contains detailed information about the design specifications and explains the ports of design . 


## Design Files

### Here are the design files included in this project:

### [`Project_design.V`](design_and_tb/Project_design.V): Top-level module that integrates the SPI Slave with the Single Port RAM.

### [`SPI_SLAVE_module.v`](design_and_tb/SPI_SLAVE_module.v): Implements the SPI Slave interface.

### [`RAM_MODULE.v`](design_and_tb/RAM_MODULE.v): Implements the Single Port RAM for data storage.

### [`Counter_up_module.v`](design_and_tb/Counter_up_module.v) : To use counter . 

### I used [`general_Constraints_basys3.xdc`](design_and_tb/general_Constraints_basys3.xdc) to specify design constraints, including pin assignments and timing signals, to ensure the correct functionality and performance of the design. . 


## Test Files

These files are used to test and verify the functionality of the design:

### [`TB_project_code.v`](design_and_tb/TB_project_code.v): Testbench for the top-level module.

### [`tb_ram.v`](design_and_tb/tb_ram.v): Testbench for the Single Port RAM.

### [`mem.dat`](design_and_tb/mem.dat):  This file is intended to initialize the RAM with known data for verification and validation of memory operations.

### [`do_file.do`](design_and_tb/do_file.do) use this file to compile and simulate in qesta sim tool . 

## simulation : 

### Using qesta sim tool . 

### Results of somulation are in  [`simulation_questasim`](simulation_questasim/) . 

## synthesis and implementation : 

### Using vivado tool .

### [`elaboration_vivado`](elaboration_vivado/) > RTL elaboration  .

### [`synthesis_vivado`](synthesis_vivado/) >  Synthesis results .

### [`impl_vivado`](impl_vivado/) > implementation results .

### [`Vivado_files`](Vivado_files/) This contains netlist and bitstream fiels . 

## THX . 
## For any questions or further information, please feel free to contact me.
## Email : [moazesmail52@gmail.com](mailto:moazesmail52@gmail.com) .
## LinkedIn : [Moaz Ismail](https://www.linkedin.com/in/moaz-ismail-/) .
