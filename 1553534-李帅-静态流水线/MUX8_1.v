`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/01 19:25:26
// Design Name: 
// Module Name: MUX8_1
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


module MUX8_1(
   input [31:0]iData0,
   input [31:0]iData1,
   input [31:0]iData2,
   input [31:0]iData3,   
   input [31:0]iData4,
   input [31:0]iData5,
   input [31:0]iData6,
   input [31:0]iData7,
   input [2:0]iS,
   output reg [31:0]oData
    );
  always @(*)
  begin
  if(iS==3'b000)
    oData=iData0;
  else if(iS==3'b001)
    oData=iData1;
  else if(iS==3'b010)
    oData=iData2;
  else if(iS==3'b011)
    oData=iData3;
  else if(iS==3'b100)
    oData=iData4;
  else if(iS==3'b101)
    oData=iData5;
  else if(iS==3'b110)
    oData=iData6;
  else
    oData=iData7;
  end  
endmodule
