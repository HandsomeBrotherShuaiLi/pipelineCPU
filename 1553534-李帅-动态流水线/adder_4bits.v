`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:27:24
// Design Name: 
// Module Name: adder_4bits
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


module adder_4bits(
	a,b,cin,sum,cout);
	
	input wire [3:0] a,b;
	input wire cin;
	output wire[3:0] sum;
	output wire cout;
	
	wire [3:1] coi;
	 
	full_adder add_inst0(
	.a(a[0]),.b(b[0]),.ci(cin),.s(sum[0]),.co(coi[1]));
	
	full_adder add_inst1(
	.a(a[1]),.b(b[1]),.ci(coi[1]),.s(sum[1]),.co(coi[2]));
	
	full_adder add_inst2(
	.a(a[2]),.b(b[2]),.ci(coi[2]),.s(sum[2]),.co(coi[3]));
	
	full_adder add_inst3(
	.a(a[3]),.b(b[3]),.ci(coi[3]),.s(sum[3]),.co(cout));
	
endmodule
