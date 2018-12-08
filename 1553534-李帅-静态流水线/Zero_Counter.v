`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/30 15:23:49
// Design Name: 
// Module Name: Zero_Counter
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


module Zero_Counter(
   input [31:0]data,
   output reg[31:0]r
    );
    integer i;
    always @(*)
    begin
    if(data==32'h00000000)
      begin
      r=32;
      end
    else
      begin   
      i=31;
      while(i>=0&&data[i]==0)
        begin
        i=i-1;
        end
      r=31-i;
      end
    end
endmodule
