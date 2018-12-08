`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/29 20:20:04
// Design Name: 
// Module Name: CPU_54
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


module CPU_54(
   input clk,
   input rst,
   input [15:0]sw,
   output [7:0]o_seg,
   output [7:0]o_sel
    );
    
    wire [31:0]dmem_addr;
    wire [31:0]Instruction;
    wire [31:0]Iaddr;
    wire [31:0]eff_Iaddr;
    wire [31:0]next_Iaddr;
    wire [31:0]jump_Iaddr;
    wire [31:0]branch_Iaddr;
    wire [31:0]F;
    wire [31:0]M1out;
    wire [31:0]M2out;
    wire [31:0]M3out;
    wire [31:0]M4out;
    wire [31:0]M5out;
    wire [4:0]M6out;
    wire [31:0]M7out;
    wire [31:0]M8out;
    wire [31:0]Imm5;
    wire [31:0]Imm16;
    wire [31:0]Imm18;
    wire [31:0]rsdata;
    wire [31:0]rtdata;
    wire [31:0]DM_data;
    wire [31:0]wdata;
    wire [31:0]CP0data;
    wire [31:0]status;
    wire [31:0]exc_addr;
    wire [31:0]zero_num;
    wire [31:0]Hidata;
    wire [31:0]Lodata;
    wire [63:0]z;
    wire [31:0]q;
    wire [31:0]r;
    wire [4:0]cause;
    
    wire [4:0]RSC;
    wire [4:0]RTC;
    wire [4:0]RDC;
    wire [3:0]ALUC;
    wire [7:0]IS;
    wire [1:0]M1;
    wire [2:0]M2;
    wire M3;
    wire M4;
    wire M5;
    wire [1:0]M6;
    wire [1:0]M7;
    wire [1:0]M8;
    wire EXC;
    
    wire [31:0]sel_data;
    
   
                     
    assign eff_Iaddr=(Iaddr-32'h00400000)>>2;
    assign dmem_addr=(F-32'h10010000)>>2;
    assign RSC=Instruction[25:21];
    assign RTC=Instruction[20:16];
    assign RDC=Instruction[15:11];
   
      clk_ip clk_div(clk,clk_out,locked);
//    
    Instruction_Decoder ID(Instruction[31:26],Instruction[5:0],Instruction[25:21], //input
      ADD,ADDU,SUB,SUBU,AND,OR,XOR,NOR,
      SLT,SLTU,SLL,SRL,SRA,SLLV,SRLV,SRAV,
      JR,ADDI,ADDIU,ANDI,ORI,XORI,LW,SW,
      BEQ,BNE,SLTI,SLTIU,LUI,J,JAL,//31条指令
      JALR,CLZ,BGEZ,
      LB,LBU,LH,LHU,SB,SH,
      MFC0,MTC0,MFHI,MTHI,MFLO,MTLO,
      MUL,MULTU,DIV,DIVU,
      SYSCALL,TEQ,BREAK,ERET  
      );
     //
    Control_Signal CS(
      ADD,ADDU,SUB,SUBU,AND,OR,XOR,NOR,
      SLT,SLTU,SLL,SRL,SRA,SLLV,SRLV,SRAV,
      JR,ADDI,ADDIU,ANDI,ORI,XORI,LW,SW,
      BEQ,BNE,SLTI,SLTIU,LUI,J,JAL,//31条指令
      JALR,CLZ,BGEZ,
      LB,LBU,LH,LHU,SB,SH,
      MFC0,MTC0,MFHI,MTHI,MFLO,MTLO,
      MUL,MULTU,DIV,DIVU,
      SYSCALL,TEQ,BREAK,ERET,status[0],
      zero,rsdata[31],mul_busy,div_busy,//input         
      IM_R,RF_W,ALUC,DM_CS,DM_R,DM_W,M1,M2,M3,M4,M5,M6,M7,M8,IS,EXC,HI_W,LO_W);
     
    pcreg PC(clk_out,rst||(!locked),(!mul_busy)&&(!div_busy),M1out,Iaddr);
    
    Adder NPC(Iaddr,32'h0000_0004,next_Iaddr);
    
    Adder AD(Imm18,next_Iaddr,branch_Iaddr);
    
    alu ALU(M3out,M4out,ALUC,F,zero,carry,negative,overflow);
    
    Multiplier MU(rsdata,rtdata,(MUL||MULTU)&&(!mul_busy),clk_out,rst||(!locked),MUL,z,mul_busy);

    Divider DI(rsdata,rtdata,(DIV||DIVU)&&(!div_busy),clk_out,rst||(!locked),DIV,q,r,div_busy);
    
    Regfiles RF(clk_out,rst||(!locked),RF_W,RSC,RTC,M6out,M2out,rsdata,rtdata);
  
    Imem IM(clk,1'b1,1'b0,Iaddr,Instruction);
    //imem_ip IM(eff_Iaddr[10:0],Instruction);
   
    Dmem DM(clk_out,rst,DM_CS,DM_W,F,F,rtdata,DM_data);
   // dmem_ip DM(dmem_addr[7:0],wdata,clk_out,DM_W,DM_data);
    
    EXT5 ext5(Instruction[10:6],Imm5);
    
    EXT16 ext16(Instruction[15:0],ADDI||ADDIU||LW||SW||BEQ||BNE||SLTI,Imm16);
    
    EXT18 ext18(Instruction[15:0],Imm18);
    
    II inst(Iaddr[31:28],Instruction[25:0],jump_Iaddr);
    
    Reg Hi(clk_out,rst||(!locked),HI_W,M7out,Hidata);
       
    Reg Lo(clk_out,rst||(!locked),LO_W,M8out,Lodata);
    
    Zero_Counter ZC(rsdata,zero_num);
    
    Data_Connecter DC(DM_data,rtdata,IS,F[1:0],wdata);
    
    Cause_Encoder CE(SYSCALL,TEQ,BREAK,zero,cause);
    
    CP0 cp0(clk_out,rst||(!locked),MTC0,Iaddr,RDC,rtdata,EXC,ERET,cause,1'b0,M1out,CP0data,status,exc_addr);

    MUX4_1 MUX1(M5out,jump_Iaddr,rsdata,exc_addr,M1,M1out);
    
    MUX8_1 MUX2(sel_data,F,next_Iaddr,Hidata,Lodata,zero_num,CP0data,z[31:0],M2,M2out);
    
    MUX2_1 MUX3(Imm5,rsdata,M3,M3out);
    
    MUX2_1 MUX4(rtdata,Imm16,M4,M4out);
    
    MUX2_1 MUX5(next_Iaddr,branch_Iaddr,M5,M5out);
    
    MUX5bit3_1 MUX6(RDC,RTC,M6,M6out);
    
    MUX3_1 MUX7(rsdata,z[63:32],r,M7,M7out);
    
    MUX3_1 MUX8(rsdata,z[31:0],q,M8,M8out);    
    
    io_sel io_mem(F,DM_CS,DM_W,DM_R,seg7_cs,switch_cs);
        
    sw_mem_sel sw_mem(switch_cs,sw,wdata,sel_data);
        
    seg7x16 seg7(clk_out,rst||(!locked),seg7_cs,wdata,o_seg,o_sel);

    endmodule
