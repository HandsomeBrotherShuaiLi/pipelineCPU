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
    input clk,
    input reset,
    input en,
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] z
    );
    integer k;
    reg signed [32:0] store;
    //ÓÐ·ûºÅµÄ³Ë·¨
    reg signed [32:0] sto_a;
    always @(negedge clk or negedge reset)
    begin
    if(reset) 
      begin
      store=0;
      end
    else
    if(en)
    begin
      begin
      store=0;
      z=0;
      sto_a=a;
      sto_a[32]=sto_a[31];
      for(k=0;k<31;k=k+1)
        begin
        if(b[k]==0)
          begin
          z[k]=store[0];
          store=store>>>1;
          end
        else
          begin
          store=store+sto_a;
          z[k]=store[0];
          store=store>>>1;
          end
        end
      if(b[31]==1)
        begin
        store=store-sto_a;
        end
      for(k=0;k<33;k=k+1)
        begin
        z[31+k]=store[k];
        end
      end
    end
    else
    begin
    z=64'b0;
    end
    end
    
    
endmodule
