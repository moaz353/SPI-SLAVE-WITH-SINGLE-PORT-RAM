module RAM_tb ;

reg clk , rst_n , rx_valid ; 
reg [9:0] Din ;

wire [7:0] Dout ; 
wire tx_valid   ; 



RAM DUT (.clk(clk),.rst_n(rst_n),.Din(Din),.Dout(Dout),.rx_valid(rx_valid),.tx_valid(tx_valid)) ; 

initial begin
    clk=0;
    forever 
    #1 clk =~clk ; 
end

initial begin
    $readmemb ("mem.dat" , DUT.mem ) ;  
    rst_n = 0 ; 
    rx_valid = 0 ;
    Din = 0 ; 
    @(negedge clk ) ; 
    rst_n = 1 ;
        Din[7:0] = 254 ; 
        rx_valid = 1 ; 
        Din[9:8] = 0 ; 
        @(negedge clk) ;

        Din[7:0] = $random ; 
        rx_valid = 1 ; 
        Din[9:8] = 2'b01 ; 
        @(negedge clk) ;

        Din[7:0] = 254 ; 
        rx_valid = 1 ; 
        Din[9:8] = 2'b10 ; 
        @(negedge clk) ;

        Din[7:0] = $random ; 
        rx_valid = 1 ; 
        Din[9:8] = 2'b11 ; 
        @(negedge clk) ;
    $stop ; 
end
endmodule 