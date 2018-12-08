`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/30 21:36:14
// Design Name: 
// Module Name: Divider
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


module Divider(
   input [31:0]dividend,        //被除数               
   input [31:0]divisor,          //除数      
   input start,                //启动除法运算      
   input clock,      
   input reset,      
   input sign,                  //有符号除法还是无符号除法
   output [31:0]q,             //商     
   output [31:0]r,             //余数             
   output reg busy               //除法器忙标志位
    );
    reg [6:0]count;
    reg [31:0]temp_q;       //商
    reg [32:0]temp_r;       //余数
    reg [31:0]temp_div;     //除数
    reg r_sign;
    assign r = temp_r;
    assign q = temp_q; 
    always @(negedge clock or posedge reset)
    begin
    if(reset==1)
      begin
      busy<=0;
      count<=0;
      r_sign<=0;
      temp_q<=0;
      temp_r<=0;
      temp_div<=0;
      end
    else
      begin
      if(start)
        begin
        if(sign==0)
          begin
          count<=0;
          busy<=1;
          r_sign<=1;
          temp_r<=0;
          temp_q<=dividend;
          temp_div[31:0]<=divisor;
          end
        else//有符号除法，temp_q[31]和temp_div[31]为0，temp_q[30:0],temp_div[30:0]参与运算，temp_r[31:0]参与运算
          begin
          count<=0;
          busy<=1;
          r_sign<=1;
          temp_r<=0;
          if(dividend[31]==0)
            temp_q<=dividend;
          else
            temp_q<=33'b1_00000000_00000000_00000000_00000000-dividend;    
          if(divisor[31]==0)
            temp_div<=divisor;
          else
            temp_div<=33'b1_00000000_00000000_00000000_00000000-divisor; 
          end
        end
      else if(busy)
        begin
        if(sign==0)
          begin
          temp_r={temp_r[31:0],temp_q[31]};      
          if(r_sign==1)
            temp_r=temp_r-temp_div;
          else
            temp_r=temp_r+temp_div;
          r_sign=~temp_r[32];
          temp_q={temp_q[30:0],r_sign};
          count=count+1;
          if(count==32)
            begin
            temp_r = r_sign? temp_r: temp_r+ temp_div;
            busy=0;
            end
          end
        else
          begin
          temp_r={temp_r[31:0],temp_q[31]};      
          if(r_sign==1)
            temp_r=temp_r-temp_div;
          else
            temp_r=temp_r+temp_div;
          r_sign=~temp_r[32];
          temp_q={temp_q[30:0],r_sign};
          count=count+1; 
          if(count==32)
            begin
            if(dividend[31]^divisor[31])
              temp_q=33'b1_00000000_00000000_00000000_00000000-temp_q;
            temp_r = r_sign? temp_r: temp_r+ temp_div;
            if(dividend[31]==1)
              temp_r=33'b1_00000000_00000000_00000000_00000000-temp_r;
            busy=0;
            end
          end
        end
      end
    end
endmodule

