`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:28:36
// Design Name: 
// Module Name: dff
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


module dff 
(
d,  
clk, 
q);
parameter WIDTH = 1;
input clk;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;
reg [WIDTH-1:0] q;
always @ (posedge clk) 
q <= d;
endmodule


module dffr 
(
d, 
r, 
clk, 
q);
parameter WIDTH = 1;
input r;
input clk;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;
reg [WIDTH-1:0] q;
always @ (posedge clk) 
if ( r ) 
q <= {WIDTH{1'b0}};
else
q <= d;
endmodule



module dffre
(
d,
en,
r,
clk,
q
);
parameter WIDTH = 1;
input en;
input r;
input clk;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;
reg [WIDTH-1:0] q;
always @ (posedge clk)
if ( r )
q <= {WIDTH{1'b0}};
else if (en)
q <= d;
else q <= q;
endmodule


