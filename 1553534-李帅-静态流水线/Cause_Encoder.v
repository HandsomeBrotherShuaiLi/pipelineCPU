`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 15:36:25
// Design Name: 
// Module Name: Cause_Encoder
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


module Cause_Encoder(
   input Syscall,
   input Teq,
   input Break,
   input zero,
   //input PS2_intr,
   //input VGA_intr,
   output reg[4:0]cause
    );
    always @(*)
    begin
    if(Syscall==1)
      cause=5'b01000;
    else if(Break==1)
      cause=5'b01001;
    else if(Teq==1&&zero==1)
      cause=5'b01101;
    //else if(PS2_intr==1)
    //  cause=5'b00001;
    //else if(VGA_intr==1)
    //  cause=5'b00010;
    else
      cause=5'b00000;
    end
endmodule
