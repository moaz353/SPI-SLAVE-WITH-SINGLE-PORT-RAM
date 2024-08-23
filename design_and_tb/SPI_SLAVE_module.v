module SPI_SLAVE ( mosi , ss_n , clk , rst_n , tx_valid , tx_data , miso , rx_valid , rx_data ) ; 

parameter IDEL      = 3'b000 ; 
parameter CHK_CMD   = 3'b001 ; 
parameter WRITE     = 3'b010 ; 
parameter READ_ADDR = 3'b011 ; 
parameter READ_DATA = 3'b100 ; 

input clk , rst_n , ss_n , mosi , tx_valid ; 
input  [7:0] tx_data ; 

reg [7:0] tx_data_reg ; 
output reg miso , rx_valid ; 
output reg [9:0] rx_data   ; 

(* fsm_encoding = "gray" *)reg [2:0] cs , ns ; 

reg  counter_en , counter_en_1 , counter_en_2 ; 

wire [3:0] position_1 ; 
reg tst ; 

counter_up #(.range(11)) counter_1 (.clk(clk),.rst_n(rst_n),.en(counter_en),.out(position_1)) ; 


always @(*) begin
    counter_en = counter_en_1 & counter_en_2 ;  // to avoid multi driven ;
end
// state memory 

always @(posedge clk ) begin
    if(~rst_n) 
        cs <= 3'b000 ; 
    else 
        cs <= ns ;
end

// next state block  

always @(*) begin
    if(~rst_n) begin 
        counter_en_1 = 0 ; 
        ns = 3'b000 ; 
    end
    else begin
        case(cs) 
            3'b000 : begin 
                        if(ss_n) begin 
                            ns = 3'b000 ; 
                            counter_en_1 = 0 ; 
                        end
                        else begin 
                            ns = 3'b001 ; 
                            counter_en_1 = 0 ;
                        end
            end
            3'b001 : begin 
                    if (ss_n) begin 
                        ns = 3'b000 ; 
                        counter_en_1 = 0 ; 
                    end
                    else begin 
                        counter_en_1 = 1 ;
                        if(~mosi) 
                            ns = 3'b010 ; 
                        else begin 
                            if(tst) 
                                ns = 3'b100 ; 
                            else 
                                ns = 3'b011 ; 
                        end
                    end
            end
            3'b010 : begin 
                    if (ss_n) begin 
                        ns = 3'b000 ; 
                        counter_en_1 = 0 ; 
                    end 
                    else begin
                        counter_en_1 = 1 ;
                        ns = 3'b010 ; 
                    end
            end
            3'b011 :begin 
                    if (ss_n) begin 
                        ns = 3'b000 ; 
                        counter_en_1 = 0 ; 
                    end
                    else begin
                        counter_en_1 = 1 ;
                        ns = 3'b011 ; 
                    end
            end
            3'b100 : begin 
                    if (ss_n) begin 
                        ns = 3'b000 ; 
                        counter_en_1 = 0 ; 
                    end
                    else begin 
                        counter_en_1 = 1 ;
                        ns = 3'b100 ; 
                    end
            end
            default : begin 
                counter_en_1 = 0 ;
                ns = 3'b000;
            end
        endcase
    end
end


// output  : rx_data , miso ; 

always @(posedge clk ) begin
    tx_data_reg <= tx_data ; 
    if(~rst_n) begin 
        rx_data      <= 0 ; 
        tst          <= 0 ;
        tx_data_reg  <= 0 ; 
        rx_valid     <= 0 ;
        counter_en_2 <= 0 ; 
        miso         <= 0 ;
    end

    else begin 
        case(cs) 

            3'b010 : begin 
                rx_data <= {rx_data[8:0] , mosi } ; 
                if( position_1 == 10 ) begin 
                    rx_valid <= 1 ;
                    counter_en_2 <= 0 ;
                end
                else 
                    rx_valid <= 0 ; 
            end

            3'b011 : begin 
                rx_data <= {rx_data[8:0] , mosi } ;
                tst                 <= 1  ; 
                if( position_1 == 10 ) begin 
                    rx_valid <= 1 ;
                    counter_en_2 <= 0 ; 
                end 
                else 
                    rx_valid <= 0 ; 
            end

            3'b100 : begin 
                if(tx_valid) begin 
                    miso <= tx_data_reg [7] ; 
                    tx_data_reg <= {tx_data_reg[6:0],1'b0} ;
                end

                rx_data <= {rx_data[8:0] , mosi } ;    
                tst   <= 0 ; 
                if( position_1 == 10 ) begin
                    rx_valid   <= 0 ;
                    counter_en_2 <= 0 ; 
                end 
                else 
                    rx_valid <= 0 ; 
            end 
            default : begin 
                rx_data    <= 0 ;
                rx_valid   <= 0 ;
                counter_en_2 <= 1 ;
            end
        endcase

    end
    
end

endmodule 