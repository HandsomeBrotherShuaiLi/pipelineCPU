`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/10 18:36:55
// Design Name: 
// Module Name: CP0
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


module CP0(
   input clk,
   input rst, 
   //input mfc0,            // CPU instruction is Mfc0 
   input mtc0,            // CPU instruction is Mtc0 
   input [31:0]pc, 
   input [4:0] Rd,          // Specifies Cp0 register 
   input [31:0] wdata,      // Data from GP register to replace CP0 register 
   input exception, 
   input eret,             // Instruction is ERET (Exception Return) 
   input [4:0]cause, 
   input intr, 
   input [31:0]M1out,
   
   output [31:0] rdata,      // Data from CP0 register for GP register 
   output [31:0] status, 
   //output reg timer_int, 
   output reg [31:0]exc_addr    // Address for PC at the beginning of an exception
    );
    
    reg [31:0]CP0_reg[31:0];
    reg [31:0]temp_status;
    integer counter;
    assign status=CP0_reg[12];
    assign rdata=CP0_reg[Rd];
    
    always @(posedge clk or posedge rst)
    begin
    if(rst==1)
      begin
      for(counter=0;counter<=31;counter=counter+1)
        begin
        CP0_reg[counter]<=32'b00000000_00000000_00000000_00000000;
        end
      CP0_reg[12][3:0]<=4'b1111;
      temp_status<=0;
      end
    else
      begin
      if(exception==1)
        begin
        if(eret==1)
          begin
          CP0_reg[12]<=temp_status;
          end
        else if(CP0_reg[12][0]==1)
          begin
          temp_status<=CP0_reg[12];
          CP0_reg[12]<=CP0_reg[12]<<5;
          CP0_reg[13][6:2]<=cause;
          CP0_reg[14]<=pc;
          end
        end 
      else
        begin
        if(mtc0==1)
          begin
          CP0_reg[Rd]<=wdata;
          end
        if(intr==1&&CP0_reg[12][0]==1)
          begin
          temp_status<=CP0_reg[12];
          CP0_reg[12]<=CP0_reg[12]<<5;
          CP0_reg[14]<=M1out;  
          end
        end
      end
    end
    
    always @(*)
    begin
    if(exception==1)
      begin
      if(eret==1)
        exc_addr<=CP0_reg[14];
      else if(CP0_reg[12][0]==1)
        exc_addr<=32'h00400004;
      else
        exc_addr<=0;
      end
    else if(intr==1&&CP0_reg[12][0]==1)
      begin
      if(cause==5'b00001)
        exc_addr<=32'h00400008;
      else
        exc_addr<=32'h0040000c;
      end
    else
      begin
      exc_addr<=0;
      end
    end
endmodule
