`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 20:01:22
// Design Name: 
// Module Name: Microoperation_List
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


module Control_Signal(
    input ADD,
    input ADDU,
    input SUB,
    input SUBU,
    input AND,
    input OR,
    input XOR,
    input NOR,
    input SLT,
    input SLTU,
    input SLL,
    input SRL,
    input SRA,
    input SLLV,
    input SRLV,
    input SRAV,
    input JR,
    input ADDI,
    input ADDIU,
    input ANDI,
    input ORI,
    input XORI,
    input LW,
    input SW,
    input BEQ,
    input BNE,
    input SLTI,
    input SLTIU,
    input LUI,
    input J,
    input JAL,//31条指令
    input JALR,
    input CLZ,
    input BGEZ,
    input LB,
    input LBU,
    input LH,
    input LHU,
    input SB,
    input SH,
    input MFC0,
    input MTC0,
    input MFHI,
    input MTHI,
    input MFLO,
    input MTLO,
    input MUL,
    input MULTU,
    input DIV,
    input DIVU,
    input SYSCALL,
    input TEQ,
    input BREAK,
    input ERET,
    input status0,  //中断屏蔽位
    input zero,     //alu的0标志位
    input rs_sign,  //rs寄存器的符号位
    input mul_busy,
    input div_busy,
    
    //input intr,
    //input [31:0]dmem_addr,
    //output reg Dis_W,
    
    output reg IM_R,
    output reg RF_W,
    output reg [3:0]ALUC,
    output reg DM_CS,
    output reg DM_R,
    output reg DM_W,
    output reg [1:0]M1,
    output reg [2:0]M2,
    output reg M3,
    output reg M4,
    output reg M5,
    output reg [1:0]M6,
    output reg [1:0]M7,
    output reg [1:0]M8,
    output [7:0]IS,
    output reg exception,
    output reg HI_W,
    output reg LO_W
    );
    assign IS={SW,SH,SB,LW,LHU,LH,LBU,LB};
    always @(*)
    begin
    IM_R<=1;
    RF_W<=ADD||ADDU||ADDI||ADDIU||SUB||SUBU||AND||ANDI||OR||ORI||XOR||XORI||NOR||
          SLT||SLTI||SLTU||SLTIU||SLL||SRL||SRA||SLLV||SRLV||SRAV||LW||LUI||JAL||
          JALR||CLZ||LB||LBU||LH||LHU||MFC0||MFHI||MFLO||MUL&&(!mul_busy);
    ALUC[3]<=LUI||SLT||SLTI||SLTU||SLTIU||SLL||SLLV||SRL||SRLV||SRA||SRAV;
    ALUC[2]<=AND||ANDI||OR||ORI||XOR||XORI||NOR||SLL||SLLV||SRL||SRLV||SRA||SRAV;
    ALUC[1]<=ADD||ADDI||SUB||XOR||XORI||NOR||SLT||SLTI||SLTU||SLTIU||SLL||SLLV||LW||SW||BEQ||BNE||TEQ;
    ALUC[0]<=SUBU||SUB||OR||ORI||NOR||SLT||SLTI||SRL||SRLV||BEQ||BNE||TEQ;
    DM_CS<=LW||SW||LB||LBU||LH||LHU||SB||SH;
    DM_R<=LW||LB||LBU||LH||LHU;
    DM_W<=SW||SB||SH;
    //DM_W<=SW||SB&&!(dmem_addr>=32'h0000_0100)||SH;
    //Dis_W<=SB&&(dmem_addr>=32'h0000_0100);
    
    M1[0]<=J||JAL||(SYSCALL||TEQ&&zero||BREAK)&&status0||ERET;
           
    M1[1]<=JR||JALR||(SYSCALL||TEQ&&zero||BREAK)&&status0||ERET;
    
    M2[0]<=ADD||ADDU||ADDI||ADDIU||SUB||SUBU||AND||ANDI||OR||ORI||XOR||XORI||NOR||
           SLT||SLTI||SLTU||SLTIU||SLL||SRL||SRA||SLLV||SRLV||SRAV||BEQ||BNE||LUI||J||JR||
           CLZ||MFHI||MUL;
    M2[1]<=JAL||JALR||MFC0||MFHI||MUL;
    M2[2]<=CLZ||MFC0||MFLO||MUL;
    
    M3<=ADD||ADDU||ADDI||ADDIU||SUB||SUBU||AND||ANDI||OR||ORI||XOR||XORI||NOR||
        SLT||SLTI||SLTU||SLTIU||SLLV||SRLV||SRAV||LW||SW||BEQ||BNE||LUI||J||JAL||JR||
        JALR||CLZ||BGEZ||LB||LBU||LH||LHU||SB||SH||MFC0||MTC0||MFHI||MTHI||MFLO||MTLO||
        SYSCALL||TEQ||BREAK||ERET;
    M4<=ADDI||ADDIU||ANDI||ORI||XORI||SLTI||SLTIU||LW||SW||LUI||LB||LBU||LH||LHU||SB||SH;
    M5<=BEQ&&zero||BNE&&(!zero)||BGEZ&&(!rs_sign);
    
    M6[0]<=ADDI||ADDIU||ANDI||ORI||XORI||LW||SLTI||SLTIU||LUI||LB||LBU||LH||LHU||MFC0;
    M6[1]<=JAL;
    
    M7[0]<=MULTU;
    M7[1]<=DIV||DIVU;
    
    M8[0]<=MULTU;
    M8[1]<=DIV||DIVU;
    
    //M9<=intr&&status0;
    //M10<=LB&&(dmem_addr>=32'h0000_0100);
    
    exception<=SYSCALL||TEQ&&zero||BREAK||ERET;
    HI_W<=MTHI||MULTU&&(!mul_busy)||(DIV||DIVU)&&(!div_busy);
    LO_W<=MTLO||MULTU&&(!mul_busy)||(DIV||DIVU)&&(!div_busy);
    end
endmodule
