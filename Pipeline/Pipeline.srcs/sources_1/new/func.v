`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 12:13:43
// Design Name: 
// Module Name: func
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


module func(
input clk,
input [5:0]addr,
input [31:0] din,
output reg [31:0] dout
    );
 always@(posedge clk)
 begin
 if(addr==0 && din !=0)
 dout=din;
 else
 dout=dout;
 end
endmodule
