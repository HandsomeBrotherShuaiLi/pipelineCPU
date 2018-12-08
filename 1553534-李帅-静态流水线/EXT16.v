`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/16 17:29:42
// Design Name: 
// Module Name: EXT16
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


module EXT16(
   input [15:0]iData,
   input iS,        //控制信号，有符号扩展还是无符号扩展
   output reg [31:0]oData
    );

    always @(*)
    begin
    if(iS==1)
      oData={{16{iData[15]}},iData};
    else
      oData={16'b0,iData};
    end
endmodule
