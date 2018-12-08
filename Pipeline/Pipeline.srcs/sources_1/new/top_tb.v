`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/04 18:53:56
// Design Name: 
// Module Name: top_tb
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


module top_tb_v;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	
	wire [7:0]o_seg;
    wire [7:0]o_sel;

	// Instantiate the Unit Under Test (UUT)
	MipsPipelineCPU uut (
		.clk(clk), 
		.reset(reset),
		.o_seg(o_seg),
		.o_sel(o_sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100 reset=0;
//     	#5000 $stop;

	end
	
	always #10 clk=~clk;
      
endmodule
