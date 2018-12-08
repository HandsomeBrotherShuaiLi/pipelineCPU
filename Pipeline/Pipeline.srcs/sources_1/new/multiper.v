`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/10 19:30:27
// Design Name: 
// Module Name: multiper
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


module multiper(
   input [31:0]a,
   input [31:0]b,
   input start,//(MUL||MULTU)&&(!mul_busy)
   input clk,
   input reset,//
   input sign,//MUL指令
   output [63:0]z,//结果
   output reg busy//mul_busy
    );
    reg [6:0]count;
    reg [31:0]temp_a;
    reg [31:0]temp_b;
    reg [64:0]temp_z;
    assign z=temp_z[63:0];
    always @(negedge clk or posedge reset)
    begin
    if(reset==1)
      begin
      busy<=0;
      count<=0;
      temp_a<=0;
      temp_b<=0;
      temp_z<=0;
      end
    else
      begin
      if(start)
        begin 
        if(sign==0)//无符号乘法
          begin
          count<=0;
          busy<=1;    
          temp_a<=a;  
          temp_b<=b;
          temp_z<=0;
          end
        else//有符号乘法
          begin
          count<=0;
          busy<=1;
          if(a[31]==0)
            temp_a<=a;
          else
            temp_a<=33'b1_00000000_00000000_00000000_00000000-a;
          if(b[31]==0)
            temp_b<=b;
          else
            temp_b<=33'b1_00000000_00000000_00000000_00000000-b;    
          temp_z<=0;
          end      
        end
      else if(busy)
        begin
        if(sign==0)
          begin
          if(temp_b[0]==1)
            temp_z[64:32]=temp_z[63:32]+temp_a[31:0];
          temp_z=temp_z>>1;
          temp_b=temp_b>>1;
          count=count+1;
          if(count==32)
            begin
            busy=0;
            end
          end
        else
          begin
          if(temp_b[0]==1)
            temp_z[64:32]=temp_z[63:32]+temp_a[31:0];
          temp_z=temp_z>>1;
          temp_b=temp_b>>1;
          count=count+1;
          if(count==32)
            begin
            if(a[31]^b[31])
              temp_z=65'b1_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000-temp_z;
            busy=0;
            end
          end
        end
      end
    end
endmodule

