// Can be instantiated as ALU_MUX, Data_Cache_MUX, and PC_MUX

module MUX_2x1 (
    input [31:0] input0,   
    input [31:0] input1,   
    input select,          
    output [31:0] out      
);

    assign out = (select) ? input1 : input0;  

endmodule