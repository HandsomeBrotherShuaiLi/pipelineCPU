`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:36:48
// Design Name: 
// Module Name: IF
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


module IF(clk, reset, Z, J, JR, PC_IFWrite, JumpAddr, 
           JrAddr, BranchAddr, Instruction_if,PC, NextPC_if);
    input clk;
    input reset;
    input Z;
    input J;
    input JR;
    input PC_IFWrite;
    input [31:0] JumpAddr;
    input [31:0] JrAddr;
    input [31:0] BranchAddr;
    output [31:0] Instruction_if;
    output [31:0] PC,NextPC_if;

// MUX for PC
    reg[31:0] PC_in;
    
    always @(*)
    	begin
    		case({JR,J,Z})
    			3'b000:	PC_in=NextPC_if;						//next instruction PC+4
    			3'b001:	PC_in=BranchAddr;						//Branch
    			3'b010:	PC_in=JumpAddr;							//Jump
    			3'b100:	PC_in=JrAddr;								//JR
				endcase
			end
	
//PC REG

		dffre #(32) dffre_PC_REG(
		.d(PC_in),
		.en(PC_IFWrite),
		.r(reset),
		.clk(clk),
		.q(PC));

     
//Adder for NextPC

		adder_32bits adder_32bits_NextPC(
		.a(PC),
		.b(32'h00000004),
		.ci(0),
		.s(NextPC_if),
		.co());  	
	  
//ROM
//		InstructionROM  InstructionROM(
//		.addr(PC[7:2]),
//		.dout(Instruction_if));
//rom
    instructionROM instruction(
    .a(PC[7:2]),
    .spo(Instruction_if)
    );
endmodule
