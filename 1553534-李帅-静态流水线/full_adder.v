`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:29:31
// Design Name: 
// Module Name: full_adder
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


module full_adder(
	a,b,ci,s,co);
		
	input wire  a,b;
	input wire   ci;
	output wire  s;
	output wire  co;
	
	assign	s=a^b^ci;
	assign	co=(a&b)||(b&ci)||(a&ci);

endmodule
