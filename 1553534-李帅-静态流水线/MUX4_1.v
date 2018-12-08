`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/30 19:01:26
// Design Name: 
// Module Name: MUX4_1
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


module MUX4_1(
   input [31:0]iData0,
   input [31:0]iData1,
   input [31:0]iData2,
   input [31:0]iData3,   
   input [1:0]iS,
   output reg [31:0]oData
    );
  always @(*)
  begin
  if(iS==2'b00)
    oData=iData0;
  else if(iS==2'b01)
    oData=iData1;
  else if(iS==2'b10)
    oData=iData2;
  else
    oData=iData3;
  end  
endmodule
