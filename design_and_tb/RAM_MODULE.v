module RAM ( clk , rst_n , Din , Dout , rx_valid , tx_valid ) ; 

parameter MEM_DEPTH = 256 ; 
parameter ADDr_SIZE = 8   ; 

input clk , rst_n , rx_valid ; 
input [9:0] Din ;

output reg [7:0] Dout ; 
output reg  tx_valid   ; 

reg [7:0] mem [MEM_DEPTH-1:0] ; 

reg [ADDr_SIZE-1:0] ADDr      ; 

always @( posedge clk ) begin
    
    if(~rst_n) begin 
        Dout     <= 0 ;
        tx_valid <= 0 ; 
        ADDr <= 0 ;
    end
    else begin 
        case(Din[9:8]) 
            2'b00: begin 
                if(rx_valid) 
                    ADDr <= Din[7:0] ; 
                    tx_valid <= 0 ; 
            end
            2'b01 : begin 
                if(rx_valid) 
                    mem [ADDr] <= Din[7:0] ;
                    tx_valid <= 0 ;        
            end
            2'b10 : begin 
                if(rx_valid) 
                    ADDr <= Din[7:0] ; 
                    tx_valid <= 0 ;        
            end
            2'b11 : begin 
                Dout <= mem[ADDr] ;  
                tx_valid <= 1 ;        
            end 
            default : begin 
                Dout <= 0 ; 
                tx_valid <= 0 ;   
            end
        endcase 
    end
end

endmodule 