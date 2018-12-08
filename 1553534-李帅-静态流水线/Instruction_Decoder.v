`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 19:18:51
// Design Name: 
// Module Name: Instruction_Decoder
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


module Instruction_Decoder(
    input [5:0]op,
    input [5:0]func,
    input [4:0]MT,
    output ADD,
    output ADDU,
    output SUB,
    output SUBU,
    output AND,
    output OR,
    output XOR,
    output NOR,
    output SLT,
    output SLTU,
    output SLL,
    output SRL,
    output SRA,
    output SLLV,
    output SRLV,
    output SRAV,
    output JR,
    output ADDI,
    output ADDIU,
    output ANDI,
    output ORI,
    output XORI,
    output LW,
    output SW,
    output BEQ,
    output BNE,
    output SLTI,
    output SLTIU,
    output LUI,
    output J,
    output JAL,//31Ãı÷∏¡Ó
    output JALR,
    output CLZ,
    output BGEZ,
    output LB,
    output LBU,
    output LH,
    output LHU,
    output SB,
    output SH,
    output MFC0,
    output MTC0,
    output MFHI,
    output MTHI,
    output MFLO,
    output MTLO,
    output MUL,
    output MULTU,
    output DIV,
    output DIVU,
    output SYSCALL,
    output TEQ,
    output BREAK,
    output ERET
    );
    reg [53:0]IC;
    assign ADD=IC[0];
    assign ADDU=IC[1];
    assign SUB=IC[2];
    assign SUBU=IC[3];
    assign AND=IC[4];
    assign OR=IC[5];
    assign XOR=IC[6];
    assign NOR=IC[7];
    assign SLT=IC[8];
    assign SLTU=IC[9];
    assign SLL=IC[10];
    assign SRL=IC[11];
    assign SRA=IC[12];
    assign SLLV=IC[13];
    assign SRLV=IC[14];
    assign SRAV=IC[15];
    assign JR=IC[16];
    assign ADDI=IC[17];
    assign ADDIU=IC[18];
    assign ANDI=IC[19];
    assign ORI=IC[20];
    assign XORI=IC[21];
    assign LW=IC[22];
    assign SW=IC[23];
    assign BEQ=IC[24];
    assign BNE=IC[25];
    assign SLTI=IC[26];
    assign SLTIU=IC[27];
    assign LUI=IC[28];
    assign J=IC[29];
    assign JAL=IC[30];
    
    assign JALR=IC[31];
    assign CLZ=IC[32];
    assign BGEZ=IC[33];
    assign LB=IC[34];
    assign LBU=IC[35];
    assign LH=IC[36];
    assign LHU=IC[37];
    assign SB=IC[38];
     
    assign SH=IC[39];
    assign MFC0=IC[40];
    assign MTC0=IC[41];
    assign MFHI=IC[42];
    assign MTHI=IC[43];
    assign MFLO=IC[44];
    assign MTLO=IC[45];
    assign MUL=IC[46];
    
    assign MULTU=IC[47];
    assign DIV=IC[48];
    assign DIVU=IC[49];
    assign SYSCALL=IC[50];
    assign TEQ=IC[51];
    assign BREAK=IC[52];
    assign ERET=IC[53];
       
    always @(*)
    begin
    if(op==6'b000000)
      begin
      case(func)
      6'b100000:IC={53'b0,1'b1};//add
      6'b100001:IC={52'b0,1'b1,1'b0};//addu
      6'b100010:IC={51'b0,1'b1,2'b0};//sub
      6'b100011:IC={50'b0,1'b1,3'b0};//subu
      6'b100100:IC={49'b0,1'b1,4'b0};//and
      6'b100101:IC={48'b0,1'b1,5'b0};//or
      6'b100110:IC={47'b0,1'b1,6'b0};//xor
      6'b100111:IC={46'b0,1'b1,7'b0};//nor
      6'b101010:IC={45'b0,1'b1,8'b0};//slt
      6'b101011:IC={44'b0,1'b1,9'b0};//sltu
      6'b000000:IC={43'b0,1'b1,10'b0};//sll
      6'b000010:IC={42'b0,1'b1,11'b0};//srl
      6'b000011:IC={41'b0,1'b1,12'b0};//sra
      6'b000100:IC={40'b0,1'b1,13'b0};//sllv
      6'b000110:IC={39'b0,1'b1,14'b0};//srlv
      6'b000111:IC={38'b0,1'b1,15'b0};//srav
      6'b001000:IC={37'b0,1'b1,16'b0};//jr
      6'b001001:IC={22'b0,1'b1,31'b0};//jalr
      
      6'b010000:IC={11'b0,1'b1,42'b0};//mfhi
      6'b010001:IC={10'b0,1'b1,43'b0};//mthi
      6'b010010:IC={9'b0,1'b1,44'b0};//mflo
      6'b010011:IC={8'b0,1'b1,45'b0};//mtlo
      6'b011001:IC={6'b0,1'b1,47'b0};//multu
      6'b011010:IC={5'b0,1'b1,48'b0};//div
      6'b011011:IC={4'b0,1'b1,49'b0};//divu
      6'b001100:IC={3'b0,1'b1,50'b0};//syscall
      6'b110100:IC={2'b0,1'b1,51'b0};//teq
      6'b001101:IC={1'b0,1'b1,52'b0};//break
      default:IC=0;
      endcase
      end
    else if(op==6'b010000)
      begin
      if(func==6'b000000)
        begin
        if(MT==5'b00000)
          IC={13'b0,1'b1,40'b0};//mfc0
        else
          IC={12'b0,1'b1,41'b0};//mtc0
        end
      else
        begin
        IC={1'b1,53'b0};//eret
        end
      end
    else if(op==6'b011100)
      begin
      case(func)
      6'b100000:IC={21'b0,1'b1,32'b0};//clz
      6'b000010:IC={7'b0,1'b1,46'b0};//mul
      default:IC=0;
      endcase
      end
    else if(op==6'b001000)//addi
      IC={36'b0,1'b1,17'b0};
    else if(op==6'b001001)//addiu       
      IC={35'b0,1'b1,18'b0};
    else if(op==6'b001100)//andi
      IC={34'b0,1'b1,19'b0};
    else if(op==6'b001101)//ori
      IC={33'b0,1'b1,20'b0};
    else if(op==6'b001110)//xori
      IC={32'b0,1'b1,21'b0};
    else if(op==6'b100011)//lw
      IC={31'b0,1'b1,22'b0};
    else if(op==6'b101011)//sw
      IC={30'b0,1'b1,23'b0};
    else if(op==6'b000100)//beq
      IC={29'b0,1'b1,24'b0};
    else if(op==6'b000101)//bne
      IC={28'b0,1'b1,25'b0};
    else if(op==6'b001010)//slti
      IC={27'b0,1'b1,26'b0};
    else if(op==6'b001011)//sltiu
      IC={26'b0,1'b1,27'b0};
    else if(op==6'b001111)//lui
      IC={25'b0,1'b1,28'b0};
    else if(op==6'b000010)//j
      IC={24'b0,1'b1,29'b0};
    else if(op==6'b000011)//jal
      IC={23'b0,1'b1,30'b0};
      
    else if(op==6'b000001)//bgez
      IC={20'b0,1'b1,33'b0};
    else if(op==6'b100000)//lb
      IC={19'b0,1'b1,34'b0};
    else if(op==6'b100100)//lbu
      IC={18'b0,1'b1,35'b0};
    else if(op==6'b100001)//lh
      IC={17'b0,1'b1,36'b0};
    else if(op==6'b100101)//lhu
      IC={16'b0,1'b1,37'b0};
    else if(op==6'b101000)//sb
      IC={15'b0,1'b1,38'b0};
    else if(op==6'b101001)//sh
      IC={14'b0,1'b1,39'b0};
    else
      IC=0;
    end
endmodule
