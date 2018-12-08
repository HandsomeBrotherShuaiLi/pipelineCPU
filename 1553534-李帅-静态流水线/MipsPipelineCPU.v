`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:19:27
// Design Name: 
// Module Name: MipsPipelineCPU
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


module MipsPipelineCPU(clk, reset, o_seg,o_sel
						//	,DataTest,ControlTest
							);
    input clk;
    input reset;

     output [7:0]o_seg;
     output [7:0]o_sel;

	 wire [31:0] cnum;
	 wire [2:0] JumpFlag;
  
    wire [31:0] ALU_A;
    wire [31:0] ALU_B;
    wire [31:0] ALUResult;
    wire [31:0] PC;
    wire [31:0] MemDout_wb;
    wire Stall;
    wire locked;
    
    
    clk_div clock(
    .clk_in1(clk),
    .clk_out1(clk_out),
    .reset(reset),
    .locked(locked));
//IF  module
//reset||(!locked)
        wire[31:0] Instruction_id;
	 wire PC_IFWrite,J,JR,Z,IF_flush;
	 wire[31:0] JumpAddr,JrAddr,BranchAddr,NextPC_if,Instruction_if;
	 assign JumpFlag={JR,J,Z};
	 assign IF_flush=Z || J || JR || reset||(!locked);					//reset!
	
	IF IF(
//input	
	 .clk(clk_out), 
	 .reset(reset||(!locked)), 
	 .Z(Z), 
	 .J(J), 
	 .JR(JR), 
	 .PC_IFWrite(PC_IFWrite), 
	 .JumpAddr(JumpAddr), 
	 .JrAddr(JrAddr), 
	 .BranchAddr(BranchAddr), 
//  output
	 .Instruction_if(Instruction_if),
	 .PC(PC),
	 .NextPC_if(NextPC_if));
 
//   IF->ID Register
  wire[31:0] NextPC_id;

  //NextPC
	dffre #(32) dffre_IFID_NextPC(
		.d(NextPC_if),
		.en(PC_IFWrite),
		.r(IF_flush),
		.clk(clk_out),
		.q(NextPC_id)
		);
	//Instruction
	dffre #(32) dffre_IFID_Instruction(
		.d(Instruction_if),
		.en(PC_IFWrite),
		.r(IF_flush),
		.clk(clk_out),
		.q(Instruction_id)
		);		

     
//  ID Module	
    wire[4:0] RtAddr_id,RdAddr_id,RsAddr_id;
    wire  RegWrite_wb,MemRead_ex,MemtoReg_id,RegWrite_id,MemWrite_id;
    wire  MemRead_id,ALUSrcA_id,ALUSrcB_id,RegDst_id;					
    wire[4:0]  RegWriteAddr_wb,RegWriteAddr_ex,ALUCode_id;
    wire[31:0] RegWriteData_wb,Imm_id,Sa_id,RsData_id,RtData_id;
    ID  ID (
	       .clk(clk_out),
		.Instruction_id(Instruction_id), 
		.NextPC_id(NextPC_id), 
		.RegWrite_wb(RegWrite_wb), 
		.RegWriteAddr_wb(RegWriteAddr_wb), 
		.RegWriteData_wb(RegWriteData_wb), 
		.MemRead_ex(MemRead_ex), 
              .RegWriteAddr_ex(RegWriteAddr_ex), 
		.MemtoReg_id(MemtoReg_id), 
		.RegWrite_id(RegWrite_id), 
		.MemWrite_id(MemWrite_id), 
		.MemRead_id(MemRead_id), 
		.ALUCode_id(ALUCode_id), 
		.ALUSrcA_id(ALUSrcA_id), 
		.ALUSrcB_id(ALUSrcB_id), 
		.RegDst_id(RegDst_id), 
		.Stall(Stall), 
		.Z(Z), 
		.J(J), 
		.JR(JR), 
		.PC_IFWrite(PC_IFWrite),  
		.BranchAddr(BranchAddr), 
		.JumpAddr(JumpAddr),
		.JrAddr(JrAddr),
		.Imm_id(Imm_id), 
		.Sa_id(Sa_id), 
		.RsData_id(RsData_id), 
		.RtData_id(RtData_id),
		.RtAddr_id(RtAddr_id),
		.RdAddr_id(RdAddr_id),
		.RsAddr_id(RsAddr_id));

//   ID->EX  Register

	wire MemtoReg_ex,RegWrite_ex;
	wire stall_reset;																								//reset
	assign stall_reset=Stall||reset||(!locked);
	//WB
	dffr #(2) dffr_IDEX_WB
		(
		.d({MemtoReg_id,RegWrite_id}), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q({MemtoReg_ex,RegWrite_ex}));

	wire MemWrite_ex;
	//M
	dffr #(2) dffr_IDEX_M	
		(
		.d({MemWrite_id,MemRead_id}), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q({MemWrite_ex,MemRead_ex}));

	wire [4:0] ALUCode_ex;
	wire ALUSrcA_ex,ALUSrcB_ex,RegDst_ex;
	//EX
	dffr #(8) dffr_IDEX_EX																				
		(
		.d({ALUCode_id,ALUSrcA_id,ALUSrcB_id,RegDst_id}), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q({ALUCode_ex,ALUSrcA_ex,ALUSrcB_ex,RegDst_ex}));
	
	wire [31:0] Sa_ex;
	//Sa
	dffr #(32) dffr_IDEX_Sa
		(
		.d(Sa_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(Sa_ex));

	wire [31:0]	Imm_ex;
	//Imm
	dffr #(32) dffr_IDEX_Imm
		(
		.d(Imm_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(Imm_ex));

	wire [4:0] RdAddr_ex;
	//RdAddr
	dffr #(5) dffr_IDEX_RdAddr
		(
		.d(RdAddr_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(RdAddr_ex));

	wire [4:0] RsAddr_ex;
	//RsAddr
	dffr #(5) dffr_IDEX_RsAddr
		(
		.d(RsAddr_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(RsAddr_ex));
		
	wire [4:0] RtAddr_ex;
	//RtAddr
	dffr #(5) dffr_IDEX_RtAddr
		(
		.d(RtAddr_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(RtAddr_ex));
		
	wire [31:0]	RsData_ex;
	//RsData
	dffr #(32) dffr_IDEX_RsData
		(
		.d(RsData_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(RsData_ex));
		
	wire [31:0]	RtData_ex;
	//RtData
	dffr #(32) dffr_IDEX_RtData
		(
		.d(RtData_id), 
		.r(stall_reset), 
		.clk(clk_out), 
		.q(RtData_ex));

// EX Module	 
	 wire[31:0] ALUResult_mem,ALUResult_ex,MemWriteData_ex;
	 wire[4:0] RegWriteAddr_mem;
	 wire RegWrite_mem;
	 EX  EX(
	 .RegDst_ex(RegDst_ex), 
	 .ALUCode_ex(ALUCode_ex), 
	 .ALUSrcA_ex(ALUSrcA_ex), 
	 .ALUSrcB_ex(ALUSrcB_ex), 
	 .Imm_ex(Imm_ex), 
	 .Sa_ex(Sa_ex), 
	 .RsAddr_ex(RsAddr_ex), 
	 .RtAddr_ex(RtAddr_ex), 
	 .RdAddr_ex(RdAddr_ex),
	 .RsData_ex(RsData_ex), 
	 .RtData_ex(RtData_ex), 
	 .RegWriteData_wb(RegWriteData_wb), 
	 .ALUResult_mem(ALUResult_mem), 
	 .RegWriteAddr_wb(RegWriteAddr_wb), 
	 .RegWriteAddr_mem(RegWriteAddr_mem), 
	 .RegWrite_wb(RegWrite_wb), 
	 .RegWrite_mem(RegWrite_mem), 
	 .RegWriteAddr_ex(RegWriteAddr_ex), 
	 .ALUResult_ex(ALUResult_ex), 
	 .MemWriteData_ex(MemWriteData_ex), 
	 .ALU_A(ALU_A), 
	 .ALU_B(ALU_B));
	
	assign ALUResult=ALUResult_ex;

//EX->MEM
   
	wire MemtoReg_mem;
	dffr #(2) dffr_EXMEM_WB																					//dff for WB
		(
		.d({MemtoReg_ex,RegWrite_ex}),  
		.clk(clk_out),
		.r(reset||(!locked)), 
		.q({MemtoReg_mem,RegWrite_mem}));

	wire MemWrite_mem;	
	dffr #(1) dffr_EXMEM_M																					//dff for M
		(
		.d(MemWrite_ex),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(MemWrite_mem));

	dffr #(32) dffr_EXMEM_ALUResult
		(
		.d(ALUResult_ex),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(ALUResult_mem));

	wire [31:0] MemWriteData_mem;
	dffr #(32) dffr_EXMEM_MemWriteData
		(
		.d(MemWriteData_ex),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(MemWriteData_mem));
		
	dffr #(5) dffr_EXMEM_RegWriteAddr
		(
		.d(RegWriteAddr_ex),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(RegWriteAddr_mem));
		

//MEM Module
//	DataRAM   DataRAM(
//	.addr(ALUResult_mem[7:2]),
//	.clk(clk),
//	.din(MemWriteData_mem),
//	.dout(MemDout_wb),
//	.we(MemWrite_mem));

//  dram dataram(
//  .addr(ALUResult_mem[7:2]),
//     .clk(clk),
//     .din(MemWriteData_mem),
//      .dout(MemDout_wb),
//      .cout(cnum),
//     .we(MemWrite_mem));
   dataRAM dataram(
   .a(ALUResult_mem[7:2]),
   .d(MemWriteData_mem),
   .clk(clk_out),
   .we(MemWrite_mem),
   .spo(MemDout_wb));
//MEM->WB
  
  wire MemToReg_wb;
  dffr #(2) dffr_MEMWB_WB																					//dff for WB
		(
		.d({MemtoReg_mem,RegWrite_mem}),  
		.clk(clk_out), 
		.r(reset||(!locked)), 
		.q({MemToReg_wb,RegWrite_wb}));

	dffr #(5) dffr_MEMWB_RegWriteAddr 
		(
		.d(RegWriteAddr_mem),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(RegWriteAddr_wb));	
	
	wire [31:0] ALUResult_wb;	
	dffr #(32) dffr_MEMWB_ALUResult 
		(
		.d(ALUResult_mem),  
		.clk(clk_out),
		.r(reset||(!locked)),  
		.q(ALUResult_wb));

	
	

//WB
  wire cs;
  assign cs=(ALUResult_mem[7:2]==6'b0)?1'b1:1'b0;
 // func f(.clk(clk_out),.addr(ALUResult_mem[7:2]),.din(MemDout_wb),.dout(wdata));
  assign RegWriteData_wb=MemToReg_wb?MemDout_wb:ALUResult_wb;
  seg seg7(.clk(clk_out),.reset(reset||(!locked)),.cs(cs),.i_data(MemDout_wb),.o_seg(o_seg),.o_sel(o_sel));
  

endmodule
