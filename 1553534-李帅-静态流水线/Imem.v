`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/19 21:41:04
// Design Name: 
// Module Name: Imem
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


module Imem(      
   input clk,   //存储器时钟信号，上升沿时向 ram 内部写入数据      
   input ena,   //存储器有效信号，高电平时存储器才运行，否则输出 z      
   input wena,  //存储器读写有效信号，高电平为写有效，低电平为读有效，与 ena 同时有效时才可对存储器进行读写      
   input [31:0] addr,   //输入地址，指定数据读写的地址      
   inout [31:0] data  //存储器数据线，可传输存储器读出或写入的数据。 写入的数据在 clk 上升沿时被写入 
   );  
    parameter wordsize = 32;          
    parameter memsize = 32;          
    reg [wordsize-1: 0] ram_space [memsize-1: 0]; 
   
    
    assign data=(ena==1&&wena==0) ? ram_space[addr] : 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;   
    
    initial
    begin
    $readmemh("E:/Xilinx_Vivado/Vivado_project/CPU_31/imem.txt", ram_space); 
    end
    
    always @ (posedge clk)
    begin
    if(ena==1&&wena==1)
      begin
      ram_space[addr]<=data;
      end
    end
endmodule
