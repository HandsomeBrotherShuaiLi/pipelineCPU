`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/16 17:32:42
// Design Name: 
// Module Name: EXT18
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


module EXT18(
   input [15:0]iData,
   output [31:0]oData
    );
    assign oData={{14{iData[15]}},iData,2'b0};
endmodule
