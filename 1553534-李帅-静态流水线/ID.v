`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 23:15:23
// Design Name: 
// Module Name: ID
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


module ID(clk,Instruction_id, NextPC_id, RegWrite_wb, RegWriteAddr_wb, RegWriteData_wb, MemRead_ex, 
          RegWriteAddr_ex, MemtoReg_id, RegWrite_id, MemWrite_id, MemRead_id, ALUCode_id, 
			 ALUSrcA_id, ALUSrcB_id, RegDst_id, Stall, Z, J, JR, PC_IFWrite,  BranchAddr, JumpAddr, JrAddr,
			 Imm_id, Sa_id, RsData_id, RtData_id, RsAddr_id, RtAddr_id, RdAddr_id);

    input clk;
    input [31:0] Instruction_id;					//Decode
    input [31:0] NextPC_id;
    input RegWrite_wb;										//Registers
    input [4:0] RegWriteAddr_wb;					//Registers
    input [31:0] RegWriteData_wb;					//Registers
    input MemRead_ex;											//Hazard Detector
    input [4:0] RegWriteAddr_ex;					//Hazard Detector
    output MemtoReg_id;
    output RegWrite_id;
    output MemWrite_id;
    output MemRead_id;
    output [4:0] ALUCode_id;					
    output ALUSrcA_id;
    output ALUSrcB_id;
    output RegDst_id;
    output Stall;													//Hazard Detector
    output Z;															//Branch Test  
    output J;															
    output JR;
    output PC_IFWrite;
    output [31:0] BranchAddr;
    output [31:0] JumpAddr;
    output [31:0] JrAddr;
    output [31:0] Imm_id;									//Sign extend
    output [31:0] Sa_id;									//Zero extend
    output [31:0] RsData_id;							//Registers	
    output [31:0] RtData_id;							//Registers	
    output [4:0] RsAddr_id;								
    output [4:0] RtAddr_id;
    output [4:0] RdAddr_id;



//	 
	 assign RtAddr_id=Instruction_id[20:16];																//RtAddr_id
	 assign RdAddr_id=Instruction_id[15:11];																//RdAddr_id
	 assign RsAddr_id=Instruction_id[25:21];																//RsAddr_id

	 assign Sa_id  = {27'b0,Instruction_id[10:6]};													//Sa_id
   assign Imm_id={{16{Instruction_id[15]}},Instruction_id[15:0]};					//Imm_id
	 
//JumpAddress

	assign JumpAddr={NextPC_id[31:28],Instruction_id[25:0],2'B00};
   
//BranchAddrress 
		
	adder_32bits adder_32bits_BranchAddr(
	.a(NextPC_id),
	.b({Imm_id[29:0],2'b00}),
	.ci(0),
	.s(BranchAddr),
	.co()
	);


//JrAddress

	assign JrAddr=RsData_id;

//Zero test

	Zero_test zero_test_inst(
	.ALUCode(ALUCode_id),.RsData(RsData_id),.RtData(RtData_id),.Z(Z));

//Hazard detector   
	 parameter	 alu_beq=  5'b01010;
   parameter	 alu_bne=  5'b01011;
	 parameter	 alu_bgez= 5'b01100;
   parameter	 alu_bgtz= 5'b01101;
   parameter	 alu_blez= 5'b01110;
   parameter	 alu_bltz= 5'b01111;

	Hazard_detector Hazard_detector_inst(
	.MemRead_ex(MemRead_ex),
	.RegWriteAddr_ex(RegWriteAddr_ex),
	.RsAddr_id(RsAddr_id),
	.RtAddr_id(RtAddr_id),
	.stall(Stall),
	.PC_IFWrite(PC_IFWrite)
	);
	


//	Decode inst
   Decode  Decode(   
		// Outputs
		.MemtoReg(MemtoReg_id), 
		.RegWrite(RegWrite_id), 
		.MemWrite(MemWrite_id), 
		.MemRead(MemRead_id),
		.ALUCode(ALUCode_id),
		.ALUSrcA(ALUSrcA_id),
		.ALUSrcB(ALUSrcB_id),
		.RegDst(RegDst_id),
		.J(J) ,
		.JR(JR), 
		// Inputs
	  .Instruction(Instruction_id)
    );
   	 
// Registers inst

   //MultiRegisters inst
   wire [31:0] RsData_temp,RtData_temp;
	
	Registers   MultiRegisters(
	// Outputs
	.RsData(RsData_temp), 
	.RtData(RtData_temp), 
	// Inputs
	.clk(clk),
	.WriteData(RegWriteData_wb), 
	.WriteAddr(RegWriteAddr_wb), 
	.RegWrite(RegWrite_wb),
	.RsAddr(RsAddr_id), 
	.RtAddr(RtAddr_id)
    );

	 
	//RsSel & RtSel
	wire  RsSel,RtSel;
	
	RsSel_RtSel RsSel_RtSel_inst(
	.RegWrite_wb(RegWrite_wb),
	.RegWriteAddr_wb(RegWriteAddr_wb),
	.RsAddr_id(RsAddr_id),
	.RtAddr_id(RtAddr_id),
	.RsSel(RsSel),
	.RtSel(RtSel)
	);


  //MUX for RsData_id  &  MUX for RtData_id
	
	assign RsData_id=(RsSel==0)?(RsData_temp):(RegWriteData_wb);
	assign RtData_id=(RtSel==0)?(RtData_temp):(RegWriteData_wb);
	
	
   

endmodule
