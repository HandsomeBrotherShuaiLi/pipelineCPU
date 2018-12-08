`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/19 21:41:39
// Design Name: 
// Module Name: Dmem
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


module Dmem(      
   input clk,   //存储器时钟信号，上升沿时向 ram 内部写入数据  
   input rst,    
   input ena,   //存储器有效信号，高电平时存储器才运行，否则输出 z      
   input wena,  //存储器读写有效信号，高电平为写有效，低电平为读有效，与 ena 同时有效时才可对存储器进行读写      
   input [31:0] addr_in,   //输入地址，指定数据读写的地址  
   input [31:0] addr_out,
   input [31:0] data_in,    
   output [31:0] data_out  //存储器数据线，可传输存储器读出或写入的数据。 写入的数据在 clk 上升沿时被写入 
   );  
    parameter wordsize = 32;          
    parameter memsize = 1024;          
    reg [wordsize-1: 0] ram_space [memsize-1: 0];
    integer counter;
    
    wire [31:0]e_addr_in;
    wire [31:0]e_addr_out; 
    assign e_addr_in=(addr_in-32'h10010000)>>2;
    assign e_addr_out=(addr_out-32'h10010000)>>2;
    
    assign data_out=(ena==1&&wena==0) ? ram_space[e_addr_out] : 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;   
    
    
    always @ (posedge clk or posedge rst)
    begin
    if(rst==1)
      begin
      for(counter=0;counter<=memsize-1;counter=counter+1)
        begin
        ram_space[counter]<=32'b00000000_00000000_00000000_00000000;
        end
      end
    else if(ena==1&&wena==1)
      begin     
      ram_space[e_addr_in]<=data_in;
      end
    end
endmodule
