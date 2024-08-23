quit -sim 

vlib work 

vlog TB_project_code.v Project_design.V SPI_SLAVE_module.v RAM_MODULE.v Counter_up_module.v    


vsim -voptargs=+acc SPI_tb

add wave -position insertpoint  \
sim:/SPI_tb/mosi \
sim:/SPI_tb/ss_n \
sim:/SPI_tb/clk \
sim:/SPI_tb/rst_n \
sim:/SPI_tb/miso
add wave -position insertpoint  \
sim:/SPI_tb/DUT/rx_data \
sim:/SPI_tb/DUT/rx_valid \
sim:/SPI_tb/DUT/tx_data \
sim:/SPI_tb/DUT/tx_valid
add wave -position insertpoint  \
sim:/SPI_tb/DUT/BLK_1/cs \
sim:/SPI_tb/DUT/BLK_1/ns
add wave -position insertpoint  \
sim:/SPI_tb/DUT/BLK_2/mem \
sim:/SPI_tb/DUT/BLK_2/ADDr

run -all 


