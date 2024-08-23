module counter_up ( clk , en , rst_n , out ) ; 
parameter  range = 15 ; 
parameter num_of_bit = 4 ; 

input clk , rst_n, en ; 
output reg [num_of_bit-1:0] out ; 

always @(posedge clk ) begin
    if(~rst_n) 
        out <= 0 ; 
    else begin 
        if(en) begin 
            if (out == (range-1)) 
                out <= 0 ; 
            else 
                out <= out + 1 ; 
        end
    end 
end


endmodule 