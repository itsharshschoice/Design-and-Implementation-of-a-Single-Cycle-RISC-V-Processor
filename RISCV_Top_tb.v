module RISCV_Top_Tb;

    reg clk, rst;
    
    RISCV_Top DUT(.clk(clk), .rst(rst));

    // Clock generation
    always #50 clk = ~clk; 

    // Initialize Clock and Reset 
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        #50;
        rst = 1'b0; 
        #5200; 
        $finish; 
    end

    
    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, DUT);          
    end

endmodule