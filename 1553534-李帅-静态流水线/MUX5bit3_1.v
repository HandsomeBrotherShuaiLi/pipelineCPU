`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/21 19:02:10
// Design Name: 
// Module Name: MUX5bit3_1
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


module MUX5bit3_1(
   input [4:0]iData0,
   input [4:0]iData1,
   input [1:0]iS,
   output reg [4:0]oData
    );
   always @(*)
   begin
   if(iS==2'b00)
     oData=iData0;
   else if(iS==2'b01)
     oData=iData1;
   else
     oData=5'b11111;
   end
endmodule
