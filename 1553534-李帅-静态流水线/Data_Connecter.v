`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/29 21:42:24
// Design Name: 
// Module Name: Data_Connecter
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


module Data_Connecter(
   input [31:0]dmem_data,
   input [31:0]rf_data,
   input [7:0]Instr,
   input [1:0]low_addr,
   output reg[31:0]odata
    );
    //0-lb,1-lbu,2-lh,3-lhu,4-lw,5-sb,6-sh,7-sw
    always @(*)
    begin
    if(Instr==8'b00000001)//0-lb
      begin
      if(low_addr==2'b00)
        odata={{24{dmem_data[7]}},dmem_data[7:0]};
      else if(low_addr==2'b01)
        odata={{24{dmem_data[15]}},dmem_data[15:8]};
      else if(low_addr==2'b10)
        odata={{24{dmem_data[23]}},dmem_data[23:16]};
      else
        odata={{24{dmem_data[31]}},dmem_data[31:24]};
      end
    else if(Instr==8'b00000010)//1-lbu
      begin
      if(low_addr==2'b00)
         odata={24'b0,dmem_data[7:0]};
      else if(low_addr==2'b01)
         odata={24'b0,dmem_data[15:8]};
      else if(low_addr==2'b10)
         odata={24'b0,dmem_data[23:16]};
      else
         odata={24'b0,dmem_data[31:24]};
      end
    else if(Instr==8'b00000100)//2-lh
      begin
      if(low_addr==2'b00)
         odata={{16{dmem_data[15]}},dmem_data[15:0]};
      else
         odata={{16{dmem_data[31]}},dmem_data[31:16]};
      end
    else if(Instr==8'b00001000)//3-lhu
      begin
      if(low_addr==2'b00)
        odata={16'b0,dmem_data[15:0]};
      else
        odata={16'b0,dmem_data[31:16]};
      end
    else if(Instr==8'b00010000)//4-lw
      begin
      odata=dmem_data;
      end
    else if(Instr==8'b00100000)//5-sb
      begin
      if(low_addr==2'b00)
        odata={dmem_data[31:8],rf_data[7:0]};   
      else if(low_addr==2'b01)
        odata={dmem_data[31:15],rf_data[7:0],dmem_data[7:0]};
      else if(low_addr==2'b10)
        odata={dmem_data[31:23],rf_data[7:0],dmem_data[15:0]};      
      else
        odata={rf_data[7:0],dmem_data[23:0]};
      end
    else if(Instr==8'b01000000)//6-sh
      begin
      if(low_addr==2'b00)
        odata={dmem_data[31:16],rf_data[15:0]};
      else
        odata={rf_data[15:0],dmem_data[15:0]};
      end
    else //7-sw
      begin
      odata=rf_data;
      end  
    end
endmodule
