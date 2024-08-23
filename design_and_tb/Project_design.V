module SPI ( mosi , ss_n , clk , rst_n , miso ) ; 

input mosi , ss_n , clk , rst_n ; 
output  miso ; 

wire [9:0] rx_data  ; 
wire       rx_valid ; 

wire [7:0] tx_data  ; 
wire       tx_valid ; 

SPI_SLAVE BLK_1 ( .mosi(mosi) , .ss_n(ss_n) , .clk(clk) , .rst_n(rst_n) , .tx_valid(tx_valid) ,
                    .tx_data(tx_data) , .miso(miso) , .rx_valid(rx_valid) , .rx_data(rx_data) ) ;

RAM  BLK_2 ( .clk(clk) , .rst_n(rst_n) , .Din(rx_data)  , .rx_valid(rx_valid) , .tx_valid(tx_valid) , .Dout(tx_data) ) ; 



endmodule 