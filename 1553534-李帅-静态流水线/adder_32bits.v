`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:26:33
// Design Name: 
// Module Name: adder_32bits
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


module adder_32bits(
a,b,ci,s,co
);

	input wire [31:0] a,b;
	input wire ci;
	output wire [31:0] s;
	output wire co;
	
	wire [6:0] cio;
	
	adder_4bits adder_4bits_inst(
	.a({a[3:0]}),.b(b[3:0]),.cin(ci),.sum(s[3:0]),.cout(cio[0]));
	
	mux_adder mux_adder_inst1(
	.a(a[7:4]),.b(b[7:4]),.ci(cio[0]),.co(cio[1]),.sum(s[7:4]));
	
	mux_adder mux_adder_inst2(
	.a(a[11:8]),.b(b[11:8]),.ci(cio[1]),.co(cio[2]),.sum(s[11:8]));
	
	mux_adder mux_adder_inst3(
	.a(a[15:12]),.b(b[15:12]),.ci(cio[2]),.co(cio[3]),.sum(s[15:12]));
	
	mux_adder mux_adder_inst4(
	.a(a[19:16]),.b(b[19:16]),.ci(cio[3]),.co(cio[4]),.sum(s[19:16]));
	
	mux_adder mux_adder_inst5(
	.a(a[23:20]),.b(b[23:20]),.ci(cio[4]),.co(cio[5]),.sum(s[23:20]));
	
	mux_adder mux_adder_inst6(
	.a(a[27:24]),.b(b[27:24]),.ci(cio[5]),.co(cio[6]),.sum(s[27:24]));
	
	mux_adder mux_adder_inst7(
	.a(a[31:28]),.b(b[31:28]),.ci(cio[6]),.co(co),.sum(s[31:28]));
	
endmodule
