`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/16 16:38:10
// Design Name: 
// Module Name: Reg
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


module Reg(
   input clk,   //1 位输入，寄存器时钟信号，上升沿时为 PC 寄存器赋值 
   input rst,   //1 位输入，异步重置信号，高电平时将 PC 寄存器清零 //注：当 ena 信号无效时，rst 也可以重置寄存器 
   input ena,   //1 位输入,有效信号高电平时 PC 寄存器读入 data_in的值，否则保持原有输出 
   input [31:0] data_in, //32 位输入，输入数据将被存入寄存器内部 
   output [31:0] data_out   //32 位输出，工作时始终输出 PC寄存器内部存储的值 
   ); 
   reg [31:0]Reg_space;
   assign data_out=Reg_space;
   always @(posedge clk or posedge rst)
   begin
   if(rst==1)
     begin
     Reg_space<= 32'h0000_0000; 
     end  
   else if(ena==1)
     begin
     Reg_space<=data_in;
     end
   end
endmodule
