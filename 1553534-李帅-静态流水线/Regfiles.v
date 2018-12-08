`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/27 18:46:40
// Design Name: 
// Module Name: Regfiles
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


module Regfiles(
   input clk,    //寄存器组时钟信号，上升沿写入数据      
   input rst,    //reset 信号，高电平时全部寄存器置零      
   input we,     //寄存器读写有效信号，   
   input [4:0] raddr1,  //所需读取的寄存器的地址      
   input [4:0] raddr2,  //所需读取的寄存器的地址      
   input [4:0] waddr,   //写寄存器的地址      
   input [31:0] wdata, //写寄存器数据      
   output [31:0] rdata1, //raddr1 所对应寄存器的输出数据
   output [31:0] rdata2 //raddr2 所对应寄存器的输出数据
    );
   
   reg [31:0] regfile [31:0];
   integer counter;
   
   assign rdata1=regfile[raddr1];
   assign rdata2=regfile[raddr2];
   
   always @(posedge clk or posedge rst)
   begin
   if(rst==1)
     begin
     for(counter=0;counter<=31;counter=counter+1)
       begin
       regfile[counter]<=32'b00000000_00000000_00000000_00000000;
       end
     end
   else if(we==1&&waddr!=5'b00000)
     begin
     regfile[waddr]<=wdata;
     end
   end
    
endmodule
