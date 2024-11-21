`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 06:15:05 PM
// Design Name: 
// Module Name: tb_Decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Decoder #(parameter bits = 2);
    logic [bits-1:0] i;
    logic en;
    logic [2**bits-1:0] out;

 Decoder #(bits) decoder1(
    .i(i),
    .en(en),
    .out(out)
);

    initial begin
        en = 0;
        i = 2'b00; #10
        
        en = 1; 
        i = 2'b00; #10
        
        en = 1; 
        i = 2'b01; #10
        
        en = 1; 
        i = 2'b10; #10
        
        en = 1; 
        i = 2'b11; #10
        
        en = 0; 
        i = 2'b11; #10
        
        $finish;
        end
                
endmodule
