`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/16 19:47:35
// Design Name: 
// Module Name: Adder
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


module Adder(
   input [31:0]a,
   input [31:0]b,
   output reg [31:0]r
    );
    reg [32:0]temp_data;
   always @(*)
   begin
   temp_data=a+b;
   r=temp_data[31:0];
   end
endmodule
