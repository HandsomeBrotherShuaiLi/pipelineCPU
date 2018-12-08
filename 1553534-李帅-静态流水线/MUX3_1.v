`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/01 19:20:42
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


module MUX3_1(
   input [31:0]iData0,
   input [31:0]iData1,
   input [31:0]iData2,
   input [1:0]iS,
   output reg [31:0]oData
    );
  always @(*)
  begin
  if(iS==2'b00)
    oData=iData0;
  else if(iS==2'b01)
    oData=iData1;
  else 
    oData=iData2;
  end  
endmodule
