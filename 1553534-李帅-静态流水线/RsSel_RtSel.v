`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:24:05
// Design Name: 
// Module Name: RsSel_RtSel
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


module RsSel_RtSel(
	RegWrite_wb,RegWriteAddr_wb,RsAddr_id,RtAddr_id,RsSel,RtSel
	);
	
	input  RegWrite_wb;
	input  [4:0] RegWriteAddr_wb;
	input  [4:0] RsAddr_id;
	input  [4:0] RtAddr_id;
	output  RsSel;
	output  RtSel;
	
	assign RsSel=RegWrite_wb&&(~(RegWriteAddr_wb==5'b0))&&(RegWriteAddr_wb==RsAddr_id);
	assign RtSel=RegWrite_wb&&(~(RegWriteAddr_wb==5'b0))&&(RegWriteAddr_wb==RtAddr_id);

		
endmodule
