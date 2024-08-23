module SPI_tb  ; 

reg  mosi , ss_n , clk , rst_n ; 
wire  miso ; 


SPI DUT ( .mosi(mosi) , .ss_n(ss_n) , .clk(clk) , .rst_n(rst_n) , .miso(miso) ) ; 


initial begin
    clk = 0 ;
    forever #1 clk = ~clk ; 
end

initial begin 
    $readmemb ("mem.dat" , DUT.BLK_2.mem ) ;  
    rst_n = 0 ;  
    @(negedge clk ) ; 
    rst_n = 1 ; 
    ss_n  = 1 ; 
    @(negedge clk ) ; 
    ss_n  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 0 ; 
    @(negedge clk ) ; 
    repeat (8) begin 
        mosi = $random ; 
        @(negedge clk ) ;
    end
    // write addr done 
    mosi = 'bx ; 
    ss_n  = 1 ; 
    @(negedge clk ) ; 
    ss_n  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 0 ;
    @ (negedge clk ) ;
    mosi  = 1 ;
    @ (negedge clk ) ;
    mosi  = 0 ;
    @ (negedge clk ) ;
    repeat (7) begin 
        mosi = $random ; 
        @(negedge clk ) ;
    end
    //write data done ; 
    mosi = 'bx ; 
    ss_n  = 1 ; 
    @(negedge clk ) ; 
    ss_n  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 1 ; 
    @(negedge clk ) ; 
    mosi  = 1 ;
    @ (negedge clk ) ;
    mosi  = 0 ;
    @ (negedge clk ) ;
    repeat (8) begin 
        mosi = $random ; 
        @(negedge clk ) ;
    end
    //read addr done 

    mosi = 'bx ; 
    ss_n  = 1 ; 
    @(negedge clk ) ; 
    ss_n  = 0 ; 
    @(negedge clk ) ; 
    mosi  = 1 ; 
    @(negedge clk ) ; 
    mosi  = 1 ;
    @ (negedge clk ) ;
    mosi  = 1 ;
    @ (negedge clk ) ;
    repeat (8) begin 
        mosi = $random ; 
        @(negedge clk ) ;
    end
    // read data done 
    
    ss_n = 0 ; 
    repeat(20) begin
        @(negedge clk) ; 
    end
    ss_n = 1 ;
    @(negedge clk) ; 
$stop ; 
end
endmodule 
