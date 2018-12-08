`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/16 17:12:44
// Design Name: 
// Module Name: MUX3_1
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


module MUX2_1(
   input [31:0]iData0,
   input [31:0]iData1,
   input iS,
   output reg [31:0]oData
    );
  always @(*)
  begin
  if(iS==0)
    oData=iData0;
  else
    oData=iData1;
  end  
endmodule

