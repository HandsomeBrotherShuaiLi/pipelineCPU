`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:18:06
// Design Name: 
// Module Name: InstructionROM
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


module InstructionROM(addr,dout);
	input [5 : 0] addr;
	output [31 : 0] dout;
	//
	reg [31:0] mem[0:1023];
	assign dout=mem[addr];
	initial 
	begin
	 $readmemh("S:/360Downloads/Pipeline/test.txt", mem);
	 end
endmodule
