`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/04 18:46:56
// Design Name: 
// Module Name: dram
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


module dram(
input [5:0] addr,
input clk,
input [31:0] din,
output [31:0]dout,
output [31:0] cout,//显示c数组的结果。
input we
  );
  reg [31:0] tmp [0:1023];
  integer i;
  initial 
  begin
   for (i = 0; i < 1024; i = i + 1)
         begin
            tmp[i] <= 0;
         end
     end
  assign dout=tmp[addr];
  assign cout=tmp[0];
  always @(posedge clk)
  begin
  if(we)
  tmp[addr]<=din;
  end
  
endmodule
