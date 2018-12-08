// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Nov 07 12:21:04 2017
// Host        : DESKTOP-707DVJK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               S:/360Downloads/Pipeline/Pipeline.sim/sim_1/impl/timing/top_tb_v_time_impl.v
// Design      : MipsPipelineCPU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD11
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM64X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD12
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD13
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD14
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD15
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD16
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD17
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD18
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD19
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD20
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD21
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD22
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD23
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD24
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD25
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD26
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD27
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD28
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD29
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD30
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD31
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD32
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD33
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD34
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD35
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD36
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD37
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD38
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD39
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD40
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD41
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD42
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module clk_div
   (clk_in1,
    clk_out1,
    reset,
    locked);
  input clk_in1;
  output clk_out1;
  input reset;
  output locked;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_div_clk_div_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* CHECK_LICENSE_TYPE = "dataRAM,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
module dataRAM
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [5:0]NLW_U0_dpra_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dataRAM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dataRAM_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[5:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(spo),
        .we(we));
endmodule

(* CHECK_LICENSE_TYPE = "instructionROM,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
module instructionROM
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire [5:0]a;
  wire [31:0]spo;
  wire NLW_U0_clk_UNCONNECTED;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire NLW_U0_we_UNCONNECTED;
  wire [31:0]NLW_U0_d_UNCONNECTED;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [5:0]NLW_U0_dpra_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [30:25]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "instructionROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  instructionROM_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(NLW_U0_clk_UNCONNECTED),
        .d(NLW_U0_d_UNCONNECTED[31:0]),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[5:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo({spo[31],NLW_U0_spo_UNCONNECTED[30],spo[29:26],NLW_U0_spo_UNCONNECTED[25],spo[24:0]}),
        .we(NLW_U0_we_UNCONNECTED));
endmodule

module ID
   (\q_reg[0] ,
    RsData0,
    RtData0,
    RegWriteData_wb,
    \q_reg[25] ,
    \q_reg[25]_0 ,
    clk_out1,
    Q,
    \q_reg[25]_1 ,
    \q_reg[4] );
  output \q_reg[0] ;
  output [31:0]RsData0;
  output [31:0]RtData0;
  input [31:0]RegWriteData_wb;
  input \q_reg[25] ;
  input \q_reg[25]_0 ;
  input clk_out1;
  input [0:0]Q;
  input [9:0]\q_reg[25]_1 ;
  input [4:0]\q_reg[4] ;

  wire [0:0]Q;
  wire [31:0]RegWriteData_wb;
  wire [31:0]RsData0;
  wire [31:0]RtData0;
  wire clk_out1;
  wire \q_reg[0] ;
  wire \q_reg[25] ;
  wire \q_reg[25]_0 ;
  wire [9:0]\q_reg[25]_1 ;
  wire [4:0]\q_reg[4] ;

  Registers MultiRegisters
       (.Q(Q),
        .RegWriteData_wb(RegWriteData_wb),
        .RsData0(RsData0),
        .RtData0(RtData0),
        .clk_out1(clk_out1),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[25] (\q_reg[25] ),
        .\q_reg[25]_0 (\q_reg[25]_0 ),
        .\q_reg[25]_1 (\q_reg[25]_1 ),
        .\q_reg[4] (\q_reg[4] ));
endmodule

module IF
   (Instruction_if,
    Q,
    D,
    \q_reg[5] ,
    E,
    SR,
    \q_reg[0] ,
    clk);
  output [31:0]Instruction_if;
  output [0:0]Q;
  output [5:0]D;
  input [5:0]\q_reg[5] ;
  input [0:0]E;
  input [0:0]SR;
  input [0:0]\q_reg[0] ;
  input clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [31:0]Instruction_if;
  wire [7:2]PC_in;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire dffre_PC_REG_n_10;
  wire dffre_PC_REG_n_6;
  wire dffre_PC_REG_n_7;
  wire dffre_PC_REG_n_8;
  wire dffre_PC_REG_n_9;
  wire [0:0]\q_reg[0] ;
  wire [5:0]\q_reg[5] ;
  wire [30:25]NLW_instruction_spo_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[2] 
       (.CLR(1'b0),
        .D(\q_reg[5] [0]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[3] 
       (.CLR(1'b0),
        .D(\q_reg[5] [1]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[4] 
       (.CLR(1'b0),
        .D(\q_reg[5] [2]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[5] 
       (.CLR(1'b0),
        .D(\q_reg[5] [3]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[6] 
       (.CLR(1'b0),
        .D(\q_reg[5] [4]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_in_reg[7] 
       (.CLR(1'b0),
        .D(\q_reg[5] [5]),
        .G(E),
        .GE(1'b1),
        .Q(PC_in[7]));
  dffre_4 dffre_PC_REG
       (.D(D),
        .Q({dffre_PC_REG_n_6,dffre_PC_REG_n_7,dffre_PC_REG_n_8,dffre_PC_REG_n_9,dffre_PC_REG_n_10,Q}),
        .SR(SR),
        .clk(clk),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[5]_0 (PC_in));
  (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
  instructionROM instruction
       (.a({dffre_PC_REG_n_6,dffre_PC_REG_n_7,dffre_PC_REG_n_8,dffre_PC_REG_n_9,dffre_PC_REG_n_10,Q}),
        .spo({Instruction_if[31],NLW_instruction_spo_UNCONNECTED[30],Instruction_if[29:26],NLW_instruction_spo_UNCONNECTED[25],Instruction_if[24:0]}));
endmodule

(* ECO_CHECKSUM = "522affaa" *) 
(* NotValidForBitStream *)
module MipsPipelineCPU
   (clk,
    reset,
    o_seg,
    o_sel);
  (* CLOCK_BUFFER_TYPE = "none" *) input clk;
  input reset;
  output [7:0]o_seg;
  output [7:0]o_sel;

  wire [2:0]ALUCode_ex;
  wire [4:0]ALUCode_id;
  wire [31:0]ALUResult_ex;
  wire [31:0]ALUResult_mem;
  wire ALUSrcA_ex;
  wire ALUSrcA_id;
  wire ALUSrcB_ex;
  wire ALUSrcB_id;
  wire [5:3]BranchAddr;
  wire [31:1]\EX/ALU/B_adder0 ;
  wire \EX/ALU/B_adder1__3 ;
  wire [31:5]\EX/ALU/B_adder__95 ;
  wire \EX/ALU/adder_32bits_ALU/cio_0 ;
  wire [25:15]\EX/ALU/data11 ;
  wire [12:5]\EX/ALU/p_0_in ;
  wire [5:1]\EX/ALU/sum ;
  wire \EX/ForwardA_0 ;
  wire \EX/ForwardA_1 ;
  wire \EX/ForwardB_00 ;
  wire \EX/p_3_in ;
  wire ID_n_0;
  wire IF_n_32;
  wire [15:15]Imm_ex;
  wire [5:0]Imm_id;
  wire [31:0]Instruction_if;
  wire [31:0]MemDout_wb;
  wire MemRead_id;
  wire [31:0]MemWriteData_ex;
  wire [31:0]MemWriteData_mem;
  wire MemWrite_id;
  wire MemWrite_mem;
  wire [7:2]NextPC_id;
  wire [7:2]NextPC_if;
  wire PC_IFWrite;
  wire [4:0]RdAddr_id;
  wire RegDst_id;
  wire [4:0]RegWriteAddr_ex;
  wire [4:0]RegWriteAddr_mem;
  wire [4:0]RegWriteAddr_wb;
  wire [31:0]RegWriteData_wb;
  wire RegWrite_id;
  wire [4:0]RsAddr_ex;
  wire [4:0]RsAddr_id;
  wire [31:0]RsData0;
  wire [31:0]RsData_ex;
  wire [31:0]RsData_id;
  wire [4:0]RtAddr_ex;
  wire [4:0]RtAddr_id;
  wire [31:0]RtData0;
  wire [31:0]RtData_ex;
  wire [31:0]RtData_id;
  wire [4:0]Sa_id;
  (* IBUF_LOW_PWR *) wire clk;
  wire clk_out;
  wire cs;
  wire dffr_EXMEM_ALUResult_n_33;
  wire dffr_EXMEM_RegWriteAddr_n_38;
  wire dffr_EXMEM_WB_n_0;
  wire dffr_EXMEM_WB_n_1;
  wire dffr_IDEX_EX_n_37;
  wire dffr_IDEX_EX_n_38;
  wire dffr_IDEX_EX_n_39;
  wire dffr_IDEX_EX_n_40;
  wire dffr_IDEX_EX_n_42;
  wire dffr_IDEX_EX_n_43;
  wire dffr_IDEX_EX_n_44;
  wire dffr_IDEX_EX_n_45;
  wire dffr_IDEX_EX_n_46;
  wire dffr_IDEX_EX_n_47;
  wire dffr_IDEX_EX_n_48;
  wire dffr_IDEX_EX_n_49;
  wire dffr_IDEX_EX_n_50;
  wire dffr_IDEX_EX_n_51;
  wire dffr_IDEX_EX_n_52;
  wire dffr_IDEX_EX_n_53;
  wire dffr_IDEX_EX_n_54;
  wire dffr_IDEX_EX_n_55;
  wire dffr_IDEX_Imm_n_1;
  wire dffr_IDEX_Imm_n_100;
  wire dffr_IDEX_Imm_n_101;
  wire dffr_IDEX_Imm_n_102;
  wire dffr_IDEX_Imm_n_103;
  wire dffr_IDEX_Imm_n_104;
  wire dffr_IDEX_Imm_n_105;
  wire dffr_IDEX_Imm_n_106;
  wire dffr_IDEX_Imm_n_107;
  wire dffr_IDEX_Imm_n_108;
  wire dffr_IDEX_Imm_n_109;
  wire dffr_IDEX_Imm_n_110;
  wire dffr_IDEX_Imm_n_111;
  wire dffr_IDEX_Imm_n_112;
  wire dffr_IDEX_Imm_n_113;
  wire dffr_IDEX_Imm_n_114;
  wire dffr_IDEX_Imm_n_115;
  wire dffr_IDEX_Imm_n_116;
  wire dffr_IDEX_Imm_n_117;
  wire dffr_IDEX_Imm_n_118;
  wire dffr_IDEX_Imm_n_119;
  wire dffr_IDEX_Imm_n_120;
  wire dffr_IDEX_Imm_n_18;
  wire dffr_IDEX_Imm_n_19;
  wire dffr_IDEX_Imm_n_20;
  wire dffr_IDEX_Imm_n_21;
  wire dffr_IDEX_Imm_n_22;
  wire dffr_IDEX_Imm_n_23;
  wire dffr_IDEX_Imm_n_24;
  wire dffr_IDEX_Imm_n_25;
  wire dffr_IDEX_Imm_n_31;
  wire dffr_IDEX_Imm_n_53;
  wire dffr_IDEX_Imm_n_54;
  wire dffr_IDEX_Imm_n_55;
  wire dffr_IDEX_Imm_n_56;
  wire dffr_IDEX_Imm_n_57;
  wire dffr_IDEX_Imm_n_58;
  wire dffr_IDEX_Imm_n_59;
  wire dffr_IDEX_Imm_n_60;
  wire dffr_IDEX_Imm_n_61;
  wire dffr_IDEX_Imm_n_62;
  wire dffr_IDEX_Imm_n_63;
  wire dffr_IDEX_Imm_n_64;
  wire dffr_IDEX_Imm_n_65;
  wire dffr_IDEX_Imm_n_66;
  wire dffr_IDEX_Imm_n_67;
  wire dffr_IDEX_Imm_n_68;
  wire dffr_IDEX_Imm_n_69;
  wire dffr_IDEX_Imm_n_7;
  wire dffr_IDEX_Imm_n_70;
  wire dffr_IDEX_Imm_n_71;
  wire dffr_IDEX_Imm_n_72;
  wire dffr_IDEX_Imm_n_73;
  wire dffr_IDEX_Imm_n_74;
  wire dffr_IDEX_Imm_n_75;
  wire dffr_IDEX_Imm_n_76;
  wire dffr_IDEX_Imm_n_77;
  wire dffr_IDEX_Imm_n_78;
  wire dffr_IDEX_Imm_n_79;
  wire dffr_IDEX_Imm_n_80;
  wire dffr_IDEX_Imm_n_81;
  wire dffr_IDEX_Imm_n_82;
  wire dffr_IDEX_Imm_n_83;
  wire dffr_IDEX_Imm_n_84;
  wire dffr_IDEX_Imm_n_85;
  wire dffr_IDEX_Imm_n_86;
  wire dffr_IDEX_Imm_n_87;
  wire dffr_IDEX_Imm_n_88;
  wire dffr_IDEX_Imm_n_89;
  wire dffr_IDEX_Imm_n_90;
  wire dffr_IDEX_Imm_n_91;
  wire dffr_IDEX_Imm_n_92;
  wire dffr_IDEX_Imm_n_93;
  wire dffr_IDEX_Imm_n_94;
  wire dffr_IDEX_Imm_n_95;
  wire dffr_IDEX_Imm_n_96;
  wire dffr_IDEX_Imm_n_97;
  wire dffr_IDEX_Imm_n_98;
  wire dffr_IDEX_Imm_n_99;
  wire dffr_IDEX_M_n_0;
  wire dffr_IDEX_M_n_1;
  wire dffr_IDEX_Sa_n_10;
  wire dffr_IDEX_Sa_n_11;
  wire dffr_IDEX_Sa_n_12;
  wire dffr_IDEX_Sa_n_13;
  wire dffr_IDEX_Sa_n_14;
  wire dffr_IDEX_Sa_n_15;
  wire dffr_IDEX_Sa_n_16;
  wire dffr_IDEX_Sa_n_17;
  wire dffr_IDEX_Sa_n_18;
  wire dffr_IDEX_Sa_n_19;
  wire dffr_IDEX_Sa_n_20;
  wire dffr_IDEX_Sa_n_21;
  wire dffr_IDEX_Sa_n_23;
  wire dffr_IDEX_Sa_n_24;
  wire dffr_IDEX_Sa_n_25;
  wire dffr_IDEX_Sa_n_26;
  wire dffr_IDEX_Sa_n_27;
  wire dffr_IDEX_Sa_n_28;
  wire dffr_IDEX_Sa_n_29;
  wire dffr_IDEX_Sa_n_30;
  wire dffr_IDEX_Sa_n_31;
  wire dffr_IDEX_Sa_n_32;
  wire dffr_IDEX_Sa_n_33;
  wire dffr_IDEX_Sa_n_34;
  wire dffr_IDEX_Sa_n_35;
  wire dffr_IDEX_Sa_n_36;
  wire dffr_IDEX_Sa_n_4;
  wire dffr_IDEX_Sa_n_42;
  wire dffr_IDEX_Sa_n_43;
  wire dffr_IDEX_Sa_n_44;
  wire dffr_IDEX_Sa_n_45;
  wire dffr_IDEX_Sa_n_5;
  wire dffr_IDEX_Sa_n_53;
  wire dffr_IDEX_Sa_n_54;
  wire dffr_IDEX_Sa_n_55;
  wire dffr_IDEX_Sa_n_56;
  wire dffr_IDEX_Sa_n_57;
  wire dffr_IDEX_Sa_n_58;
  wire dffr_IDEX_Sa_n_59;
  wire dffr_IDEX_Sa_n_6;
  wire dffr_IDEX_Sa_n_60;
  wire dffr_IDEX_Sa_n_61;
  wire dffr_IDEX_Sa_n_62;
  wire dffr_IDEX_Sa_n_63;
  wire dffr_IDEX_Sa_n_7;
  wire dffr_IDEX_Sa_n_8;
  wire dffr_IDEX_Sa_n_9;
  wire dffr_IDEX_WB_n_0;
  wire dffr_MEMWB_ALUResult_n_0;
  wire dffr_MEMWB_ALUResult_n_64;
  wire dffr_MEMWB_ALUResult_n_65;
  wire dffr_MEMWB_ALUResult_n_66;
  wire dffr_MEMWB_ALUResult_n_67;
  wire dffr_MEMWB_ALUResult_n_68;
  wire dffr_MEMWB_ALUResult_n_69;
  wire dffr_MEMWB_RegWriteAddr_n_1;
  wire dffr_MEMWB_RegWriteAddr_n_2;
  wire dffr_MEMWB_WB_n_0;
  wire dffr_MEMWB_WB_n_1;
  wire dffre_IFID_Instruction_n_0;
  wire dffre_IFID_Instruction_n_1;
  wire dffre_IFID_Instruction_n_2;
  wire dffre_IFID_Instruction_n_3;
  wire dffre_IFID_Instruction_n_4;
  wire dffre_IFID_Instruction_n_40;
  wire dffre_IFID_Instruction_n_41;
  wire dffre_IFID_Instruction_n_42;
  wire dffre_IFID_Instruction_n_43;
  wire dffre_IFID_Instruction_n_44;
  wire dffre_IFID_Instruction_n_46;
  wire dffre_IFID_Instruction_n_48;
  wire dffre_IFID_Instruction_n_5;
  wire dffre_IFID_Instruction_n_51;
  wire dffre_IFID_Instruction_n_52;
  wire dffre_IFID_NextPC_n_8;
  wire locked;
  wire [7:0]o_seg;
  wire [6:0]o_seg_OBUF;
  wire [7:0]o_sel;
  wire [7:0]o_sel_OBUF;
  wire reset;
  wire reset_IBUF;
  wire stall_reset;
  wire [30:25]NLW_IF_Instruction_if_UNCONNECTED;
  wire [4:4]\NLW_dffr_EXMEM_RegWriteAddr_q_reg[4]_1_UNCONNECTED ;
  wire [4:4]\NLW_dffr_EXMEM_RegWriteAddr_q_reg[4]_2_UNCONNECTED ;
  wire [14:14]NLW_dffr_IDEX_Imm_Q_UNCONNECTED;
  wire [4:4]\NLW_dffr_IDEX_Imm_q_reg[4]_3_UNCONNECTED ;
  wire [4:4]NLW_dffr_IDEX_RsAddr_Q_UNCONNECTED;
  wire [4:4]\NLW_dffr_IDEX_RsAddr_q_reg[25]_UNCONNECTED ;
  wire [4:4]NLW_dffr_IDEX_RtAddr_Q_UNCONNECTED;
  wire [4:4]\NLW_dffr_IDEX_RtAddr_q_reg[20]_UNCONNECTED ;
  wire [3:1]\NLW_dffr_MEMWB_RegWriteAddr_q_reg[25]_UNCONNECTED ;
  wire [4:4]\NLW_dffr_MEMWB_RegWriteAddr_q_reg[4]_0_UNCONNECTED ;
  wire [4:4]\NLW_dffr_MEMWB_RegWriteAddr_q_reg[4]_1_UNCONNECTED ;
  wire [30:25]\NLW_dffre_IFID_Instruction_bbstub_spo[31]_UNCONNECTED ;
  wire [0:0]\NLW_dffre_IFID_Instruction_q_reg[4]_0_UNCONNECTED ;

initial begin
 $sdf_annotate("top_tb_v_time_impl.sdf",,,,"tool_control");
end
  ID ID
       (.Q(dffr_MEMWB_WB_n_1),
        .RegWriteData_wb(RegWriteData_wb),
        .RsData0(RsData0),
        .RtData0(RtData0),
        .clk_out1(clk_out),
        .\q_reg[0] (ID_n_0),
        .\q_reg[25] (dffre_IFID_Instruction_n_42),
        .\q_reg[25]_0 (dffr_MEMWB_RegWriteAddr_n_2),
        .\q_reg[25]_1 ({RsAddr_id,RtAddr_id}),
        .\q_reg[4] (RegWriteAddr_wb));
  IF IF
       (.D(NextPC_if),
        .E(dffre_IFID_Instruction_n_52),
        .Instruction_if({Instruction_if[31],NLW_IF_Instruction_if_UNCONNECTED[30],Instruction_if[29:26],NLW_IF_Instruction_if_UNCONNECTED[25],Instruction_if[24:0]}),
        .Q(IF_n_32),
        .SR(dffr_EXMEM_ALUResult_n_33),
        .clk(clk_out),
        .\q_reg[0] (PC_IFWrite),
        .\q_reg[5] ({dffre_IFID_Instruction_n_0,dffre_IFID_Instruction_n_1,dffre_IFID_Instruction_n_2,dffre_IFID_Instruction_n_3,dffre_IFID_Instruction_n_4,dffre_IFID_Instruction_n_5}));
  clk_div clock
       (.clk_in1(clk),
        .clk_out1(clk_out),
        .locked(locked),
        .reset(reset_IBUF));
  (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
  dataRAM dataram
       (.a(ALUResult_mem[7:2]),
        .clk(clk_out),
        .d(MemWriteData_mem),
        .spo(MemDout_wb),
        .we(MemWrite_mem));
  dffr__parameterized9 dffr_EXMEM_ALUResult
       (.D(ALUResult_ex),
        .E(cs),
        .Q(ALUResult_mem),
        .clk(clk_out),
        .locked(locked),
        .reset(dffr_EXMEM_ALUResult_n_33),
        .reset_IBUF(reset_IBUF));
  dffr__parameterized8 dffr_EXMEM_M
       (.clk(clk_out),
        .\q_reg[1] (dffr_IDEX_M_n_0),
        .reset(dffr_EXMEM_ALUResult_n_33),
        .we(MemWrite_mem));
  dffr__parameterized10 dffr_EXMEM_MemWriteData
       (.MemWriteData_ex(MemWriteData_ex),
        .Q(MemWriteData_mem),
        .clk(clk_out),
        .reset(dffr_EXMEM_ALUResult_n_33));
  dffr__parameterized11 dffr_EXMEM_RegWriteAddr
       (.D(ALUResult_mem),
        .ForwardA_1(\EX/ForwardA_1 ),
        .ForwardB_00(\EX/ForwardB_00 ),
        .MemWriteData_ex(MemWriteData_ex),
        .Q(RtData_ex),
        .RegWriteData_wb(RegWriteData_wb),
        .clk_out1(clk_out),
        .p_3_in(\EX/p_3_in ),
        .\q_reg[0]_0 (dffr_EXMEM_WB_n_1),
        .\q_reg[15] (RegWriteAddr_ex),
        .\q_reg[31] (dffr_EXMEM_RegWriteAddr_n_38),
        .\q_reg[4]_0 (RegWriteAddr_mem),
        .\q_reg[4]_1 ({\NLW_dffr_EXMEM_RegWriteAddr_q_reg[4]_1_UNCONNECTED [4],RtAddr_ex[3:0]}),
        .\q_reg[4]_2 ({\NLW_dffr_EXMEM_RegWriteAddr_q_reg[4]_2_UNCONNECTED [4],RsAddr_ex[3:0]}),
        .reset(dffr_EXMEM_ALUResult_n_33));
  dffr dffr_EXMEM_WB
       (.D({dffr_IDEX_M_n_1,dffr_IDEX_WB_n_0}),
        .Q({dffr_EXMEM_WB_n_0,dffr_EXMEM_WB_n_1}),
        .clk_out1(clk_out),
        .reset(dffr_EXMEM_ALUResult_n_33));
  dffr__parameterized0 dffr_IDEX_EX
       (.B_adder0({\EX/ALU/B_adder0 [31],\EX/ALU/B_adder0 [28],\EX/ALU/B_adder0 [24],\EX/ALU/B_adder0 [20],\EX/ALU/B_adder0 [16],\EX/ALU/B_adder0 [12],\EX/ALU/B_adder0 [8],\EX/ALU/B_adder0 [4]}),
        .B_adder1__3(\EX/ALU/B_adder1__3 ),
        .B_adder__95({\EX/ALU/B_adder__95 [31:29],\EX/ALU/B_adder__95 [27:5]}),
        .D(ALUResult_ex),
        .ForwardA_0(\EX/ForwardA_0 ),
        .ForwardA_1(\EX/ForwardA_1 ),
        .Q({ALUCode_ex,ALUSrcA_ex,ALUSrcB_ex,dffr_IDEX_EX_n_37}),
        .RegWriteData_wb(RegWriteData_wb[31:5]),
        .SR(stall_reset),
        .cio_0(\EX/ALU/adder_32bits_ALU/cio_0 ),
        .clk_out1(clk_out),
        .\q_reg[0]_0 (dffr_IDEX_Sa_n_6),
        .\q_reg[0]_1 (dffr_IDEX_Imm_n_56),
        .\q_reg[0]_2 ({\EX/ALU/data11 [25:20],\EX/ALU/data11 [15]}),
        .\q_reg[0]_3 (dffr_IDEX_Sa_n_34),
        .\q_reg[0]_4 ({ALUCode_id,ALUSrcA_id,ALUSrcB_id,RegDst_id}),
        .\q_reg[11] (dffr_IDEX_EX_n_44),
        .\q_reg[11]_0 (dffr_IDEX_Imm_n_73),
        .\q_reg[12] (dffr_IDEX_Imm_n_78),
        .\q_reg[13] (dffr_IDEX_Imm_n_86),
        .\q_reg[14] (dffr_IDEX_EX_n_40),
        .\q_reg[14]_0 (dffr_IDEX_Imm_n_94),
        .\q_reg[15] (dffr_IDEX_Imm_n_111),
        .\q_reg[15]_0 (dffr_IDEX_Imm_n_110),
        .\q_reg[15]_1 (dffr_IDEX_Imm_n_109),
        .\q_reg[15]_10 (dffr_IDEX_Imm_n_95),
        .\q_reg[15]_11 (dffr_IDEX_Imm_n_99),
        .\q_reg[15]_12 (dffr_IDEX_Imm_n_59),
        .\q_reg[15]_13 (dffr_IDEX_Imm_n_66),
        .\q_reg[15]_14 (dffr_IDEX_Imm_n_69),
        .\q_reg[15]_15 (dffr_IDEX_Imm_n_74),
        .\q_reg[15]_16 (dffr_IDEX_Imm_n_81),
        .\q_reg[15]_17 (dffr_IDEX_Imm_n_89),
        .\q_reg[15]_18 (dffr_IDEX_Imm_n_93),
        .\q_reg[15]_19 (dffr_IDEX_Imm_n_120),
        .\q_reg[15]_2 (dffr_IDEX_Imm_n_97),
        .\q_reg[15]_20 (dffr_IDEX_Imm_n_103),
        .\q_reg[15]_3 (dffr_IDEX_Imm_n_98),
        .\q_reg[15]_4 (dffr_IDEX_Imm_n_58),
        .\q_reg[15]_5 (dffr_IDEX_Imm_n_65),
        .\q_reg[15]_6 (dffr_IDEX_Imm_n_68),
        .\q_reg[15]_7 (dffr_IDEX_Imm_n_72),
        .\q_reg[15]_8 (dffr_IDEX_Imm_n_80),
        .\q_reg[15]_9 (dffr_IDEX_Imm_n_88),
        .\q_reg[16] (dffr_IDEX_EX_n_45),
        .\q_reg[16]_0 (dffr_IDEX_EX_n_48),
        .\q_reg[16]_1 (dffr_IDEX_EX_n_49),
        .\q_reg[17] (dffr_IDEX_EX_n_50),
        .\q_reg[17]_0 (dffr_IDEX_EX_n_51),
        .\q_reg[17]_1 (dffr_IDEX_EX_n_52),
        .\q_reg[18] (dffr_IDEX_EX_n_53),
        .\q_reg[19] (dffr_IDEX_EX_n_46),
        .\q_reg[19]_0 (dffr_IDEX_EX_n_47),
        .\q_reg[1]_0 (dffr_IDEX_Sa_n_10),
        .\q_reg[1]_1 (dffr_IDEX_Sa_n_36),
        .\q_reg[1]_2 (dffr_IDEX_Imm_n_55),
        .\q_reg[23] (dffr_IDEX_EX_n_54),
        .\q_reg[2]_0 (dffr_IDEX_EX_n_55),
        .\q_reg[2]_1 (dffr_IDEX_Sa_n_13),
        .\q_reg[2]_2 (\EX/ALU/sum ),
        .\q_reg[2]_3 (dffr_IDEX_Sa_n_18),
        .\q_reg[2]_4 (dffr_IDEX_Imm_n_54),
        .\q_reg[31] (dffr_IDEX_EX_n_39),
        .\q_reg[31]_0 (RsData_ex[31:5]),
        .\q_reg[31]_1 (ALUResult_mem[31:5]),
        .\q_reg[3]_0 (dffr_IDEX_Sa_n_11),
        .\q_reg[3]_1 (dffr_IDEX_Sa_n_5),
        .\q_reg[3]_10 (dffr_IDEX_Imm_n_22),
        .\q_reg[3]_11 (dffr_IDEX_Imm_n_23),
        .\q_reg[3]_12 (dffr_IDEX_Imm_n_24),
        .\q_reg[3]_13 (dffr_IDEX_Sa_n_19),
        .\q_reg[3]_14 (dffr_IDEX_Sa_n_20),
        .\q_reg[3]_15 (dffr_IDEX_Sa_n_21),
        .\q_reg[3]_16 (dffr_IDEX_Sa_n_33),
        .\q_reg[3]_17 (dffr_IDEX_Imm_n_53),
        .\q_reg[3]_18 (dffr_IDEX_Sa_n_23),
        .\q_reg[3]_19 (dffr_IDEX_Sa_n_27),
        .\q_reg[3]_2 (dffr_IDEX_Sa_n_8),
        .\q_reg[3]_20 (dffr_IDEX_Sa_n_28),
        .\q_reg[3]_21 (dffr_IDEX_Sa_n_29),
        .\q_reg[3]_22 (dffr_IDEX_Sa_n_30),
        .\q_reg[3]_23 (dffr_IDEX_Sa_n_31),
        .\q_reg[3]_24 (dffr_IDEX_Sa_n_32),
        .\q_reg[3]_25 (dffr_IDEX_Imm_n_60),
        .\q_reg[3]_26 (dffr_IDEX_Imm_n_61),
        .\q_reg[3]_27 (dffr_IDEX_Imm_n_62),
        .\q_reg[3]_28 (dffr_IDEX_Imm_n_63),
        .\q_reg[3]_29 (dffr_IDEX_Imm_n_104),
        .\q_reg[3]_3 (dffr_IDEX_Sa_n_9),
        .\q_reg[3]_30 (dffr_IDEX_Imm_n_18),
        .\q_reg[3]_31 (dffr_IDEX_Sa_n_26),
        .\q_reg[3]_32 (dffr_IDEX_Sa_n_25),
        .\q_reg[3]_33 (dffr_IDEX_Sa_n_24),
        .\q_reg[3]_4 (dffr_IDEX_Sa_n_14),
        .\q_reg[3]_5 (dffr_IDEX_Sa_n_15),
        .\q_reg[3]_6 (dffr_IDEX_Sa_n_16),
        .\q_reg[3]_7 (dffr_IDEX_Sa_n_17),
        .\q_reg[3]_8 (dffr_IDEX_Imm_n_20),
        .\q_reg[3]_9 (dffr_IDEX_Imm_n_21),
        .\q_reg[4]_0 (dffr_IDEX_Sa_n_12),
        .\q_reg[4]_1 (dffr_IDEX_Imm_n_31),
        .\q_reg[4]_2 (dffr_IDEX_Sa_n_35),
        .\q_reg[4]_3 (dffr_IDEX_Sa_n_54),
        .\q_reg[5]_0 (dffr_IDEX_EX_n_38),
        .\q_reg[5]_1 (dffr_IDEX_EX_n_42),
        .\q_reg[5]_2 (dffr_IDEX_EX_n_43),
        .\q_reg[5]_3 (dffr_IDEX_Imm_n_85),
        .\q_reg[5]_4 (dffr_IDEX_Sa_n_53));
  dffr__parameterized2 dffr_IDEX_Imm
       (.B_adder1__3(\EX/ALU/B_adder1__3 ),
        .CO(dffr_IDEX_Imm_n_7),
        .MemWriteData_ex({MemWriteData_ex[31:11],MemWriteData_ex[5:0]}),
        .Q({NLW_dffr_IDEX_Imm_Q_UNCONNECTED[14],RsAddr_id[2:0],RdAddr_id,Imm_id}),
        .SR(stall_reset),
        .cio_0(\EX/ALU/adder_32bits_ALU/cio_0 ),
        .clk_out1(clk_out),
        .\q_reg[0]_0 (dffr_IDEX_Imm_n_1),
        .\q_reg[0]_1 (dffr_IDEX_Imm_n_18),
        .\q_reg[0]_10 (dffr_IDEX_Imm_n_96),
        .\q_reg[0]_11 (dffr_IDEX_Imm_n_111),
        .\q_reg[0]_12 (dffr_IDEX_Sa_n_6),
        .\q_reg[0]_13 (dffr_IDEX_Sa_n_34),
        .\q_reg[0]_14 (dffr_IDEX_Sa_n_42),
        .\q_reg[0]_2 (dffr_IDEX_Imm_n_19),
        .\q_reg[0]_3 ({\EX/ALU/B_adder__95 [31:29],\EX/ALU/B_adder__95 [27:11],\EX/ALU/B_adder__95 [5]}),
        .\q_reg[0]_4 (dffr_IDEX_Imm_n_56),
        .\q_reg[0]_5 (dffr_IDEX_Imm_n_70),
        .\q_reg[0]_6 (dffr_IDEX_Imm_n_76),
        .\q_reg[0]_7 (dffr_IDEX_Imm_n_83),
        .\q_reg[0]_8 (dffr_IDEX_Imm_n_91),
        .\q_reg[0]_9 (dffr_IDEX_Imm_n_92),
        .\q_reg[11]_0 (dffr_IDEX_Imm_n_24),
        .\q_reg[11]_1 (dffr_IDEX_Imm_n_25),
        .\q_reg[11]_2 (dffr_IDEX_Imm_n_73),
        .\q_reg[11]_3 (dffr_IDEX_Imm_n_100),
        .\q_reg[12]_0 (dffr_IDEX_Imm_n_23),
        .\q_reg[12]_1 (dffr_IDEX_Imm_n_78),
        .\q_reg[12]_2 ({\EX/ALU/B_adder0 [12:11],\EX/ALU/B_adder0 [5]}),
        .\q_reg[12]_3 (dffr_IDEX_Sa_n_4),
        .\q_reg[13]_0 (dffr_IDEX_Imm_n_22),
        .\q_reg[13]_1 (dffr_IDEX_Imm_n_86),
        .\q_reg[14]_0 (dffr_IDEX_Imm_n_21),
        .\q_reg[14]_1 (dffr_IDEX_Imm_n_94),
        .\q_reg[15]_0 (dffr_IDEX_Imm_n_20),
        .\q_reg[15]_1 (dffr_IDEX_Imm_n_77),
        .\q_reg[15]_2 (dffr_IDEX_Imm_n_84),
        .\q_reg[15]_3 (dffr_IDEX_Imm_n_98),
        .\q_reg[15]_4 (dffr_IDEX_Imm_n_104),
        .\q_reg[15]_5 (dffr_IDEX_Imm_n_105),
        .\q_reg[15]_6 (dffr_IDEX_Sa_n_44),
        .\q_reg[15]_7 (dffr_IDEX_Sa_n_45),
        .\q_reg[16] ({\EX/ALU/p_0_in [12:11],\EX/ALU/p_0_in [5]}),
        .\q_reg[16]_0 (dffr_IDEX_Imm_n_58),
        .\q_reg[16]_1 (dffr_IDEX_Imm_n_63),
        .\q_reg[17] (dffr_IDEX_Imm_n_62),
        .\q_reg[17]_0 (dffr_IDEX_Imm_n_65),
        .\q_reg[18] (dffr_IDEX_Imm_n_61),
        .\q_reg[18]_0 (dffr_IDEX_Imm_n_68),
        .\q_reg[18]_1 (dffr_IDEX_Imm_n_103),
        .\q_reg[18]_2 (dffr_IDEX_Imm_n_106),
        .\q_reg[19] (dffr_IDEX_Imm_n_60),
        .\q_reg[19]_0 (dffr_IDEX_Imm_n_72),
        .\q_reg[19]_1 (dffr_IDEX_Imm_n_107),
        .\q_reg[1]_0 (dffr_IDEX_Imm_n_55),
        .\q_reg[1]_1 (dffr_IDEX_Sa_n_57),
        .\q_reg[1]_10 (dffr_IDEX_Sa_n_56),
        .\q_reg[1]_11 (dffr_IDEX_Sa_n_36),
        .\q_reg[1]_12 (dffr_IDEX_Sa_n_43),
        .\q_reg[1]_2 (dffr_IDEX_Sa_n_59),
        .\q_reg[1]_3 (dffr_IDEX_Sa_n_58),
        .\q_reg[1]_4 (dffr_IDEX_Sa_n_61),
        .\q_reg[1]_5 (dffr_IDEX_Sa_n_60),
        .\q_reg[1]_6 (dffr_IDEX_Sa_n_10),
        .\q_reg[1]_7 (dffr_IDEX_Sa_n_55),
        .\q_reg[1]_8 (dffr_IDEX_Sa_n_63),
        .\q_reg[1]_9 (dffr_IDEX_Sa_n_62),
        .\q_reg[20] (dffr_IDEX_Imm_n_80),
        .\q_reg[20]_0 (dffr_IDEX_Imm_n_82),
        .\q_reg[20]_1 (dffr_IDEX_Imm_n_108),
        .\q_reg[20]_2 (dffr_IDEX_Imm_n_118),
        .\q_reg[20]_3 (dffr_IDEX_Imm_n_120),
        .\q_reg[21] (dffr_IDEX_Imm_n_88),
        .\q_reg[22] (dffr_IDEX_Imm_n_95),
        .\q_reg[23] (dffr_IDEX_Imm_n_99),
        .\q_reg[23]_0 (dffr_IDEX_Imm_n_119),
        .\q_reg[24] (dffr_IDEX_Imm_n_59),
        .\q_reg[25] (dffr_IDEX_Imm_n_66),
        .\q_reg[26] (dffr_IDEX_Imm_n_69),
        .\q_reg[26]_0 (dffr_IDEX_Imm_n_75),
        .\q_reg[26]_1 (dffr_IDEX_Imm_n_90),
        .\q_reg[26]_2 (dffr_IDEX_Imm_n_114),
        .\q_reg[27] (dffr_IDEX_Imm_n_74),
        .\q_reg[28] (dffr_IDEX_Imm_n_81),
        .\q_reg[29] (dffr_IDEX_Imm_n_89),
        .\q_reg[29]_0 (dffr_IDEX_Imm_n_109),
        .\q_reg[2]_0 (dffr_IDEX_Imm_n_54),
        .\q_reg[2]_1 (dffr_IDEX_EX_n_55),
        .\q_reg[2]_2 (dffr_IDEX_Sa_n_7),
        .\q_reg[2]_3 (dffr_IDEX_EX_n_38),
        .\q_reg[2]_4 (dffr_IDEX_Sa_n_13),
        .\q_reg[2]_5 (dffr_IDEX_Sa_n_18),
        .\q_reg[2]_6 (dffr_IDEX_EX_n_43),
        .\q_reg[2]_7 (dffr_IDEX_EX_n_42),
        .\q_reg[2]_8 (dffr_IDEX_EX_n_39),
        .\q_reg[30] (dffr_IDEX_Imm_n_93),
        .\q_reg[30]_0 (dffr_IDEX_Imm_n_110),
        .\q_reg[31] ({\EX/ALU/B_adder0 [31],\EX/ALU/B_adder0 [28],\EX/ALU/B_adder0 [24],\EX/ALU/B_adder0 [20],\EX/ALU/B_adder0 [16],\EX/ALU/B_adder0 [4],\EX/ALU/B_adder0 [1]}),
        .\q_reg[31]_0 (dffr_IDEX_Imm_n_57),
        .\q_reg[31]_1 (dffr_IDEX_Imm_n_64),
        .\q_reg[31]_2 (dffr_IDEX_Imm_n_67),
        .\q_reg[31]_3 (dffr_IDEX_Imm_n_71),
        .\q_reg[31]_4 (dffr_IDEX_Imm_n_79),
        .\q_reg[31]_5 (dffr_IDEX_Imm_n_87),
        .\q_reg[31]_6 (dffr_IDEX_Imm_n_97),
        .\q_reg[31]_7 (dffr_IDEX_Imm_n_112),
        .\q_reg[31]_8 (dffr_IDEX_Imm_n_113),
        .\q_reg[3]_0 (dffr_IDEX_Imm_n_53),
        .\q_reg[3]_1 ({ALUCode_ex[0],ALUSrcB_ex,dffr_IDEX_EX_n_37}),
        .\q_reg[3]_2 (dffr_IDEX_Sa_n_11),
        .\q_reg[3]_3 (dffr_IDEX_Sa_n_33),
        .\q_reg[3]_4 (dffr_IDEX_EX_n_44),
        .\q_reg[4]_0 (Imm_ex),
        .\q_reg[4]_1 (RegWriteAddr_ex),
        .\q_reg[4]_2 (dffr_IDEX_Imm_n_31),
        .\q_reg[4]_3 ({\NLW_dffr_IDEX_Imm_q_reg[4]_3_UNCONNECTED [4],RtAddr_ex[3:0]}),
        .\q_reg[4]_4 (dffr_IDEX_Sa_n_12),
        .\q_reg[4]_5 (dffr_IDEX_Sa_n_35),
        .\q_reg[4]_6 (dffr_IDEX_EX_n_54),
        .\q_reg[5]_0 (\EX/ALU/sum [5:2]),
        .\q_reg[5]_1 (dffr_IDEX_Imm_n_85),
        .\q_reg[5]_2 (dffr_IDEX_Imm_n_101),
        .\q_reg[5]_3 (dffr_IDEX_Imm_n_115),
        .\q_reg[7] (dffr_IDEX_Imm_n_116),
        .\q_reg[8] (dffr_IDEX_Imm_n_102),
        .\q_reg[9] (dffr_IDEX_Imm_n_117));
  dffr_0 dffr_IDEX_M
       (.D(dffr_IDEX_M_n_1),
        .MemRead_id(MemRead_id),
        .MemWrite_id(MemWrite_id),
        .SR(stall_reset),
        .clk_out1(clk_out),
        .\q_reg[0]_0 (dffr_IDEX_M_n_0));
  dffr__parameterized4 dffr_IDEX_RsAddr
       (.Q({NLW_dffr_IDEX_RsAddr_Q_UNCONNECTED[4],RsAddr_ex[3:0]}),
        .SR(stall_reset),
        .clk_out1(clk_out),
        .\q_reg[25] ({\NLW_dffr_IDEX_RsAddr_q_reg[25]_UNCONNECTED [4],RsAddr_id[3:0]}));
  dffr__parameterized6 dffr_IDEX_RsData
       (.Q(RsData_ex),
        .RsData_id(RsData_id),
        .SR(stall_reset),
        .clk_out1(clk_out));
  dffr__parameterized5 dffr_IDEX_RtAddr
       (.Q({NLW_dffr_IDEX_RtAddr_Q_UNCONNECTED[4],RtAddr_ex[3:0]}),
        .SR(stall_reset),
        .clk_out1(clk_out),
        .\q_reg[20] ({\NLW_dffr_IDEX_RtAddr_q_reg[20]_UNCONNECTED [4],RtAddr_id[3:0]}));
  dffr__parameterized7 dffr_IDEX_RtData
       (.D(RtData_id),
        .Q(RtData_ex),
        .SR(stall_reset),
        .clk_out1(clk_out));
  dffr__parameterized1 dffr_IDEX_Sa
       (.B_adder1__3(\EX/ALU/B_adder1__3 ),
        .B_adder__95(\EX/ALU/B_adder__95 [10:6]),
        .CO(dffr_IDEX_Imm_n_7),
        .D(ALUResult_mem[4:0]),
        .ForwardA_1(\EX/ForwardA_1 ),
        .MemWriteData_ex(MemWriteData_ex[10:6]),
        .Q(Sa_id),
        .SR(stall_reset),
        .clk_out1(clk_out),
        .\q_reg[0]_0 (dffr_IDEX_Sa_n_6),
        .\q_reg[0]_1 (dffr_IDEX_Sa_n_7),
        .\q_reg[0]_2 (\EX/ALU/B_adder0 [1]),
        .\q_reg[0]_3 (dffr_IDEX_Imm_n_56),
        .\q_reg[0]_4 (dffr_MEMWB_ALUResult_n_65),
        .\q_reg[0]_5 (dffr_IDEX_Imm_n_57),
        .\q_reg[10] (dffr_IDEX_Sa_n_19),
        .\q_reg[10]_0 (dffr_IDEX_Sa_n_35),
        .\q_reg[11] (dffr_IDEX_Sa_n_60),
        .\q_reg[11]_0 (dffr_IDEX_Imm_n_73),
        .\q_reg[11]_1 (dffr_IDEX_Imm_n_75),
        .\q_reg[12] ({\EX/ALU/B_adder0 [12:11],\EX/ALU/B_adder0 [8],\EX/ALU/B_adder0 [5]}),
        .\q_reg[12]_0 (dffr_IDEX_Sa_n_61),
        .\q_reg[12]_1 ({\EX/ALU/p_0_in [12:11],\EX/ALU/p_0_in [5]}),
        .\q_reg[12]_2 (dffr_IDEX_Imm_n_78),
        .\q_reg[12]_3 (dffr_IDEX_Imm_n_82),
        .\q_reg[13] (dffr_IDEX_Sa_n_58),
        .\q_reg[13]_0 (dffr_IDEX_Imm_n_86),
        .\q_reg[13]_1 (dffr_IDEX_Imm_n_90),
        .\q_reg[14] (dffr_IDEX_Sa_n_59),
        .\q_reg[14]_0 (dffr_IDEX_Imm_n_94),
        .\q_reg[15] (dffr_IDEX_Sa_n_57),
        .\q_reg[15]_0 (dffr_IDEX_Imm_n_110),
        .\q_reg[15]_1 (dffr_IDEX_Imm_n_58),
        .\q_reg[15]_10 (dffr_IDEX_Imm_n_66),
        .\q_reg[15]_11 (dffr_IDEX_Imm_n_69),
        .\q_reg[15]_12 (dffr_IDEX_EX_n_53),
        .\q_reg[15]_13 (dffr_IDEX_Imm_n_120),
        .\q_reg[15]_14 (dffr_IDEX_EX_n_50),
        .\q_reg[15]_15 (dffr_IDEX_Imm_n_119),
        .\q_reg[15]_16 (dffr_IDEX_Imm_n_81),
        .\q_reg[15]_17 (dffr_IDEX_Imm_n_89),
        .\q_reg[15]_18 (dffr_IDEX_Imm_n_74),
        .\q_reg[15]_19 (dffr_IDEX_Imm_n_109),
        .\q_reg[15]_2 (dffr_IDEX_Imm_n_65),
        .\q_reg[15]_20 (dffr_IDEX_Imm_n_105),
        .\q_reg[15]_21 (dffr_IDEX_Imm_n_83),
        .\q_reg[15]_22 (dffr_IDEX_Imm_n_92),
        .\q_reg[15]_23 (dffr_IDEX_Imm_n_70),
        .\q_reg[15]_24 (dffr_IDEX_Imm_n_91),
        .\q_reg[15]_25 (dffr_IDEX_Imm_n_96),
        .\q_reg[15]_26 (dffr_IDEX_Imm_n_76),
        .\q_reg[15]_27 (dffr_IDEX_Imm_n_101),
        .\q_reg[15]_28 (dffr_IDEX_Imm_n_102),
        .\q_reg[15]_29 (dffr_IDEX_Imm_n_100),
        .\q_reg[15]_3 (dffr_IDEX_Imm_n_68),
        .\q_reg[15]_30 (dffr_IDEX_Imm_n_107),
        .\q_reg[15]_31 (dffr_IDEX_Imm_n_108),
        .\q_reg[15]_32 (dffr_IDEX_Imm_n_106),
        .\q_reg[15]_4 (dffr_IDEX_Imm_n_98),
        .\q_reg[15]_5 (dffr_IDEX_Imm_n_95),
        .\q_reg[15]_6 (dffr_IDEX_Imm_n_93),
        .\q_reg[15]_7 (dffr_IDEX_Imm_n_99),
        .\q_reg[15]_8 (dffr_IDEX_Imm_n_97),
        .\q_reg[15]_9 (dffr_IDEX_Imm_n_59),
        .\q_reg[16] (dffr_IDEX_Sa_n_4),
        .\q_reg[16]_0 (dffr_IDEX_Sa_n_56),
        .\q_reg[17] (dffr_IDEX_Sa_n_62),
        .\q_reg[18] (dffr_IDEX_Sa_n_63),
        .\q_reg[19] (dffr_IDEX_Sa_n_55),
        .\q_reg[1]_0 (dffr_IDEX_Sa_n_5),
        .\q_reg[1]_1 (dffr_IDEX_Sa_n_10),
        .\q_reg[1]_2 (\EX/ALU/sum [1]),
        .\q_reg[1]_3 (dffr_IDEX_Imm_n_55),
        .\q_reg[1]_4 (dffr_IDEX_Imm_n_118),
        .\q_reg[1]_5 (dffr_IDEX_EX_n_40),
        .\q_reg[1]_6 (dffr_MEMWB_ALUResult_n_66),
        .\q_reg[1]_7 (dffr_IDEX_Imm_n_64),
        .\q_reg[20] (dffr_IDEX_Sa_n_32),
        .\q_reg[21] (dffr_IDEX_Sa_n_31),
        .\q_reg[22] (dffr_IDEX_Sa_n_30),
        .\q_reg[23] (dffr_IDEX_Sa_n_29),
        .\q_reg[23]_0 (dffr_IDEX_Sa_n_44),
        .\q_reg[24] (dffr_IDEX_Sa_n_28),
        .\q_reg[25] (dffr_IDEX_Sa_n_27),
        .\q_reg[25]_0 ({\EX/ALU/data11 [25:20],\EX/ALU/data11 [15]}),
        .\q_reg[26] (dffr_IDEX_Sa_n_54),
        .\q_reg[27] (dffr_IDEX_Sa_n_26),
        .\q_reg[28] (dffr_IDEX_Sa_n_25),
        .\q_reg[29] (dffr_IDEX_Sa_n_24),
        .\q_reg[2]_0 (dffr_IDEX_Sa_n_9),
        .\q_reg[2]_1 (dffr_IDEX_Sa_n_13),
        .\q_reg[2]_10 (dffr_IDEX_Imm_n_113),
        .\q_reg[2]_11 (dffr_IDEX_Imm_n_112),
        .\q_reg[2]_12 (dffr_IDEX_Imm_n_114),
        .\q_reg[2]_13 (dffr_IDEX_EX_n_45),
        .\q_reg[2]_14 (dffr_MEMWB_ALUResult_n_67),
        .\q_reg[2]_15 (dffr_IDEX_Imm_n_67),
        .\q_reg[2]_2 (dffr_IDEX_Sa_n_45),
        .\q_reg[2]_3 (dffr_IDEX_Imm_n_19),
        .\q_reg[2]_4 (dffr_IDEX_EX_n_55),
        .\q_reg[2]_5 (dffr_IDEX_Imm_n_54),
        .\q_reg[2]_6 (dffr_IDEX_Imm_n_116),
        .\q_reg[2]_7 (dffr_IDEX_Imm_n_115),
        .\q_reg[2]_8 (dffr_IDEX_Imm_n_25),
        .\q_reg[2]_9 (dffr_IDEX_Imm_n_117),
        .\q_reg[30] (dffr_IDEX_Sa_n_53),
        .\q_reg[31] (dffr_IDEX_Sa_n_23),
        .\q_reg[31]_0 (dffr_IDEX_Sa_n_42),
        .\q_reg[31]_1 (dffr_IDEX_Sa_n_43),
        .\q_reg[3]_0 (dffr_IDEX_Sa_n_8),
        .\q_reg[3]_1 (dffr_IDEX_Sa_n_11),
        .\q_reg[3]_2 (dffr_IDEX_Imm_n_53),
        .\q_reg[3]_3 (dffr_IDEX_Imm_n_104),
        .\q_reg[3]_4 (dffr_MEMWB_ALUResult_n_68),
        .\q_reg[3]_5 (dffr_IDEX_Imm_n_71),
        .\q_reg[4]_0 (dffr_IDEX_Sa_n_12),
        .\q_reg[4]_1 (dffr_IDEX_Sa_n_17),
        .\q_reg[4]_10 (dffr_IDEX_EX_n_51),
        .\q_reg[4]_11 (dffr_IDEX_EX_n_52),
        .\q_reg[4]_2 (dffr_IDEX_Imm_n_31),
        .\q_reg[4]_3 (dffr_IDEX_Imm_n_77),
        .\q_reg[4]_4 (dffr_MEMWB_ALUResult_n_69),
        .\q_reg[4]_5 (dffr_IDEX_Imm_n_79),
        .\q_reg[4]_6 (dffr_IDEX_EX_n_46),
        .\q_reg[4]_7 (dffr_IDEX_EX_n_47),
        .\q_reg[4]_8 (dffr_IDEX_EX_n_48),
        .\q_reg[4]_9 (dffr_IDEX_EX_n_49),
        .\q_reg[5] (dffr_IDEX_Sa_n_16),
        .\q_reg[5]_0 ({ALUCode_ex,ALUSrcA_ex,ALUSrcB_ex}),
        .\q_reg[5]_1 (dffr_IDEX_Imm_n_85),
        .\q_reg[5]_2 (dffr_IDEX_Imm_n_84),
        .\q_reg[5]_3 (dffr_IDEX_Imm_n_87),
        .\q_reg[6] (dffr_IDEX_Sa_n_15),
        .\q_reg[6]_0 (dffr_IDEX_Sa_n_34),
        .\q_reg[7] (dffr_IDEX_Sa_n_14),
        .\q_reg[7]_0 (dffr_IDEX_Sa_n_36),
        .\q_reg[8] (dffr_IDEX_Sa_n_18),
        .\q_reg[8]_0 (dffr_IDEX_Sa_n_21),
        .\q_reg[9] (dffr_IDEX_Sa_n_20),
        .\q_reg[9]_0 (dffr_IDEX_Sa_n_33));
  dffr_1 dffr_IDEX_WB
       (.D(dffr_IDEX_WB_n_0),
        .RegWrite_id(RegWrite_id),
        .SR(stall_reset),
        .clk_out1(clk_out));
  dffr__parameterized13 dffr_MEMWB_ALUResult
       (.D({RtData_id[31:12],RtData_id[10:0]}),
        .ForwardA_0(\EX/ForwardA_0 ),
        .Q(dffr_MEMWB_WB_n_0),
        .RegWriteData_wb(RegWriteData_wb),
        .RsData0(RsData0),
        .RsData_id(RsData_id),
        .RtData0({RtData0[31:12],RtData0[10:0]}),
        .clk_out1(clk_out),
        .\q_reg[0]_0 (dffr_MEMWB_ALUResult_n_0),
        .\q_reg[0]_1 (dffr_MEMWB_ALUResult_n_65),
        .\q_reg[0]_2 (ID_n_0),
        .\q_reg[11]_0 (dffr_MEMWB_ALUResult_n_64),
        .\q_reg[11]_1 (dffre_IFID_Instruction_n_44),
        .\q_reg[17]_0 (dffre_IFID_Instruction_n_43),
        .\q_reg[1]_0 (dffr_MEMWB_ALUResult_n_66),
        .\q_reg[20]_0 (dffr_MEMWB_RegWriteAddr_n_1),
        .\q_reg[25]_0 (dffr_MEMWB_RegWriteAddr_n_2),
        .\q_reg[25]_1 (dffre_IFID_Instruction_n_42),
        .\q_reg[26]_0 (dffre_IFID_Instruction_n_40),
        .\q_reg[28]_0 (dffre_IFID_Instruction_n_41),
        .\q_reg[29]_0 (ALUCode_id[1]),
        .\q_reg[2]_0 (dffr_MEMWB_ALUResult_n_67),
        .\q_reg[31]_0 (ALUResult_mem),
        .\q_reg[3]_0 (dffr_MEMWB_ALUResult_n_68),
        .\q_reg[4]_0 (dffr_MEMWB_ALUResult_n_69),
        .\q_reg[4]_1 (RsData_ex[4:0]),
        .reset(dffr_EXMEM_ALUResult_n_33),
        .spo(MemDout_wb));
  dffr__parameterized12 dffr_MEMWB_RegWriteAddr
       (.D(RtData_id[11]),
        .ForwardA_0(\EX/ForwardA_0 ),
        .ForwardB_00(\EX/ForwardB_00 ),
        .Q({dffr_MEMWB_WB_n_0,dffr_MEMWB_WB_n_1}),
        .RtData0(RtData0[11]),
        .clk_out1(clk_out),
        .p_3_in(\EX/p_3_in ),
        .\q_reg[0]_0 (dffr_MEMWB_RegWriteAddr_n_2),
        .\q_reg[0]_1 (RegWriteAddr_wb),
        .\q_reg[11] (dffr_MEMWB_RegWriteAddr_n_1),
        .\q_reg[11]_0 (dffr_MEMWB_ALUResult_n_64),
        .\q_reg[16] (dffre_IFID_Instruction_n_48),
        .\q_reg[17] (dffre_IFID_Instruction_n_43),
        .\q_reg[21] (dffre_IFID_Instruction_n_46),
        .\q_reg[25] ({\NLW_dffr_MEMWB_RegWriteAddr_q_reg[25]_UNCONNECTED [3],RsAddr_id[3],\NLW_dffr_MEMWB_RegWriteAddr_q_reg[25]_UNCONNECTED [1],RtAddr_id[3]}),
        .\q_reg[3]_0 (dffr_EXMEM_RegWriteAddr_n_38),
        .\q_reg[4]_0 ({\NLW_dffr_MEMWB_RegWriteAddr_q_reg[4]_0_UNCONNECTED [4],RsAddr_ex[3:0]}),
        .\q_reg[4]_1 ({\NLW_dffr_MEMWB_RegWriteAddr_q_reg[4]_1_UNCONNECTED [4],RtAddr_ex[3:0]}),
        .\q_reg[4]_2 (RegWriteAddr_mem),
        .reset(dffr_EXMEM_ALUResult_n_33),
        .spo(MemDout_wb[11]));
  dffr_2 dffr_MEMWB_WB
       (.D({dffr_EXMEM_WB_n_0,dffr_EXMEM_WB_n_1}),
        .Q({dffr_MEMWB_WB_n_0,dffr_MEMWB_WB_n_1}),
        .clk_out1(clk_out),
        .reset(dffr_EXMEM_ALUResult_n_33));
  dffre dffre_IFID_Instruction
       (.D(NextPC_if[7:3]),
        .E(PC_IFWrite),
        .MemRead_id(MemRead_id),
        .MemWrite_id(MemWrite_id),
        .Q({RsAddr_id,RtAddr_id,RdAddr_id,Sa_id,Imm_id}),
        .RegWrite_id(RegWrite_id),
        .RsData_id(RsData_id[7:2]),
        .RtData0(RtData0[11]),
        .SR(stall_reset),
        .\bbstub_spo[31] ({Instruction_if[31],\NLW_dffre_IFID_Instruction_bbstub_spo[31]_UNCONNECTED [30],Instruction_if[29:26],\NLW_dffre_IFID_Instruction_bbstub_spo[31]_UNCONNECTED [25],Instruction_if[24:0]}),
        .clk_out1(clk_out),
        .locked(locked),
        .\q_reg[0]_0 (dffre_IFID_Instruction_n_42),
        .\q_reg[0]_1 (dffre_IFID_Instruction_n_44),
        .\q_reg[0]_2 (dffre_IFID_Instruction_n_46),
        .\q_reg[0]_3 (dffre_IFID_Instruction_n_51),
        .\q_reg[0]_4 (dffr_IDEX_M_n_1),
        .\q_reg[0]_5 (dffr_IDEX_EX_n_37),
        .\q_reg[11]_0 (dffre_IFID_Instruction_n_43),
        .\q_reg[11]_1 (dffre_IFID_Instruction_n_48),
        .\q_reg[11]_2 (dffr_MEMWB_ALUResult_n_64),
        .\q_reg[14]_0 (RegWriteAddr_ex[3:0]),
        .\q_reg[15]_0 (dffr_IDEX_Imm_n_1),
        .\q_reg[15]_1 (Imm_ex),
        .\q_reg[1]_0 (dffr_MEMWB_WB_n_0),
        .\q_reg[20]_0 (dffr_MEMWB_RegWriteAddr_n_1),
        .\q_reg[2]_0 (dffre_IFID_Instruction_n_52),
        .\q_reg[2]_1 (IF_n_32),
        .\q_reg[2]_2 (RegWriteAddr_wb[2:0]),
        .\q_reg[31]_0 (dffr_MEMWB_ALUResult_n_0),
        .\q_reg[3]_0 (dffre_IFID_Instruction_n_40),
        .\q_reg[3]_1 (dffre_IFID_NextPC_n_8),
        .\q_reg[4]_0 (\NLW_dffre_IFID_Instruction_q_reg[4]_0_UNCONNECTED [0]),
        .\q_reg[5]_0 (dffre_IFID_Instruction_n_41),
        .\q_reg[5]_1 ({BranchAddr[5],BranchAddr[3]}),
        .\q_reg[7]_0 ({dffre_IFID_Instruction_n_0,dffre_IFID_Instruction_n_1,dffre_IFID_Instruction_n_2,dffre_IFID_Instruction_n_3,dffre_IFID_Instruction_n_4,dffre_IFID_Instruction_n_5}),
        .\q_reg[7]_1 ({ALUCode_id,ALUSrcA_id,ALUSrcB_id,RegDst_id}),
        .\q_reg[7]_2 (NextPC_id),
        .reset_IBUF(reset_IBUF),
        .spo(MemDout_wb[11]));
  dffre_3 dffre_IFID_NextPC
       (.D(NextPC_if),
        .E(PC_IFWrite),
        .Q(NextPC_id),
        .SR(dffre_IFID_Instruction_n_51),
        .clk_out1(clk_out),
        .\q_reg[3]_0 (Imm_id[3:0]),
        .\q_reg[5]_0 ({BranchAddr[5],BranchAddr[3]}),
        .\q_reg[5]_1 (dffre_IFID_NextPC_n_8));
  OBUF \o_seg_OBUF[0]_inst 
       (.I(o_seg_OBUF[0]),
        .O(o_seg[0]));
  OBUF \o_seg_OBUF[1]_inst 
       (.I(o_seg_OBUF[1]),
        .O(o_seg[1]));
  OBUF \o_seg_OBUF[2]_inst 
       (.I(o_seg_OBUF[2]),
        .O(o_seg[2]));
  OBUF \o_seg_OBUF[3]_inst 
       (.I(o_seg_OBUF[3]),
        .O(o_seg[3]));
  OBUF \o_seg_OBUF[4]_inst 
       (.I(o_seg_OBUF[4]),
        .O(o_seg[4]));
  OBUF \o_seg_OBUF[5]_inst 
       (.I(o_seg_OBUF[5]),
        .O(o_seg[5]));
  OBUF \o_seg_OBUF[6]_inst 
       (.I(o_seg_OBUF[6]),
        .O(o_seg[6]));
  OBUF \o_seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(o_seg[7]));
  OBUF \o_sel_OBUF[0]_inst 
       (.I(o_sel_OBUF[0]),
        .O(o_sel[0]));
  OBUF \o_sel_OBUF[1]_inst 
       (.I(o_sel_OBUF[1]),
        .O(o_sel[1]));
  OBUF \o_sel_OBUF[2]_inst 
       (.I(o_sel_OBUF[2]),
        .O(o_sel[2]));
  OBUF \o_sel_OBUF[3]_inst 
       (.I(o_sel_OBUF[3]),
        .O(o_sel[3]));
  OBUF \o_sel_OBUF[4]_inst 
       (.I(o_sel_OBUF[4]),
        .O(o_sel[4]));
  OBUF \o_sel_OBUF[5]_inst 
       (.I(o_sel_OBUF[5]),
        .O(o_sel[5]));
  OBUF \o_sel_OBUF[6]_inst 
       (.I(o_sel_OBUF[6]),
        .O(o_sel[6]));
  OBUF \o_sel_OBUF[7]_inst 
       (.I(o_sel_OBUF[7]),
        .O(o_sel[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  seg seg7
       (.D(MemDout_wb),
        .E(cs),
        .Q(o_seg_OBUF),
        .clk_out1(clk_out),
        .locked(locked),
        .o_sel_OBUF(o_sel_OBUF));
endmodule

module Registers
   (\q_reg[0] ,
    RsData0,
    RtData0,
    RegWriteData_wb,
    \q_reg[25] ,
    \q_reg[25]_0 ,
    clk_out1,
    Q,
    \q_reg[25]_1 ,
    \q_reg[4] );
  output \q_reg[0] ;
  output [31:0]RsData0;
  output [31:0]RtData0;
  input [31:0]RegWriteData_wb;
  input \q_reg[25] ;
  input \q_reg[25]_0 ;
  input clk_out1;
  input [0:0]Q;
  input [9:0]\q_reg[25]_1 ;
  input [4:0]\q_reg[4] ;

  wire [0:0]Q;
  wire [31:0]RegWriteData_wb;
  wire [31:0]RsData0;
  wire [31:0]RtData0;
  wire clk_out1;
  wire \q_reg[0] ;
  wire \q_reg[25] ;
  wire \q_reg[25]_0 ;
  wire [9:0]\q_reg[25]_1 ;
  wire [4:0]\q_reg[4] ;
  wire [1:0]NLW_regs_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF0F0ACCCC0F0A)) 
    \PC_in_reg[7]_i_16 
       (.I0(RsData0[23]),
        .I1(RegWriteData_wb[23]),
        .I2(\q_reg[25] ),
        .I3(RsData0[20]),
        .I4(\q_reg[25]_0 ),
        .I5(RegWriteData_wb[20]),
        .O(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ regs_reg_r1_0_31_0_5
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[1:0]),
        .DIB(RegWriteData_wb[3:2]),
        .DIC(RegWriteData_wb[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[1:0]),
        .DOB(RsData0[3:2]),
        .DOC(RsData0[5:4]),
        .DOD(NLW_regs_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD1 regs_reg_r1_0_31_12_17
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[13:12]),
        .DIB(RegWriteData_wb[15:14]),
        .DIC(RegWriteData_wb[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[13:12]),
        .DOB(RsData0[15:14]),
        .DOC(RsData0[17:16]),
        .DOD(NLW_regs_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD2 regs_reg_r1_0_31_18_23
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[19:18]),
        .DIB(RegWriteData_wb[21:20]),
        .DIC(RegWriteData_wb[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[19:18]),
        .DOB(RsData0[21:20]),
        .DOC(RsData0[23:22]),
        .DOD(NLW_regs_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD3 regs_reg_r1_0_31_24_29
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[25:24]),
        .DIB(RegWriteData_wb[27:26]),
        .DIC(RegWriteData_wb[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[25:24]),
        .DOB(RsData0[27:26]),
        .DOC(RsData0[29:28]),
        .DOD(NLW_regs_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD4 regs_reg_r1_0_31_30_31
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[31:30]),
        .DOB(NLW_regs_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regs_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD5 regs_reg_r1_0_31_6_11
       (.ADDRA(\q_reg[25]_1 [9:5]),
        .ADDRB(\q_reg[25]_1 [9:5]),
        .ADDRC(\q_reg[25]_1 [9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[7:6]),
        .DIB(RegWriteData_wb[9:8]),
        .DIC(RegWriteData_wb[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RsData0[7:6]),
        .DOB(RsData0[9:8]),
        .DOC(RsData0[11:10]),
        .DOD(NLW_regs_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD6 regs_reg_r2_0_31_0_5
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[1:0]),
        .DIB(RegWriteData_wb[3:2]),
        .DIC(RegWriteData_wb[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[1:0]),
        .DOB(RtData0[3:2]),
        .DOC(RtData0[5:4]),
        .DOD(NLW_regs_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD7 regs_reg_r2_0_31_12_17
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[13:12]),
        .DIB(RegWriteData_wb[15:14]),
        .DIC(RegWriteData_wb[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[13:12]),
        .DOB(RtData0[15:14]),
        .DOC(RtData0[17:16]),
        .DOD(NLW_regs_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD8 regs_reg_r2_0_31_18_23
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[19:18]),
        .DIB(RegWriteData_wb[21:20]),
        .DIC(RegWriteData_wb[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[19:18]),
        .DOB(RtData0[21:20]),
        .DOC(RtData0[23:22]),
        .DOD(NLW_regs_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD9 regs_reg_r2_0_31_24_29
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[25:24]),
        .DIB(RegWriteData_wb[27:26]),
        .DIC(RegWriteData_wb[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[25:24]),
        .DOB(RtData0[27:26]),
        .DOC(RtData0[29:28]),
        .DOD(NLW_regs_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD10 regs_reg_r2_0_31_30_31
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[31:30]),
        .DOB(NLW_regs_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regs_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD11 regs_reg_r2_0_31_6_11
       (.ADDRA(\q_reg[25]_1 [4:0]),
        .ADDRB(\q_reg[25]_1 [4:0]),
        .ADDRC(\q_reg[25]_1 [4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(RegWriteData_wb[7:6]),
        .DIB(RegWriteData_wb[9:8]),
        .DIC(RegWriteData_wb[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RtData0[7:6]),
        .DOB(RtData0[9:8]),
        .DOC(RtData0[11:10]),
        .DOD(NLW_regs_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(Q));
endmodule

(* ORIG_REF_NAME = "clk_div_clk_wiz" *) 
module clk_div_clk_div_clk_wiz
   (clk_in1,
    clk_out1,
    reset,
    locked);
  input clk_in1;
  output clk_out1;
  input reset;
  output locked;

  wire clk_in1;
  wire clk_in1_clk_div;
  wire clk_out1;
  wire clk_out1_clk_div;
  wire clkfbout_buf_clk_div;
  wire clkfbout_clk_div;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_div),
        .O(clkfbout_buf_clk_div));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_div));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_div),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_div),
        .CLKFBOUT(clkfbout_clk_div),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_div),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_div),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module dffr
   (Q,
    reset,
    D,
    clk_out1);
  output [1:0]Q;
  input reset;
  input [1:0]D;
  input clk_out1;

  wire [1:0]D;
  wire [1:0]Q;
  wire clk_out1;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr_0
   (\q_reg[0]_0 ,
    D,
    SR,
    MemWrite_id,
    clk_out1,
    MemRead_id);
  output \q_reg[0]_0 ;
  output [0:0]D;
  input [0:0]SR;
  input MemWrite_id;
  input clk_out1;
  input MemRead_id;

  wire [0:0]D;
  wire MemRead_id;
  wire MemWrite_id;
  wire [0:0]SR;
  wire clk_out1;
  wire \q_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(MemRead_id),
        .Q(D),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(MemWrite_id),
        .Q(\q_reg[0]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr_1
   (D,
    SR,
    RegWrite_id,
    clk_out1);
  output [0:0]D;
  input [0:0]SR;
  input RegWrite_id;
  input clk_out1;

  wire [0:0]D;
  wire RegWrite_id;
  wire [0:0]SR;
  wire clk_out1;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RegWrite_id),
        .Q(D),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr_2
   (Q,
    reset,
    D,
    clk_out1);
  output [1:0]Q;
  input reset;
  input [1:0]D;
  input clk_out1;

  wire [1:0]D;
  wire [1:0]Q;
  wire clk_out1;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized0
   (D,
    Q,
    \q_reg[5]_0 ,
    \q_reg[31] ,
    \q_reg[14] ,
    B_adder1__3,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q_reg[11] ,
    \q_reg[16] ,
    \q_reg[19] ,
    \q_reg[19]_0 ,
    \q_reg[16]_0 ,
    \q_reg[16]_1 ,
    \q_reg[17] ,
    \q_reg[17]_0 ,
    \q_reg[17]_1 ,
    \q_reg[18] ,
    \q_reg[23] ,
    \q_reg[2]_0 ,
    \q_reg[15] ,
    \q_reg[0]_0 ,
    \q_reg[1]_0 ,
    \q_reg[2]_1 ,
    \q_reg[3]_0 ,
    \q_reg[4]_0 ,
    \q_reg[15]_0 ,
    \q_reg[15]_1 ,
    \q_reg[15]_2 ,
    \q_reg[0]_1 ,
    \q_reg[3]_1 ,
    \q_reg[3]_2 ,
    \q_reg[0]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[3]_6 ,
    \q_reg[3]_7 ,
    \q_reg[3]_8 ,
    \q_reg[3]_9 ,
    \q_reg[3]_10 ,
    \q_reg[3]_11 ,
    \q_reg[3]_12 ,
    \q_reg[3]_13 ,
    \q_reg[3]_14 ,
    \q_reg[3]_15 ,
    \q_reg[4]_1 ,
    \q_reg[2]_2 ,
    \q_reg[5]_3 ,
    \q_reg[0]_3 ,
    cio_0,
    B_adder__95,
    \q_reg[1]_1 ,
    \q_reg[2]_3 ,
    B_adder0,
    \q_reg[3]_16 ,
    \q_reg[4]_2 ,
    \q_reg[11]_0 ,
    \q_reg[12] ,
    \q_reg[13] ,
    \q_reg[14]_0 ,
    \q_reg[15]_3 ,
    \q_reg[15]_4 ,
    \q_reg[15]_5 ,
    \q_reg[15]_6 ,
    \q_reg[15]_7 ,
    \q_reg[15]_8 ,
    \q_reg[15]_9 ,
    \q_reg[15]_10 ,
    \q_reg[15]_11 ,
    \q_reg[15]_12 ,
    \q_reg[15]_13 ,
    \q_reg[4]_3 ,
    \q_reg[15]_14 ,
    \q_reg[15]_15 ,
    \q_reg[15]_16 ,
    \q_reg[15]_17 ,
    \q_reg[5]_4 ,
    \q_reg[15]_18 ,
    \q_reg[3]_17 ,
    \q_reg[2]_4 ,
    \q_reg[1]_2 ,
    \q_reg[3]_18 ,
    \q_reg[3]_19 ,
    \q_reg[3]_20 ,
    \q_reg[3]_21 ,
    \q_reg[3]_22 ,
    \q_reg[3]_23 ,
    \q_reg[3]_24 ,
    \q_reg[3]_25 ,
    \q_reg[3]_26 ,
    \q_reg[3]_27 ,
    \q_reg[3]_28 ,
    \q_reg[3]_29 ,
    \q_reg[15]_19 ,
    \q_reg[15]_20 ,
    \q_reg[31]_0 ,
    ForwardA_0,
    RegWriteData_wb,
    ForwardA_1,
    \q_reg[31]_1 ,
    \q_reg[3]_30 ,
    \q_reg[3]_31 ,
    \q_reg[3]_32 ,
    \q_reg[3]_33 ,
    SR,
    \q_reg[0]_4 ,
    clk_out1);
  output [31:0]D;
  output [5:0]Q;
  output \q_reg[5]_0 ;
  output \q_reg[31] ;
  output \q_reg[14] ;
  output B_adder1__3;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  output \q_reg[11] ;
  output \q_reg[16] ;
  output \q_reg[19] ;
  output \q_reg[19]_0 ;
  output \q_reg[16]_0 ;
  output \q_reg[16]_1 ;
  output \q_reg[17] ;
  output \q_reg[17]_0 ;
  output \q_reg[17]_1 ;
  output \q_reg[18] ;
  output \q_reg[23] ;
  output \q_reg[2]_0 ;
  input \q_reg[15] ;
  input \q_reg[0]_0 ;
  input \q_reg[1]_0 ;
  input \q_reg[2]_1 ;
  input \q_reg[3]_0 ;
  input \q_reg[4]_0 ;
  input \q_reg[15]_0 ;
  input \q_reg[15]_1 ;
  input \q_reg[15]_2 ;
  input \q_reg[0]_1 ;
  input \q_reg[3]_1 ;
  input \q_reg[3]_2 ;
  input [6:0]\q_reg[0]_2 ;
  input \q_reg[3]_3 ;
  input \q_reg[3]_4 ;
  input \q_reg[3]_5 ;
  input \q_reg[3]_6 ;
  input \q_reg[3]_7 ;
  input \q_reg[3]_8 ;
  input \q_reg[3]_9 ;
  input \q_reg[3]_10 ;
  input \q_reg[3]_11 ;
  input \q_reg[3]_12 ;
  input \q_reg[3]_13 ;
  input \q_reg[3]_14 ;
  input \q_reg[3]_15 ;
  input \q_reg[4]_1 ;
  input [4:0]\q_reg[2]_2 ;
  input \q_reg[5]_3 ;
  input \q_reg[0]_3 ;
  input cio_0;
  input [25:0]B_adder__95;
  input \q_reg[1]_1 ;
  input \q_reg[2]_3 ;
  input [7:0]B_adder0;
  input \q_reg[3]_16 ;
  input \q_reg[4]_2 ;
  input \q_reg[11]_0 ;
  input \q_reg[12] ;
  input \q_reg[13] ;
  input \q_reg[14]_0 ;
  input \q_reg[15]_3 ;
  input \q_reg[15]_4 ;
  input \q_reg[15]_5 ;
  input \q_reg[15]_6 ;
  input \q_reg[15]_7 ;
  input \q_reg[15]_8 ;
  input \q_reg[15]_9 ;
  input \q_reg[15]_10 ;
  input \q_reg[15]_11 ;
  input \q_reg[15]_12 ;
  input \q_reg[15]_13 ;
  input \q_reg[4]_3 ;
  input \q_reg[15]_14 ;
  input \q_reg[15]_15 ;
  input \q_reg[15]_16 ;
  input \q_reg[15]_17 ;
  input \q_reg[5]_4 ;
  input \q_reg[15]_18 ;
  input \q_reg[3]_17 ;
  input \q_reg[2]_4 ;
  input \q_reg[1]_2 ;
  input \q_reg[3]_18 ;
  input \q_reg[3]_19 ;
  input \q_reg[3]_20 ;
  input \q_reg[3]_21 ;
  input \q_reg[3]_22 ;
  input \q_reg[3]_23 ;
  input \q_reg[3]_24 ;
  input \q_reg[3]_25 ;
  input \q_reg[3]_26 ;
  input \q_reg[3]_27 ;
  input \q_reg[3]_28 ;
  input \q_reg[3]_29 ;
  input \q_reg[15]_19 ;
  input \q_reg[15]_20 ;
  input [26:0]\q_reg[31]_0 ;
  input ForwardA_0;
  input [26:0]RegWriteData_wb;
  input ForwardA_1;
  input [26:0]\q_reg[31]_1 ;
  input \q_reg[3]_30 ;
  input \q_reg[3]_31 ;
  input \q_reg[3]_32 ;
  input \q_reg[3]_33 ;
  input [0:0]SR;
  input [7:0]\q_reg[0]_4 ;
  input clk_out1;

  wire [4:3]ALUCode_ex;
  wire [7:0]B_adder0;
  wire B_adder1__3;
  wire [25:0]B_adder__95;
  wire [31:0]D;
  wire \EX/ALU/adder_32bits_ALU/cio_1 ;
  wire \EX/ALU/adder_32bits_ALU/cio_2 ;
  wire \EX/ALU/adder_32bits_ALU/cio_3 ;
  wire \EX/ALU/adder_32bits_ALU/cio_4 ;
  wire \EX/ALU/adder_32bits_ALU/cio_5 ;
  wire \EX/ALU/adder_32bits_ALU/cio_6 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/co0 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst4/co1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/co0 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst5/co1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/co0 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst6/co1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi_1 ;
  wire [19:2]\EX/ALU/data11 ;
  wire [31:6]\EX/ALU/sum ;
  wire ForwardA_0;
  wire ForwardA_1;
  wire [5:0]Q;
  wire [26:0]RegWriteData_wb;
  wire [0:0]SR;
  wire cio_0;
  wire clk_out1;
  wire \q[0]_i_14_n_0 ;
  wire \q[0]_i_16_n_0 ;
  wire \q[0]_i_17_n_0 ;
  wire \q[0]_i_20_n_0 ;
  wire \q[0]_i_21_n_0 ;
  wire \q[0]_i_22_n_0 ;
  wire \q[0]_i_23_n_0 ;
  wire \q[0]_i_24_n_0 ;
  wire \q[0]_i_25_n_0 ;
  wire \q[0]_i_26_n_0 ;
  wire \q[0]_i_28_n_0 ;
  wire \q[0]_i_29_n_0 ;
  wire \q[0]_i_2__1_n_0 ;
  wire \q[0]_i_30_n_0 ;
  wire \q[0]_i_31_n_0 ;
  wire \q[0]_i_32_n_0 ;
  wire \q[0]_i_33_n_0 ;
  wire \q[0]_i_34_n_0 ;
  wire \q[0]_i_35_n_0 ;
  wire \q[0]_i_36_n_0 ;
  wire \q[0]_i_37_n_0 ;
  wire \q[0]_i_38_n_0 ;
  wire \q[0]_i_39_n_0 ;
  wire \q[0]_i_3_n_0 ;
  wire \q[0]_i_40_n_0 ;
  wire \q[0]_i_41_n_0 ;
  wire \q[0]_i_4_n_0 ;
  wire \q[0]_i_8_n_0 ;
  wire \q[0]_i_9_n_0 ;
  wire \q[10]_i_11_n_0 ;
  wire \q[10]_i_17_n_0 ;
  wire \q[10]_i_18_n_0 ;
  wire \q[10]_i_19_n_0 ;
  wire \q[10]_i_23_n_0 ;
  wire \q[10]_i_24_n_0 ;
  wire \q[10]_i_25_n_0 ;
  wire \q[10]_i_26_n_0 ;
  wire \q[10]_i_27_n_0 ;
  wire \q[10]_i_28_n_0 ;
  wire \q[10]_i_2_n_0 ;
  wire \q[10]_i_3_n_0 ;
  wire \q[10]_i_4_n_0 ;
  wire \q[10]_i_5_n_0 ;
  wire \q[10]_i_7_n_0 ;
  wire \q[10]_i_8_n_0 ;
  wire \q[11]_i_11_n_0 ;
  wire \q[11]_i_12_n_0 ;
  wire \q[11]_i_15_n_0 ;
  wire \q[11]_i_16_n_0 ;
  wire \q[11]_i_17_n_0 ;
  wire \q[11]_i_20_n_0 ;
  wire \q[11]_i_21_n_0 ;
  wire \q[11]_i_22_n_0 ;
  wire \q[11]_i_23_n_0 ;
  wire \q[11]_i_24_n_0 ;
  wire \q[11]_i_25_n_0 ;
  wire \q[11]_i_2_n_0 ;
  wire \q[11]_i_3_n_0 ;
  wire \q[11]_i_4_n_0 ;
  wire \q[11]_i_5_n_0 ;
  wire \q[11]_i_7_n_0 ;
  wire \q[11]_i_8_n_0 ;
  wire \q[12]_i_11_n_0 ;
  wire \q[12]_i_12_n_0 ;
  wire \q[12]_i_15_n_0 ;
  wire \q[12]_i_16_n_0 ;
  wire \q[12]_i_17_n_0 ;
  wire \q[12]_i_20_n_0 ;
  wire \q[12]_i_21_n_0 ;
  wire \q[12]_i_22_n_0 ;
  wire \q[12]_i_23_n_0 ;
  wire \q[12]_i_24_n_0 ;
  wire \q[12]_i_25_n_0 ;
  wire \q[12]_i_2_n_0 ;
  wire \q[12]_i_3_n_0 ;
  wire \q[12]_i_4_n_0 ;
  wire \q[12]_i_5_n_0 ;
  wire \q[12]_i_7_n_0 ;
  wire \q[12]_i_8_n_0 ;
  wire \q[13]_i_11_n_0 ;
  wire \q[13]_i_12_n_0 ;
  wire \q[13]_i_17_n_0 ;
  wire \q[13]_i_18_n_0 ;
  wire \q[13]_i_19_n_0 ;
  wire \q[13]_i_22_n_0 ;
  wire \q[13]_i_23_n_0 ;
  wire \q[13]_i_24_n_0 ;
  wire \q[13]_i_25_n_0 ;
  wire \q[13]_i_26_n_0 ;
  wire \q[13]_i_27_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[13]_i_3_n_0 ;
  wire \q[13]_i_4_n_0 ;
  wire \q[13]_i_5_n_0 ;
  wire \q[13]_i_7_n_0 ;
  wire \q[13]_i_8_n_0 ;
  wire \q[14]_i_11_n_0 ;
  wire \q[14]_i_14_n_0 ;
  wire \q[14]_i_17_n_0 ;
  wire \q[14]_i_18_n_0 ;
  wire \q[14]_i_19_n_0 ;
  wire \q[14]_i_20_n_0 ;
  wire \q[14]_i_21_n_0 ;
  wire \q[14]_i_22_n_0 ;
  wire \q[14]_i_2_n_0 ;
  wire \q[14]_i_3_n_0 ;
  wire \q[14]_i_4_n_0 ;
  wire \q[14]_i_5_n_0 ;
  wire \q[14]_i_7_n_0 ;
  wire \q[14]_i_8_n_0 ;
  wire \q[15]_i_17_n_0 ;
  wire \q[15]_i_27_n_0 ;
  wire \q[15]_i_2_n_0 ;
  wire \q[15]_i_30_n_0 ;
  wire \q[15]_i_31_n_0 ;
  wire \q[15]_i_32_n_0 ;
  wire \q[15]_i_33_n_0 ;
  wire \q[15]_i_34_n_0 ;
  wire \q[15]_i_35_n_0 ;
  wire \q[15]_i_3_n_0 ;
  wire \q[15]_i_4_n_0 ;
  wire \q[15]_i_6_n_0 ;
  wire \q[16]_i_13_n_0 ;
  wire \q[16]_i_21_n_0 ;
  wire \q[16]_i_28_n_0 ;
  wire \q[16]_i_29_n_0 ;
  wire \q[16]_i_2_n_0 ;
  wire \q[16]_i_30_n_0 ;
  wire \q[16]_i_31_n_0 ;
  wire \q[16]_i_32_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[16]_i_4_n_0 ;
  wire \q[17]_i_14_n_0 ;
  wire \q[17]_i_17_n_0 ;
  wire \q[17]_i_20_n_0 ;
  wire \q[17]_i_21_n_0 ;
  wire \q[17]_i_22_n_0 ;
  wire \q[17]_i_23_n_0 ;
  wire \q[17]_i_24_n_0 ;
  wire \q[17]_i_2_n_0 ;
  wire \q[17]_i_3_n_0 ;
  wire \q[17]_i_4_n_0 ;
  wire \q[17]_i_9_n_0 ;
  wire \q[18]_i_18_n_0 ;
  wire \q[18]_i_21_n_0 ;
  wire \q[18]_i_22_n_0 ;
  wire \q[18]_i_23_n_0 ;
  wire \q[18]_i_24_n_0 ;
  wire \q[18]_i_25_n_0 ;
  wire \q[18]_i_26_n_0 ;
  wire \q[18]_i_2_n_0 ;
  wire \q[18]_i_3_n_0 ;
  wire \q[18]_i_4_n_0 ;
  wire \q[19]_i_17_n_0 ;
  wire \q[19]_i_21_n_0 ;
  wire \q[19]_i_23_n_0 ;
  wire \q[19]_i_24_n_0 ;
  wire \q[19]_i_25_n_0 ;
  wire \q[19]_i_26_n_0 ;
  wire \q[19]_i_27_n_0 ;
  wire \q[19]_i_2_n_0 ;
  wire \q[19]_i_3_n_0 ;
  wire \q[19]_i_4_n_0 ;
  wire \q[19]_i_9_n_0 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[1]_i_3_n_0 ;
  wire \q[1]_i_5_n_0 ;
  wire \q[1]_i_9_n_0 ;
  wire \q[20]_i_13_n_0 ;
  wire \q[20]_i_19_n_0 ;
  wire \q[20]_i_20_n_0 ;
  wire \q[20]_i_21_n_0 ;
  wire \q[20]_i_22_n_0 ;
  wire \q[20]_i_23_n_0 ;
  wire \q[20]_i_24_n_0 ;
  wire \q[20]_i_2_n_0 ;
  wire \q[20]_i_3_n_0 ;
  wire \q[20]_i_4_n_0 ;
  wire \q[21]_i_14_n_0 ;
  wire \q[21]_i_17_n_0 ;
  wire \q[21]_i_18_n_0 ;
  wire \q[21]_i_19_n_0 ;
  wire \q[21]_i_20_n_0 ;
  wire \q[21]_i_21_n_0 ;
  wire \q[21]_i_22_n_0 ;
  wire \q[21]_i_2_n_0 ;
  wire \q[21]_i_3_n_0 ;
  wire \q[21]_i_4_n_0 ;
  wire \q[22]_i_19_n_0 ;
  wire \q[22]_i_20_n_0 ;
  wire \q[22]_i_21_n_0 ;
  wire \q[22]_i_22_n_0 ;
  wire \q[22]_i_23_n_0 ;
  wire \q[22]_i_24_n_0 ;
  wire \q[22]_i_2_n_0 ;
  wire \q[22]_i_3_n_0 ;
  wire \q[22]_i_4_n_0 ;
  wire \q[23]_i_19_n_0 ;
  wire \q[23]_i_21_n_0 ;
  wire \q[23]_i_22_n_0 ;
  wire \q[23]_i_23_n_0 ;
  wire \q[23]_i_24_n_0 ;
  wire \q[23]_i_25_n_0 ;
  wire \q[23]_i_2_n_0 ;
  wire \q[23]_i_3_n_0 ;
  wire \q[23]_i_4_n_0 ;
  wire \q[24]_i_22_n_0 ;
  wire \q[24]_i_23_n_0 ;
  wire \q[24]_i_24_n_0 ;
  wire \q[24]_i_25_n_0 ;
  wire \q[24]_i_26_n_0 ;
  wire \q[24]_i_27_n_0 ;
  wire \q[24]_i_2_n_0 ;
  wire \q[24]_i_3_n_0 ;
  wire \q[24]_i_4_n_0 ;
  wire \q[25]_i_19_n_0 ;
  wire \q[25]_i_20_n_0 ;
  wire \q[25]_i_21_n_0 ;
  wire \q[25]_i_22_n_0 ;
  wire \q[25]_i_23_n_0 ;
  wire \q[25]_i_24_n_0 ;
  wire \q[25]_i_2_n_0 ;
  wire \q[25]_i_3_n_0 ;
  wire \q[25]_i_4_n_0 ;
  wire \q[26]_i_25_n_0 ;
  wire \q[26]_i_26_n_0 ;
  wire \q[26]_i_27_n_0 ;
  wire \q[26]_i_28_n_0 ;
  wire \q[26]_i_29_n_0 ;
  wire \q[26]_i_2_n_0 ;
  wire \q[26]_i_30_n_0 ;
  wire \q[26]_i_4_n_0 ;
  wire \q[27]_i_12_n_0 ;
  wire \q[27]_i_13_n_0 ;
  wire \q[27]_i_14_n_0 ;
  wire \q[27]_i_15_n_0 ;
  wire \q[27]_i_16_n_0 ;
  wire \q[27]_i_17_n_0 ;
  wire \q[27]_i_2_n_0 ;
  wire \q[27]_i_3_n_0 ;
  wire \q[27]_i_5_n_0 ;
  wire \q[28]_i_13_n_0 ;
  wire \q[28]_i_14_n_0 ;
  wire \q[28]_i_16_n_0 ;
  wire \q[28]_i_17_n_0 ;
  wire \q[28]_i_18_n_0 ;
  wire \q[28]_i_19_n_0 ;
  wire \q[28]_i_20_n_0 ;
  wire \q[28]_i_2_n_0 ;
  wire \q[28]_i_3_n_0 ;
  wire \q[28]_i_5_n_0 ;
  wire \q[29]_i_13_n_0 ;
  wire \q[29]_i_14_n_0 ;
  wire \q[29]_i_15_n_0 ;
  wire \q[29]_i_17_n_0 ;
  wire \q[29]_i_19_n_0 ;
  wire \q[29]_i_20_n_0 ;
  wire \q[29]_i_21_n_0 ;
  wire \q[29]_i_22_n_0 ;
  wire \q[29]_i_2_n_0 ;
  wire \q[29]_i_3_n_0 ;
  wire \q[29]_i_5_n_0 ;
  wire \q[2]_i_11_n_0 ;
  wire \q[2]_i_12_n_0 ;
  wire \q[2]_i_13_n_0 ;
  wire \q[2]_i_14_n_0 ;
  wire \q[2]_i_20_n_0 ;
  wire \q[2]_i_21_n_0 ;
  wire \q[2]_i_22_n_0 ;
  wire \q[2]_i_23_n_0 ;
  wire \q[2]_i_2__0_n_0 ;
  wire \q[2]_i_39_n_0 ;
  wire \q[2]_i_3_n_0 ;
  wire \q[2]_i_40_n_0 ;
  wire \q[2]_i_41_n_0 ;
  wire \q[2]_i_42_n_0 ;
  wire \q[2]_i_43_n_0 ;
  wire \q[2]_i_44_n_0 ;
  wire \q[2]_i_45_n_0 ;
  wire \q[2]_i_46_n_0 ;
  wire \q[2]_i_47_n_0 ;
  wire \q[2]_i_48_n_0 ;
  wire \q[2]_i_49_n_0 ;
  wire \q[2]_i_4_n_0 ;
  wire \q[2]_i_50_n_0 ;
  wire \q[2]_i_51_n_0 ;
  wire \q[2]_i_52_n_0 ;
  wire \q[30]_i_26_n_0 ;
  wire \q[30]_i_27_n_0 ;
  wire \q[30]_i_28_n_0 ;
  wire \q[30]_i_29_n_0 ;
  wire \q[30]_i_2_n_0 ;
  wire \q[30]_i_30_n_0 ;
  wire \q[30]_i_31_n_0 ;
  wire \q[30]_i_4_n_0 ;
  wire \q[31]_i_18_n_0 ;
  wire \q[31]_i_22_n_0 ;
  wire \q[31]_i_24_n_0 ;
  wire \q[31]_i_25_n_0 ;
  wire \q[31]_i_26_n_0 ;
  wire \q[31]_i_3__2_n_0 ;
  wire \q[31]_i_43_n_0 ;
  wire \q[31]_i_44_n_0 ;
  wire \q[31]_i_45_n_0 ;
  wire \q[31]_i_4__1_n_0 ;
  wire \q[31]_i_5__0_n_0 ;
  wire \q[3]_i_2__0_n_0 ;
  wire \q[3]_i_3__0_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_9_n_0 ;
  wire \q[4]_i_12_n_0 ;
  wire \q[4]_i_15_n_0 ;
  wire \q[4]_i_17_n_0 ;
  wire \q[4]_i_18_n_0 ;
  wire \q[4]_i_19_n_0 ;
  wire \q[4]_i_20_n_0 ;
  wire \q[4]_i_21_n_0 ;
  wire \q[4]_i_22_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[4]_i_3_n_0 ;
  wire \q[4]_i_4_n_0 ;
  wire \q[4]_i_5_n_0 ;
  wire \q[4]_i_8_n_0 ;
  wire \q[5]_i_11_n_0 ;
  wire \q[5]_i_16_n_0 ;
  wire \q[5]_i_18_n_0 ;
  wire \q[5]_i_19_n_0 ;
  wire \q[5]_i_20_n_0 ;
  wire \q[5]_i_21_n_0 ;
  wire \q[5]_i_22_n_0 ;
  wire \q[5]_i_23_n_0 ;
  wire \q[5]_i_2__0_n_0 ;
  wire \q[5]_i_3__0_n_0 ;
  wire \q[5]_i_4_n_0 ;
  wire \q[5]_i_5_n_0 ;
  wire \q[5]_i_8_n_0 ;
  wire \q[6]_i_11_n_0 ;
  wire \q[6]_i_17_n_0 ;
  wire \q[6]_i_19_n_0 ;
  wire \q[6]_i_20_n_0 ;
  wire \q[6]_i_21_n_0 ;
  wire \q[6]_i_22_n_0 ;
  wire \q[6]_i_23_n_0 ;
  wire \q[6]_i_24_n_0 ;
  wire \q[6]_i_2__0_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q[6]_i_4_n_0 ;
  wire \q[6]_i_5_n_0 ;
  wire \q[6]_i_7_n_0 ;
  wire \q[6]_i_8_n_0 ;
  wire \q[7]_i_11_n_0 ;
  wire \q[7]_i_18_n_0 ;
  wire \q[7]_i_19_n_0 ;
  wire \q[7]_i_21_n_0 ;
  wire \q[7]_i_22_n_0 ;
  wire \q[7]_i_23_n_0 ;
  wire \q[7]_i_24_n_0 ;
  wire \q[7]_i_25_n_0 ;
  wire \q[7]_i_26_n_0 ;
  wire \q[7]_i_2__2_n_0 ;
  wire \q[7]_i_3__1_n_0 ;
  wire \q[7]_i_4__1_n_0 ;
  wire \q[7]_i_5__1_n_0 ;
  wire \q[7]_i_7__1_n_0 ;
  wire \q[7]_i_8__0_n_0 ;
  wire \q[8]_i_11_n_0 ;
  wire \q[8]_i_15_n_0 ;
  wire \q[8]_i_16_n_0 ;
  wire \q[8]_i_17_n_0 ;
  wire \q[8]_i_24_n_0 ;
  wire \q[8]_i_25_n_0 ;
  wire \q[8]_i_26_n_0 ;
  wire \q[8]_i_27_n_0 ;
  wire \q[8]_i_28_n_0 ;
  wire \q[8]_i_29_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q[8]_i_4_n_0 ;
  wire \q[8]_i_5_n_0 ;
  wire \q[8]_i_7_n_0 ;
  wire \q[8]_i_8_n_0 ;
  wire \q[9]_i_11_n_0 ;
  wire \q[9]_i_16_n_0 ;
  wire \q[9]_i_17_n_0 ;
  wire \q[9]_i_18_n_0 ;
  wire \q[9]_i_21_n_0 ;
  wire \q[9]_i_22_n_0 ;
  wire \q[9]_i_23_n_0 ;
  wire \q[9]_i_24_n_0 ;
  wire \q[9]_i_25_n_0 ;
  wire \q[9]_i_26_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire \q[9]_i_3_n_0 ;
  wire \q[9]_i_4_n_0 ;
  wire \q[9]_i_5_n_0 ;
  wire \q[9]_i_7_n_0 ;
  wire \q[9]_i_8_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire [6:0]\q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire [7:0]\q_reg[0]_4 ;
  wire \q_reg[11] ;
  wire \q_reg[11]_0 ;
  wire \q_reg[12] ;
  wire \q_reg[13] ;
  wire \q_reg[14] ;
  wire \q_reg[14]_0 ;
  wire \q_reg[15] ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[15]_10 ;
  wire \q_reg[15]_11 ;
  wire \q_reg[15]_12 ;
  wire \q_reg[15]_13 ;
  wire \q_reg[15]_14 ;
  wire \q_reg[15]_15 ;
  wire \q_reg[15]_16 ;
  wire \q_reg[15]_17 ;
  wire \q_reg[15]_18 ;
  wire \q_reg[15]_19 ;
  wire \q_reg[15]_2 ;
  wire \q_reg[15]_20 ;
  wire \q_reg[15]_3 ;
  wire \q_reg[15]_4 ;
  wire \q_reg[15]_5 ;
  wire \q_reg[15]_6 ;
  wire \q_reg[15]_7 ;
  wire \q_reg[15]_8 ;
  wire \q_reg[15]_9 ;
  wire \q_reg[16] ;
  wire \q_reg[16]_0 ;
  wire \q_reg[16]_1 ;
  wire \q_reg[17] ;
  wire \q_reg[17]_0 ;
  wire \q_reg[17]_1 ;
  wire \q_reg[18] ;
  wire \q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_i_4_n_0 ;
  wire \q_reg[23] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [4:0]\q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[31] ;
  wire [26:0]\q_reg[31]_0 ;
  wire [26:0]\q_reg[31]_1 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_10 ;
  wire \q_reg[3]_11 ;
  wire \q_reg[3]_12 ;
  wire \q_reg[3]_13 ;
  wire \q_reg[3]_14 ;
  wire \q_reg[3]_15 ;
  wire \q_reg[3]_16 ;
  wire \q_reg[3]_17 ;
  wire \q_reg[3]_18 ;
  wire \q_reg[3]_19 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_20 ;
  wire \q_reg[3]_21 ;
  wire \q_reg[3]_22 ;
  wire \q_reg[3]_23 ;
  wire \q_reg[3]_24 ;
  wire \q_reg[3]_25 ;
  wire \q_reg[3]_26 ;
  wire \q_reg[3]_27 ;
  wire \q_reg[3]_28 ;
  wire \q_reg[3]_29 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_30 ;
  wire \q_reg[3]_31 ;
  wire \q_reg[3]_32 ;
  wire \q_reg[3]_33 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire \q_reg[3]_6 ;
  wire \q_reg[3]_7 ;
  wire \q_reg[3]_8 ;
  wire \q_reg[3]_9 ;
  wire \q_reg[3]_i_4_n_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire \q_reg[4]_3 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[5]_4 ;

  LUT6 #(
    .INIT(64'h00000000FFEA002A)) 
    \q[0]_i_14 
       (.I0(\q[0]_i_20_n_0 ),
        .I1(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co1 ),
        .I2(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I3(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co0 ),
        .I4(\q[0]_i_21_n_0 ),
        .I5(\q[0]_i_22_n_0 ),
        .O(\q[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_16 
       (.I0(\q[7]_i_11_n_0 ),
        .I1(\q[0]_i_23_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[5]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[0]_i_24_n_0 ),
        .O(\q[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_17 
       (.I0(\q[6]_i_11_n_0 ),
        .I1(\q[0]_i_25_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[4]_i_12_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[0]_i_26_n_0 ),
        .O(\q[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[0]_i_1__3 
       (.I0(\q[0]_i_2__1_n_0 ),
        .I1(ALUCode_ex[3]),
        .I2(\q[0]_i_3_n_0 ),
        .I3(ALUCode_ex[4]),
        .I4(\q[0]_i_4_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h66969699)) 
    \q[0]_i_20 
       (.I0(\q_reg[31] ),
        .I1(B_adder__95[25]),
        .I2(\q[30]_i_2_n_0 ),
        .I3(B_adder__95[24]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi_1 ),
        .O(\q[0]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h66969699)) 
    \q[0]_i_21 
       (.I0(\q_reg[31] ),
        .I1(B_adder__95[25]),
        .I2(\q[30]_i_2_n_0 ),
        .I3(B_adder__95[24]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi_1 ),
        .O(\q[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[0]_i_22 
       (.I0(\q_reg[31] ),
        .I1(\q_reg[15]_2 ),
        .O(\q[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_23 
       (.I0(\q[11]_i_16_n_0 ),
        .I1(\q[11]_i_17_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[11]_i_15_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[2]_i_39_n_0 ),
        .O(\q[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_24 
       (.I0(\q[9]_i_17_n_0 ),
        .I1(\q[9]_i_18_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[9]_i_16_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[0]_i_28_n_0 ),
        .O(\q[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_25 
       (.I0(\q[10]_i_18_n_0 ),
        .I1(\q[10]_i_19_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[10]_i_17_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[2]_i_40_n_0 ),
        .O(\q[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_26 
       (.I0(\q[8]_i_16_n_0 ),
        .I1(\q[8]_i_17_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[8]_i_15_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[0]_i_29_n_0 ),
        .O(\q[0]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[0]_i_28 
       (.I0(\q[0]_i_30_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[0]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[0]_i_29 
       (.I0(\q[0]_i_31_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011001101)) 
    \q[0]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[0]_0 ),
        .I4(\q_reg[0]_1 ),
        .I5(ALUCode_ex[4]),
        .O(\q[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \q[0]_i_3 
       (.I0(\q_reg[3]_30 ),
        .I1(\q[0]_i_8_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\q[0]_i_9_n_0 ),
        .O(\q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[0]_i_30 
       (.I0(\q[0]_i_32_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[0]_i_31 
       (.I0(\q[0]_i_33_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[0]_i_32 
       (.I0(\q[0]_i_34_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[0]_i_33 
       (.I0(\q[0]_i_35_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_34 
       (.I0(\q[0]_i_36_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_35 
       (.I0(\q[0]_i_37_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_36 
       (.I0(\q[0]_i_38_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_37 
       (.I0(\q[0]_i_39_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_38 
       (.I0(\q[0]_i_40_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[0]_i_39 
       (.I0(\q[0]_i_41_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hE50258E5)) 
    \q[0]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\q_reg[0]_0 ),
        .I4(\q_reg[0]_1 ),
        .O(\q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[0]_i_40 
       (.I0(\q_reg[1]_2 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[0]_i_41 
       (.I0(\q_reg[0]_1 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \q[0]_i_8 
       (.I0(\q[0]_i_14_n_0 ),
        .I1(\q_reg[15] ),
        .I2(Q[3]),
        .I3(\q[0]_i_16_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[0]_i_17_n_0 ),
        .O(\q[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB200B2B200000000)) 
    \q[0]_i_9 
       (.I0(\q_reg[31] ),
        .I1(\q_reg[15]_2 ),
        .I2(\EX/ALU/sum [31]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\q[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[10]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_1 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(B_adder__95[5]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_i_11 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[10]_i_17_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[10]_i_18_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[10]_i_19_n_0 ),
        .O(\q[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[10]_i_14 
       (.I0(\q[9]_i_7_n_0 ),
        .I1(B_adder__95[4]),
        .I2(\q[8]_i_7_n_0 ),
        .I3(\q_reg[2]_3 ),
        .I4(B_adder0[1]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_1 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[10]_i_16 
       (.I0(\q[9]_i_7_n_0 ),
        .I1(B_adder__95[4]),
        .I2(\q[8]_i_7_n_0 ),
        .I3(\q_reg[2]_3 ),
        .I4(B_adder0[1]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_1 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[10]_i_17 
       (.I0(\q[18]_i_21_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[10]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[10]_i_18 
       (.I0(\q[26]_i_25_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[10]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[10]_i_19 
       (.I0(\q[10]_i_23_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[10]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[10]_i_2 
       (.I0(\q[10]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[10]_i_5_n_0 ),
        .O(\q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[10]_i_23 
       (.I0(\q[10]_i_24_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[10]_i_24 
       (.I0(\q[10]_i_25_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[10]_i_25 
       (.I0(\q[10]_i_26_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[10]_i_26 
       (.I0(\q[10]_i_27_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[10]_i_27 
       (.I0(\q[10]_i_28_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[10]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[10]_i_28 
       (.I0(\q_reg[4]_2 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[10]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[10]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[4]_2 ),
        .I4(\q[10]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[10]_i_4 
       (.I0(\q[10]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[11]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_13 ),
        .O(\q[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[10]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[4]_2 ),
        .I3(\q[10]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [10]),
        .O(\q[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[10]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [5]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[5]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [5]),
        .O(\q[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_i_8 
       (.I0(\q[12]_i_11_n_0 ),
        .I1(\q[12]_i_12_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[14]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[10]_i_11_n_0 ),
        .O(\q[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[11]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_1 ),
        .I2(\q[11]_i_7_n_0 ),
        .I3(B_adder__95[6]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[11]_i_11 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q[15]_i_27_n_0 ),
        .O(\q[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[11]_i_12 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[11]_i_15_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[11]_i_16_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[11]_i_17_n_0 ),
        .O(\q[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[11]_i_15 
       (.I0(\q[19]_i_21_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[11]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[11]_i_16 
       (.I0(\q[27]_i_12_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[11]_i_17 
       (.I0(\q[11]_i_20_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[11]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[11]_i_2 
       (.I0(\q[11]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[11]_i_5_n_0 ),
        .O(\q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[11]_i_20 
       (.I0(\q[11]_i_21_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[11]_i_21 
       (.I0(\q[11]_i_22_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[11]_i_22 
       (.I0(\q[11]_i_23_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[11]_i_23 
       (.I0(\q[11]_i_24_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[11]_i_24 
       (.I0(\q[11]_i_25_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[11]_i_25 
       (.I0(\q_reg[11]_0 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[11]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[11]_0 ),
        .I4(\q[11]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[11]_i_4 
       (.I0(\q[11]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[12]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_12 ),
        .O(\q[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[11]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[11]_0 ),
        .I3(\q[11]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [11]),
        .O(\q[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[11]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [6]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[6]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [6]),
        .O(\q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[11]_i_8 
       (.I0(\q[13]_i_11_n_0 ),
        .I1(\q[13]_i_12_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[11]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[11]_i_12_n_0 ),
        .O(\q[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h995A66A5)) 
    \q[12]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_2 ),
        .I1(\q_reg[12] ),
        .I2(B_adder0[2]),
        .I3(B_adder1__3),
        .I4(\q[12]_i_7_n_0 ),
        .O(\EX/ALU/sum [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[12]_i_11 
       (.I0(\q_reg[16]_1 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q[16]_i_13_n_0 ),
        .O(\q[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[12]_i_12 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[12]_i_15_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[12]_i_16_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[12]_i_17_n_0 ),
        .O(\q[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[12]_i_15 
       (.I0(\q[20]_i_19_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[12]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[12]_i_16 
       (.I0(\q[28]_i_14_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[12]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[12]_i_17 
       (.I0(\q[12]_i_20_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[12]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[12]_i_2 
       (.I0(\q[12]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[12]_i_5_n_0 ),
        .O(\q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[12]_i_20 
       (.I0(\q[12]_i_21_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[12]_i_21 
       (.I0(\q[12]_i_22_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[12]_i_22 
       (.I0(\q[12]_i_23_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[12]_i_23 
       (.I0(\q[12]_i_24_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[12]_i_24 
       (.I0(\q[12]_i_25_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[12]_i_25 
       (.I0(\q_reg[12] ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[12]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[12]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[12] ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[12]_i_4 
       (.I0(\q[12]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[13]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_11 ),
        .O(\q[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[12]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[12] ),
        .I3(\q[12]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [12]),
        .O(\q[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[12]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [7]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[7]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [7]),
        .O(\q[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[12]_i_8 
       (.I0(\q_reg[11] ),
        .I1(\q[14]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[12]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[12]_i_12_n_0 ),
        .O(\q[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69C33C69)) 
    \q[13]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_2 ),
        .I1(\q[13]_i_7_n_0 ),
        .I2(B_adder__95[8]),
        .I3(B_adder__95[7]),
        .I4(\q[12]_i_7_n_0 ),
        .O(\EX/ALU/sum [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[13]_i_11 
       (.I0(\q_reg[17]_1 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q[17]_i_14_n_0 ),
        .O(\q[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[13]_i_12 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[13]_i_17_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[13]_i_18_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[13]_i_19_n_0 ),
        .O(\q[13]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[13]_i_17 
       (.I0(\q[21]_i_17_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[13]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[13]_i_18 
       (.I0(\q[29]_i_15_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[13]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[13]_i_19 
       (.I0(\q[13]_i_22_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[13]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[13]_i_2 
       (.I0(\q[13]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[13]_i_5_n_0 ),
        .O(\q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[13]_i_22 
       (.I0(\q[13]_i_23_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[13]_i_23 
       (.I0(\q[13]_i_24_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[13]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[13]_i_24 
       (.I0(\q[13]_i_25_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[13]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[13]_i_25 
       (.I0(\q[13]_i_26_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[13]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[13]_i_26 
       (.I0(\q[13]_i_27_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[13]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[13]_i_27 
       (.I0(\q_reg[13] ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[13]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[13]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[13] ),
        .I4(\q[13]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[13]_i_4 
       (.I0(\q[13]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[14]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_10 ),
        .O(\q[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[13]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[13] ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [13]),
        .O(\q[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[13]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [8]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[8]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [8]),
        .O(\q[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[13]_i_8 
       (.I0(\q[15]_i_17_n_0 ),
        .I1(\q_reg[1]_0 ),
        .I2(\q[13]_i_11_n_0 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q[13]_i_12_n_0 ),
        .O(\q[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[14]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_2 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(B_adder__95[9]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [14]));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \q[14]_i_11 
       (.I0(\q_reg[15]_2 ),
        .I1(\q_reg[5]_2 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q_reg[5]_1 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[14]_i_14_n_0 ),
        .O(\q[14]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \q[14]_i_14 
       (.I0(\q[14]_i_17_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_2 ),
        .O(\q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[14]_i_17 
       (.I0(\q[14]_i_18_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[14]_i_18 
       (.I0(\q[14]_i_19_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[14]_i_19 
       (.I0(\q[14]_i_20_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[14]_i_2 
       (.I0(\q[14]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[14]_i_5_n_0 ),
        .O(\q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[14]_i_20 
       (.I0(\q[14]_i_21_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[14]_i_21 
       (.I0(\q[14]_i_22_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[14]_i_22 
       (.I0(\q_reg[14]_0 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[14]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[14]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[14]_0 ),
        .I4(\q[14]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[14]_i_4 
       (.I0(\q[14]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[14] ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_9 ),
        .O(\q[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[14]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[14]_0 ),
        .I3(\q[14]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [14]),
        .O(\q[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[14]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [9]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[9]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [9]),
        .O(\q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[14]_i_8 
       (.I0(\q_reg[16] ),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[11] ),
        .I3(\q_reg[2]_1 ),
        .I4(\q[14]_i_11_n_0 ),
        .O(\q[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[15]_i_10 
       (.I0(\q[17]_i_9_n_0 ),
        .I1(\q_reg[1]_0 ),
        .I2(\q[15]_i_17_n_0 ),
        .O(\q_reg[14] ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[15]_i_13 
       (.I0(\q[14]_i_7_n_0 ),
        .I1(B_adder__95[9]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_2 ));
  LUT5 #(
    .INIT(32'hEF0EAF0A)) 
    \q[15]_i_14 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_1 ),
        .I2(\q[11]_i_7_n_0 ),
        .I3(B_adder__95[6]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_2 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[15]_i_16 
       (.I0(\q[14]_i_7_n_0 ),
        .I1(B_adder__95[9]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[15]_i_17 
       (.I0(\q_reg[19] ),
        .I1(\q[19]_i_17_n_0 ),
        .I2(\q_reg[2]_1 ),
        .I3(\q_reg[19]_0 ),
        .I4(\q_reg[3]_0 ),
        .I5(\q[15]_i_27_n_0 ),
        .O(\q[15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[15]_i_1__1 
       (.I0(\q[15]_i_2_n_0 ),
        .I1(ALUCode_ex[3]),
        .I2(\q[15]_i_3_n_0 ),
        .I3(ALUCode_ex[4]),
        .I4(\q[15]_i_4_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[15]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[15]_3 ),
        .I4(\q[15]_i_6_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[15]_i_21 
       (.I0(\q[13]_i_7_n_0 ),
        .I1(B_adder__95[8]),
        .I2(\q[12]_i_7_n_0 ),
        .I3(\q_reg[12] ),
        .I4(B_adder0[2]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_1 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[15]_i_22 
       (.I0(\q[10]_i_7_n_0 ),
        .I1(B_adder__95[5]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi_2 ));
  LUT5 #(
    .INIT(32'hEF0EAF0A)) 
    \q[15]_i_23 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_2 ),
        .I1(cio_0),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(B_adder__95[2]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_1 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[15]_i_25 
       (.I0(\q[10]_i_7_n_0 ),
        .I1(B_adder__95[5]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi_2 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[15]_i_26 
       (.I0(\q[13]_i_7_n_0 ),
        .I1(B_adder__95[8]),
        .I2(\q[12]_i_7_n_0 ),
        .I3(\q_reg[12] ),
        .I4(B_adder0[2]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_1 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[15]_i_27 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[15]_i_30_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[15]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[15]_i_3 
       (.I0(\q_reg[0]_2 [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_8 ),
        .I4(Q[5]),
        .O(\q[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[15]_i_30 
       (.I0(\q[15]_i_31_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[15]_i_31 
       (.I0(\q[15]_i_32_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[15]_i_32 
       (.I0(\q[15]_i_33_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[15]_i_33 
       (.I0(\q[15]_i_34_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[15]_i_34 
       (.I0(\q[15]_i_35_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[15]_i_35 
       (.I0(\q_reg[15]_3 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[15]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_3 ),
        .I3(\q[15]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [15]),
        .O(\q[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[15]_i_6 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [10]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[10]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [10]),
        .O(\q[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[15]_i_9 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_2 ),
        .I2(\q[15]_i_6_n_0 ),
        .I3(B_adder__95[10]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [15]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[16]_i_13 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[16]_i_21_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[16]_i_1__1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[16]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[16]_i_4_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[16]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [11]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[11]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [11]),
        .O(\q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[16]_i_21 
       (.I0(\q[16]_i_28_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[16]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[16]_i_28 
       (.I0(\q[16]_i_29_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[16]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[16]_i_29 
       (.I0(\q[16]_i_30_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[16]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[16]_i_3 
       (.I0(\EX/ALU/data11 [16]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_28 ),
        .I4(Q[5]),
        .O(\q[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[16]_i_30 
       (.I0(\q[16]_i_31_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[16]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[16]_i_31 
       (.I0(\q[16]_i_32_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[16]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[16]_i_32 
       (.I0(\q_reg[15]_4 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[16]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[16]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_4 ),
        .I3(\q[16]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [16]),
        .O(\q[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[16]_i_5 
       (.I0(\q[19]_i_9_n_0 ),
        .I1(\q[17]_i_9_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q_reg[3]_29 ),
        .I4(\q_reg[1]_0 ),
        .I5(\q_reg[16] ),
        .O(\EX/ALU/data11 [16]));
  LUT5 #(
    .INIT(32'h995A66A5)) 
    \q[16]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I1(\q_reg[15]_4 ),
        .I2(B_adder0[3]),
        .I3(B_adder1__3),
        .I4(\q[16]_i_2_n_0 ),
        .O(\EX/ALU/sum [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[16]_i_9 
       (.I0(\q_reg[16]_0 ),
        .I1(\q[20]_i_13_n_0 ),
        .I2(\q_reg[2]_1 ),
        .I3(\q_reg[16]_1 ),
        .I4(\q_reg[3]_0 ),
        .I5(\q[16]_i_13_n_0 ),
        .O(\q_reg[16] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[17]_i_14 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[17]_i_17_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[17]_i_17 
       (.I0(\q[17]_i_20_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[17]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[17]_i_1__1 
       (.I0(\q[17]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[17]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[17]_i_4_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[17]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [12]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[12]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [12]),
        .O(\q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[17]_i_20 
       (.I0(\q[17]_i_21_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[17]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[17]_i_21 
       (.I0(\q[17]_i_22_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[17]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[17]_i_22 
       (.I0(\q[17]_i_23_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[17]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[17]_i_23 
       (.I0(\q[17]_i_24_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[17]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[17]_i_24 
       (.I0(\q_reg[15]_5 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[17]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[17]_i_3 
       (.I0(\EX/ALU/data11 [17]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_27 ),
        .I4(Q[5]),
        .O(\q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[17]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_5 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [17]),
        .O(\q[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[17]_i_5 
       (.I0(\q_reg[17] ),
        .I1(\q_reg[3]_29 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[19]_i_9_n_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(\q[17]_i_9_n_0 ),
        .O(\EX/ALU/data11 [17]));
  LUT5 #(
    .INIT(32'h69C33C69)) 
    \q[17]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I1(\q[17]_i_2_n_0 ),
        .I2(B_adder__95[12]),
        .I3(B_adder__95[11]),
        .I4(\q[16]_i_2_n_0 ),
        .O(\EX/ALU/sum [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[17]_i_9 
       (.I0(\q_reg[17]_0 ),
        .I1(\q[21]_i_14_n_0 ),
        .I2(\q_reg[2]_1 ),
        .I3(\q_reg[17]_1 ),
        .I4(\q_reg[3]_0 ),
        .I5(\q[17]_i_14_n_0 ),
        .O(\q[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[18]_i_12 
       (.I0(\q[17]_i_2_n_0 ),
        .I1(B_adder__95[12]),
        .I2(\q[16]_i_2_n_0 ),
        .I3(\q_reg[15]_4 ),
        .I4(B_adder0[3]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_1 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[18]_i_14 
       (.I0(\q[17]_i_2_n_0 ),
        .I1(B_adder__95[12]),
        .I2(\q[16]_i_2_n_0 ),
        .I3(\q_reg[15]_4 ),
        .I4(B_adder0[3]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[18]_i_15 
       (.I0(\q_reg[23] ),
        .I1(\q_reg[3]_0 ),
        .I2(\q[18]_i_18_n_0 ),
        .O(\q_reg[11] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[18]_i_18 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[18]_i_21_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[18]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[18]_i_1__1 
       (.I0(\q[18]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[18]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[18]_i_4_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[18]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [13]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[13]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [13]),
        .O(\q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[18]_i_21 
       (.I0(\q[18]_i_22_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[18]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[18]_i_22 
       (.I0(\q[18]_i_23_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[18]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[18]_i_23 
       (.I0(\q[18]_i_24_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[18]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[18]_i_24 
       (.I0(\q[18]_i_25_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[18]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[18]_i_25 
       (.I0(\q[18]_i_26_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[18]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[18]_i_26 
       (.I0(\q_reg[15]_6 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[18]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[18]_i_3 
       (.I0(\EX/ALU/data11 [18]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_26 ),
        .I4(Q[5]),
        .O(\q[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[18]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_6 ),
        .I3(\q[18]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [18]),
        .O(\q[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[18]_i_5 
       (.I0(\q_reg[18] ),
        .I1(\q[19]_i_9_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q_reg[17] ),
        .I4(\q_reg[1]_0 ),
        .I5(\q_reg[3]_29 ),
        .O(\EX/ALU/data11 [18]));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[18]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(B_adder__95[13]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [18]));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[19]_i_13 
       (.I0(\q[18]_i_2_n_0 ),
        .I1(B_adder__95[13]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_2 ));
  LUT5 #(
    .INIT(32'hEF0EAF0A)) 
    \q[19]_i_14 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_2 ),
        .I2(\q[15]_i_6_n_0 ),
        .I3(B_adder__95[10]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_3 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[19]_i_16 
       (.I0(\q[18]_i_2_n_0 ),
        .I1(B_adder__95[13]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_2 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[19]_i_17 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[19]_i_21_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[19]_i_1__1 
       (.I0(\q[19]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[19]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[19]_i_4_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[19]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [14]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[14]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [14]),
        .O(\q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[19]_i_21 
       (.I0(\q[19]_i_23_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[19]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[19]_i_23 
       (.I0(\q[19]_i_24_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[19]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[19]_i_24 
       (.I0(\q[19]_i_25_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[19]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[19]_i_25 
       (.I0(\q[19]_i_26_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[19]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[19]_i_26 
       (.I0(\q[19]_i_27_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[19]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[19]_i_27 
       (.I0(\q_reg[15]_7 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[19]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[19]_i_3 
       (.I0(\EX/ALU/data11 [19]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_25 ),
        .I4(Q[5]),
        .O(\q[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[19]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_7 ),
        .I3(\q[19]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [19]),
        .O(\q[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[19]_i_5 
       (.I0(\q_reg[15]_19 ),
        .I1(\q_reg[17] ),
        .I2(\q_reg[0]_0 ),
        .I3(\q_reg[18] ),
        .I4(\q_reg[1]_0 ),
        .I5(\q[19]_i_9_n_0 ),
        .O(\EX/ALU/data11 [19]));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[19]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I2(\q[19]_i_2_n_0 ),
        .I3(B_adder__95[14]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [19]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[19]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[19]_0 ),
        .I3(\q_reg[19] ),
        .I4(\q[19]_i_17_n_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[1]_i_2__0 
       (.I0(\q_reg[1]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[1]_i_5_n_0 ),
        .O(\q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011001101)) 
    \q[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[1]_2 ),
        .I5(ALUCode_ex[4]),
        .O(\q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE27E5395C05C4284)) 
    \q[1]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1]_2 ),
        .I4(Q[3]),
        .I5(\q_reg[2]_2 [0]),
        .O(\q[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \q[1]_i_9 
       (.I0(\q[0]_i_16_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[2]_i_14_n_0 ),
        .I3(\q_reg[1]_0 ),
        .I4(\q[2]_i_13_n_0 ),
        .I5(Q[3]),
        .O(\q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[20]_i_13 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[20]_i_19_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[20]_i_19 
       (.I0(\q[20]_i_20_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[20]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[20]_i_1__1 
       (.I0(\q[20]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[20]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[20]_i_4_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[20]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [15]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[15]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [15]),
        .O(\q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[20]_i_20 
       (.I0(\q[20]_i_21_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[20]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[20]_i_21 
       (.I0(\q[20]_i_22_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[20]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[20]_i_22 
       (.I0(\q[20]_i_23_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[20]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[20]_i_23 
       (.I0(\q[20]_i_24_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[20]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[20]_i_24 
       (.I0(\q_reg[15]_8 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[20]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[20]_i_3 
       (.I0(\q_reg[0]_2 [1]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_24 ),
        .I4(Q[5]),
        .O(\q[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[20]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_8 ),
        .I3(\q[20]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [20]),
        .O(\q[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h995A66A5)) 
    \q[20]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_4 ),
        .I1(\q_reg[15]_8 ),
        .I2(B_adder0[4]),
        .I3(B_adder1__3),
        .I4(\q[20]_i_2_n_0 ),
        .O(\EX/ALU/sum [20]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[20]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[16]_1 ),
        .I3(\q_reg[16]_0 ),
        .I4(\q[20]_i_13_n_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[17] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[21]_i_14 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[21]_i_17_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[21]_i_17 
       (.I0(\q[21]_i_18_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[21]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[21]_i_18 
       (.I0(\q[21]_i_19_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[21]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[21]_i_19 
       (.I0(\q[21]_i_20_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[21]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[21]_i_1__1 
       (.I0(\q[21]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[21]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[21]_i_4_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[21]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [16]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[16]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [16]),
        .O(\q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[21]_i_20 
       (.I0(\q[21]_i_21_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[21]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[21]_i_21 
       (.I0(\q[21]_i_22_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[21]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[21]_i_22 
       (.I0(\q_reg[15]_9 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[21]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[21]_i_3 
       (.I0(\q_reg[0]_2 [2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_23 ),
        .I4(Q[5]),
        .O(\q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[21]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_9 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [21]),
        .O(\q[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69C33C69)) 
    \q[21]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_4 ),
        .I1(\q[21]_i_2_n_0 ),
        .I2(B_adder__95[16]),
        .I3(B_adder__95[15]),
        .I4(\q[20]_i_2_n_0 ),
        .O(\EX/ALU/sum [21]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[21]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[17]_1 ),
        .I3(\q_reg[17]_0 ),
        .I4(\q[21]_i_14_n_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[18] ));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[22]_i_12 
       (.I0(\q[21]_i_2_n_0 ),
        .I1(B_adder__95[16]),
        .I2(\q[20]_i_2_n_0 ),
        .I3(\q_reg[15]_8 ),
        .I4(B_adder0[4]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_1 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[22]_i_14 
       (.I0(\q[21]_i_2_n_0 ),
        .I1(B_adder__95[16]),
        .I2(\q[20]_i_2_n_0 ),
        .I3(\q_reg[15]_8 ),
        .I4(B_adder0[4]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_1 ));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \q[22]_i_18 
       (.I0(\q[22]_i_19_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_2 ),
        .O(\q_reg[5]_2 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[22]_i_19 
       (.I0(\q[22]_i_20_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[22]_i_1__1 
       (.I0(\q[22]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[22]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[22]_i_4_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[22]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [17]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[17]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [17]),
        .O(\q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[22]_i_20 
       (.I0(\q[22]_i_21_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[22]_i_21 
       (.I0(\q[22]_i_22_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[22]_i_22 
       (.I0(\q[22]_i_23_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[22]_i_23 
       (.I0(\q[22]_i_24_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[22]_i_24 
       (.I0(\q_reg[15]_10 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[22]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[22]_i_3 
       (.I0(\q_reg[0]_2 [3]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_22 ),
        .I4(Q[5]),
        .O(\q[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[22]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_10 ),
        .I3(\q[22]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [22]),
        .O(\q[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[22]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_4 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(B_adder__95[17]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [22]));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[23]_i_12 
       (.I0(\q[22]_i_2_n_0 ),
        .I1(B_adder__95[17]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_2 ));
  LUT5 #(
    .INIT(32'hEF0EAF0A)) 
    \q[23]_i_13 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I2(\q[19]_i_2_n_0 ),
        .I3(B_adder__95[14]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_4 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[23]_i_15 
       (.I0(\q[22]_i_2_n_0 ),
        .I1(B_adder__95[17]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_2 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[23]_i_16 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[23]_i_19_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[23]_i_19 
       (.I0(\q[23]_i_21_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[23]_i_1__1 
       (.I0(\q[23]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[23]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[23]_i_4_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[23]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [18]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[18]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [18]),
        .O(\q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[23]_i_21 
       (.I0(\q[23]_i_22_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[23]_i_22 
       (.I0(\q[23]_i_23_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[23]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[23]_i_23 
       (.I0(\q[23]_i_24_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[23]_i_24 
       (.I0(\q[23]_i_25_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[23]_i_25 
       (.I0(\q_reg[15]_11 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[23]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[23]_i_3 
       (.I0(\q_reg[0]_2 [4]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_21 ),
        .I4(Q[5]),
        .O(\q[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[23]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_11 ),
        .I3(\q[23]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [23]),
        .O(\q[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[23]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_4 ),
        .I2(\q[23]_i_2_n_0 ),
        .I3(B_adder__95[18]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [23]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[24]_i_13 
       (.I0(ALUCode_ex[3]),
        .I1(ALUCode_ex[4]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(B_adder1__3));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[24]_i_14 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[24]_i_22_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[16]_1 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[24]_i_1__1 
       (.I0(\q[24]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[24]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[24]_i_4_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[24]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [19]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[19]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [19]),
        .O(\q[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[24]_i_22 
       (.I0(\q[24]_i_23_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[24]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[24]_i_23 
       (.I0(\q[24]_i_24_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[24]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[24]_i_24 
       (.I0(\q[24]_i_25_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[24]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[24]_i_25 
       (.I0(\q[24]_i_26_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[24]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[24]_i_26 
       (.I0(\q[24]_i_27_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[24]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[24]_i_27 
       (.I0(\q_reg[15]_12 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[24]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[24]_i_3 
       (.I0(\q_reg[0]_2 [5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_20 ),
        .I4(Q[5]),
        .O(\q[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[24]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_12 ),
        .I3(\q[24]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [24]),
        .O(\q[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h995A66A5)) 
    \q[24]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I1(\q_reg[15]_12 ),
        .I2(B_adder0[5]),
        .I3(B_adder1__3),
        .I4(\q[24]_i_2_n_0 ),
        .O(\EX/ALU/sum [24]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[25]_i_15 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[25]_i_19_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[17]_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[25]_i_19 
       (.I0(\q[25]_i_20_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[25]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[25]_i_1__1 
       (.I0(\q[25]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[25]_i_3_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[25]_i_4_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[25]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [20]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[20]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [20]),
        .O(\q[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[25]_i_20 
       (.I0(\q[25]_i_21_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[25]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[25]_i_21 
       (.I0(\q[25]_i_22_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[25]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[25]_i_22 
       (.I0(\q[25]_i_23_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[25]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[25]_i_23 
       (.I0(\q[25]_i_24_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[25]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[25]_i_24 
       (.I0(\q_reg[15]_13 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[25]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[25]_i_3 
       (.I0(\q_reg[0]_2 [6]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_19 ),
        .I4(Q[5]),
        .O(\q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[25]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_13 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [25]),
        .O(\q[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69C33C69)) 
    \q[25]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I1(\q[25]_i_2_n_0 ),
        .I2(B_adder__95[20]),
        .I3(B_adder__95[19]),
        .I4(\q[24]_i_2_n_0 ),
        .O(\EX/ALU/sum [25]));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[26]_i_14 
       (.I0(\q[25]_i_2_n_0 ),
        .I1(B_adder__95[20]),
        .I2(\q[24]_i_2_n_0 ),
        .I3(\q_reg[15]_12 ),
        .I4(B_adder0[5]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_1 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[26]_i_16 
       (.I0(\q[25]_i_2_n_0 ),
        .I1(B_adder__95[20]),
        .I2(\q[24]_i_2_n_0 ),
        .I3(\q_reg[15]_12 ),
        .I4(B_adder0[5]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_1 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[26]_i_17 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[26]_i_25_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[23] ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[26]_i_1__1 
       (.I0(\q[26]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q_reg[4]_3 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[26]_i_4_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[26]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [21]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[21]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [21]),
        .O(\q[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[26]_i_25 
       (.I0(\q[26]_i_26_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[26]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[26]_i_26 
       (.I0(\q[26]_i_27_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[26]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[26]_i_27 
       (.I0(\q[26]_i_28_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[26]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[26]_i_28 
       (.I0(\q[26]_i_29_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[26]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[26]_i_29 
       (.I0(\q[26]_i_30_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[26]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[26]_i_30 
       (.I0(\q_reg[15]_14 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[26]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[26]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_14 ),
        .I3(\q[26]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [26]),
        .O(\q[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[26]_i_8 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(B_adder__95[21]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [26]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[27]_i_10 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[27]_i_12_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[19] ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[27]_i_12 
       (.I0(\q[27]_i_13_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[27]_i_13 
       (.I0(\q[27]_i_14_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[27]_i_14 
       (.I0(\q[27]_i_15_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[27]_i_15 
       (.I0(\q[27]_i_16_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[27]_i_16 
       (.I0(\q[27]_i_17_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[27]_i_17 
       (.I0(\q_reg[15]_15 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[27]_i_1__1 
       (.I0(\q[27]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(ALUCode_ex[4]),
        .I4(ALUCode_ex[3]),
        .I5(\q[27]_i_3_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[27]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [22]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[22]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [22]),
        .O(\q[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[27]_i_3 
       (.I0(\q_reg[3]_31 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[27]_i_5_n_0 ),
        .O(\q[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[27]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_15 ),
        .I3(\q[27]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [27]),
        .O(\q[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[27]_i_9 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I2(\q[27]_i_2_n_0 ),
        .I3(B_adder__95[22]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [27]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[28]_i_10 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[28]_i_14_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[16]_0 ));
  LUT4 #(
    .INIT(16'h65A9)) 
    \q[28]_i_13 
       (.I0(\q[28]_i_2_n_0 ),
        .I1(B_adder1__3),
        .I2(B_adder0[6]),
        .I3(\q_reg[15]_16 ),
        .O(\q[28]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[28]_i_14 
       (.I0(\q[28]_i_16_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[28]_i_16 
       (.I0(\q[28]_i_17_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[28]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[28]_i_17 
       (.I0(\q[28]_i_18_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[28]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[28]_i_18 
       (.I0(\q[28]_i_19_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[28]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[28]_i_19 
       (.I0(\q[28]_i_20_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[28]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[28]_i_1__1 
       (.I0(\q[28]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(ALUCode_ex[4]),
        .I4(ALUCode_ex[3]),
        .I5(\q[28]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[28]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [23]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[23]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [23]),
        .O(\q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[28]_i_20 
       (.I0(\q_reg[15]_16 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[28]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[28]_i_3 
       (.I0(\q_reg[3]_32 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[28]_i_5_n_0 ),
        .O(\q[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[28]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_16 ),
        .I3(\q[28]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [28]),
        .O(\q[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h303071F3CFCF8E0C)) 
    \q[28]_i_9 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ),
        .I1(B_adder__95[22]),
        .I2(\q[27]_i_2_n_0 ),
        .I3(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ),
        .I5(\q[28]_i_13_n_0 ),
        .O(\EX/ALU/sum [28]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \q[29]_i_10 
       (.I0(\q_reg[4]_0 ),
        .I1(\q[29]_i_15_n_0 ),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[17]_0 ));
  LUT5 #(
    .INIT(32'h880A77F5)) 
    \q[29]_i_13 
       (.I0(\q[28]_i_2_n_0 ),
        .I1(\q_reg[15]_16 ),
        .I2(B_adder0[6]),
        .I3(B_adder1__3),
        .I4(B_adder__95[23]),
        .O(\q[29]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEAF1150)) 
    \q[29]_i_14 
       (.I0(\q[28]_i_2_n_0 ),
        .I1(\q_reg[15]_16 ),
        .I2(B_adder0[6]),
        .I3(B_adder1__3),
        .I4(B_adder__95[23]),
        .O(\q[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[29]_i_15 
       (.I0(\q[29]_i_17_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[29]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[29]_i_17 
       (.I0(\q[29]_i_19_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_0 ),
        .O(\q[29]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[29]_i_19 
       (.I0(\q[29]_i_20_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[29]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[29]_i_1__1 
       (.I0(\q[29]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(ALUCode_ex[4]),
        .I4(ALUCode_ex[3]),
        .I5(\q[29]_i_3_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[29]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [24]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[24]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [24]),
        .O(\q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[29]_i_20 
       (.I0(\q[29]_i_21_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[29]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[29]_i_21 
       (.I0(\q[29]_i_22_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[29]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \q[29]_i_22 
       (.I0(\q_reg[15]_17 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[29]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[29]_i_3 
       (.I0(\q_reg[3]_33 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[29]_i_5_n_0 ),
        .O(\q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[29]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_17 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [29]),
        .O(\q[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABBB5444A8885777)) 
    \q[29]_i_9 
       (.I0(\q[29]_i_13_n_0 ),
        .I1(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co0 ),
        .I2(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I3(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co1 ),
        .I4(\q[29]_i_2_n_0 ),
        .I5(\q[29]_i_14_n_0 ),
        .O(\EX/ALU/sum [29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_11 
       (.I0(\q[9]_i_11_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[5]_i_11_n_0 ),
        .O(\q[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[2]_i_12 
       (.I0(\q[7]_i_11_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[2]_i_20_n_0 ),
        .I3(\q_reg[3]_0 ),
        .I4(\q[2]_i_21_n_0 ),
        .O(\q[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_13 
       (.I0(\q[8]_i_11_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[4]_i_12_n_0 ),
        .O(\q[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[2]_i_14 
       (.I0(\q[6]_i_11_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[2]_i_22_n_0 ),
        .I3(\q_reg[3]_0 ),
        .I4(\q[2]_i_23_n_0 ),
        .O(\q[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[2]_i_1__3 
       (.I0(\q[2]_i_2__0_n_0 ),
        .I1(ALUCode_ex[3]),
        .I2(\q[2]_i_3_n_0 ),
        .I3(ALUCode_ex[4]),
        .I4(\q[2]_i_4_n_0 ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_20 
       (.I0(\q[11]_i_16_n_0 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q[11]_i_17_n_0 ),
        .O(\q[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_21 
       (.I0(\q[11]_i_15_n_0 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q[2]_i_39_n_0 ),
        .O(\q[2]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_22 
       (.I0(\q[10]_i_18_n_0 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q[10]_i_19_n_0 ),
        .O(\q[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_23 
       (.I0(\q[10]_i_17_n_0 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q[2]_i_40_n_0 ),
        .O(\q[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011001101)) 
    \q[2]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[2]_4 ),
        .I5(ALUCode_ex[4]),
        .O(\q[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \q[2]_i_3 
       (.I0(\EX/ALU/data11 [2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_3 ),
        .I4(Q[5]),
        .O(\q[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[2]_i_39 
       (.I0(\q[2]_i_41_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hE27E5395C05C4284)) 
    \q[2]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[2]_1 ),
        .I3(\q_reg[2]_4 ),
        .I4(Q[3]),
        .I5(\q_reg[2]_2 [1]),
        .O(\q[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[2]_i_40 
       (.I0(\q[2]_i_42_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[2]_i_41 
       (.I0(\q[2]_i_43_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[2]_i_42 
       (.I0(\q[2]_i_44_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[2]_i_43 
       (.I0(\q[2]_i_45_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[2]_i_44 
       (.I0(\q[2]_i_46_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_45 
       (.I0(\q[2]_i_47_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_46 
       (.I0(\q[2]_i_48_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_47 
       (.I0(\q[2]_i_49_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_48 
       (.I0(\q[2]_i_50_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_49 
       (.I0(\q[2]_i_51_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[2]_i_50 
       (.I0(\q[2]_i_52_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[2]_i_51 
       (.I0(\q_reg[3]_17 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[2]_i_52 
       (.I0(\q_reg[2]_4 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_i_7 
       (.I0(\q[2]_i_11_n_0 ),
        .I1(\q[2]_i_12_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[2]_i_13_n_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(\q[2]_i_14_n_0 ),
        .O(\EX/ALU/data11 [2]));
  LUT6 #(
    .INIT(64'h4DDD4DDDDDDD4D4D)) 
    \q[30]_i_11 
       (.I0(\q[29]_i_2_n_0 ),
        .I1(B_adder__95[23]),
        .I2(\q[28]_i_2_n_0 ),
        .I3(\q_reg[15]_16 ),
        .I4(B_adder0[6]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi_1 ));
  LUT5 #(
    .INIT(32'hEF0EAF0A)) 
    \q[30]_i_12 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I2(\q[27]_i_2_n_0 ),
        .I3(B_adder__95[22]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_6 ));
  LUT6 #(
    .INIT(64'h444D444D4D4D4444)) 
    \q[30]_i_14 
       (.I0(\q[29]_i_2_n_0 ),
        .I1(B_adder__95[23]),
        .I2(\q[28]_i_2_n_0 ),
        .I3(\q_reg[15]_16 ),
        .I4(B_adder0[6]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi_1 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[30]_i_1__1 
       (.I0(\q[30]_i_2_n_0 ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q_reg[5]_4 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[30]_i_4_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[30]_i_2 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [25]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[25]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [25]),
        .O(\q[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \q[30]_i_20 
       (.I0(\q[30]_i_26_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_2 ),
        .O(\q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[30]_i_26 
       (.I0(\q[30]_i_27_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[30]_i_27 
       (.I0(\q[30]_i_28_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[30]_i_28 
       (.I0(\q[30]_i_29_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[30]_i_29 
       (.I0(\q[30]_i_30_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[30]_i_30 
       (.I0(\q[30]_i_31_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[30]_i_31 
       (.I0(\q_reg[15]_18 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[30]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[30]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_18 ),
        .I3(\q[30]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [30]),
        .O(\q[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[30]_i_7 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi_1 ),
        .I1(\EX/ALU/adder_32bits_ALU/cio_6 ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(B_adder__95[24]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [30]));
  LUT6 #(
    .INIT(64'hABBB5444A8885777)) 
    \q[31]_i_10 
       (.I0(\q[31]_i_18_n_0 ),
        .I1(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co0 ),
        .I2(\EX/ALU/adder_32bits_ALU/cio_5 ),
        .I3(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co1 ),
        .I4(\q_reg[31] ),
        .I5(\q[31]_i_22_n_0 ),
        .O(\EX/ALU/sum [31]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \q[31]_i_15 
       (.I0(\q[31]_i_24_n_0 ),
        .I1(\q[29]_i_2_n_0 ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q_reg[31] ),
        .I4(\q[31]_i_25_n_0 ),
        .I5(\q[31]_i_26_n_0 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8E718E8E7171718E)) 
    \q[31]_i_18 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi_1 ),
        .I1(B_adder__95[24]),
        .I2(\q[30]_i_2_n_0 ),
        .I3(B_adder1__3),
        .I4(B_adder0[7]),
        .I5(\q_reg[15]_2 ),
        .O(\q[31]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_19 
       (.I0(\q[27]_i_2_n_0 ),
        .I1(B_adder__95[22]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \q[31]_i_1__1 
       (.I0(\q_reg[31] ),
        .I1(\q[31]_i_3__2_n_0 ),
        .I2(ALUCode_ex[3]),
        .I3(\q[31]_i_4__1_n_0 ),
        .I4(ALUCode_ex[4]),
        .I5(\q[31]_i_5__0_n_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \q[31]_i_20 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/co0 ),
        .I1(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/co0 ),
        .I2(\EX/ALU/adder_32bits_ALU/cio_3 ),
        .I3(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/co1 ),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/co1 ),
        .O(\EX/ALU/adder_32bits_ALU/cio_5 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_21 
       (.I0(\q[27]_i_2_n_0 ),
        .I1(B_adder__95[22]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/co1 ));
  LUT6 #(
    .INIT(64'h8E718E8E7171718E)) 
    \q[31]_i_22 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi_1 ),
        .I1(B_adder__95[24]),
        .I2(\q[30]_i_2_n_0 ),
        .I3(B_adder1__3),
        .I4(B_adder0[7]),
        .I5(\q_reg[15]_2 ),
        .O(\q[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \q[31]_i_24 
       (.I0(\q[26]_i_2_n_0 ),
        .I1(\q[25]_i_2_n_0 ),
        .I2(\q[28]_i_2_n_0 ),
        .I3(\q[27]_i_2_n_0 ),
        .I4(\q[31]_i_43_n_0 ),
        .O(\q[31]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \q[31]_i_25 
       (.I0(\q[10]_i_7_n_0 ),
        .I1(\q[9]_i_7_n_0 ),
        .I2(\q[12]_i_7_n_0 ),
        .I3(\q[11]_i_7_n_0 ),
        .I4(\q[31]_i_44_n_0 ),
        .O(\q[31]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \q[31]_i_26 
       (.I0(\q[18]_i_2_n_0 ),
        .I1(\q[17]_i_2_n_0 ),
        .I2(\q[20]_i_2_n_0 ),
        .I3(\q[19]_i_2_n_0 ),
        .I4(\q[31]_i_45_n_0 ),
        .O(\q[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[31]_i_2__1 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [26]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[26]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [26]),
        .O(\q_reg[31] ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_37 
       (.I0(\q[26]_i_2_n_0 ),
        .I1(B_adder__95[21]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi_2 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_38 
       (.I0(\q[23]_i_2_n_0 ),
        .I1(B_adder__95[18]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/co0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_39 
       (.I0(\q[19]_i_2_n_0 ),
        .I1(B_adder__95[14]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/co0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[31]_i_3__2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\q[31]_i_3__2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_40 
       (.I0(\q[19]_i_2_n_0 ),
        .I1(B_adder__95[14]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst4/co1 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_41 
       (.I0(\q[23]_i_2_n_0 ),
        .I1(B_adder__95[18]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi_2 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst5/co1 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[31]_i_42 
       (.I0(\q[26]_i_2_n_0 ),
        .I1(B_adder__95[21]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi_2 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \q[31]_i_43 
       (.I0(\q[23]_i_2_n_0 ),
        .I1(\q[24]_i_2_n_0 ),
        .I2(\q[21]_i_2_n_0 ),
        .I3(\q[22]_i_2_n_0 ),
        .O(\q[31]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \q[31]_i_44 
       (.I0(\q[7]_i_7__1_n_0 ),
        .I1(\q[8]_i_7_n_0 ),
        .I2(\q_reg[5]_0 ),
        .I3(\q[6]_i_7_n_0 ),
        .O(\q[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \q[31]_i_45 
       (.I0(\q[15]_i_6_n_0 ),
        .I1(\q[16]_i_2_n_0 ),
        .I2(\q[13]_i_7_n_0 ),
        .I3(\q[14]_i_7_n_0 ),
        .O(\q[31]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00001F10)) 
    \q[31]_i_4__1 
       (.I0(\q_reg[15]_2 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\q_reg[3]_18 ),
        .I4(Q[5]),
        .O(\q[31]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h26EF355104CD2440)) 
    \q[31]_i_5__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[15]_2 ),
        .I3(\q_reg[31] ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [31]),
        .O(\q[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[3]_i_2__0 
       (.I0(\q_reg[3]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[3]_i_5_n_0 ),
        .O(\q[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011001101)) 
    \q[3]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[3]_0 ),
        .I4(\q_reg[3]_17 ),
        .I5(ALUCode_ex[4]),
        .O(\q[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hE27E5395C05C4284)) 
    \q[3]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[3]_0 ),
        .I3(\q_reg[3]_17 ),
        .I4(Q[3]),
        .I5(\q_reg[2]_2 [2]),
        .O(\q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \q[3]_i_9 
       (.I0(\q[2]_i_12_n_0 ),
        .I1(\q_reg[1]_0 ),
        .I2(\q[2]_i_11_n_0 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q[4]_i_8_n_0 ),
        .I5(Q[3]),
        .O(\q[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_i_12 
       (.I0(\q[12]_i_16_n_0 ),
        .I1(\q[12]_i_17_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[12]_i_15_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[4]_i_15_n_0 ),
        .O(\q[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[4]_i_15 
       (.I0(\q[4]_i_17_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[4]_i_17 
       (.I0(\q[4]_i_18_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[4]_i_18 
       (.I0(\q[4]_i_19_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[4]_i_19 
       (.I0(\q[4]_i_20_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[4]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[4]_i_2 
       (.I0(\q[4]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[4]_i_5_n_0 ),
        .O(\q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[4]_i_20 
       (.I0(\q[4]_i_21_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[4]_i_21 
       (.I0(\q[4]_i_22_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[4]_i_22 
       (.I0(\q_reg[4]_1 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011001101)) 
    \q[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(ALUCode_ex[4]),
        .O(\q[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[4]_i_4 
       (.I0(\q[4]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[5]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_7 ),
        .O(\q[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE27E5395C05C4284)) 
    \q[4]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[4]_1 ),
        .I4(Q[3]),
        .I5(\q_reg[2]_2 [3]),
        .O(\q[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_i_8 
       (.I0(\q[10]_i_11_n_0 ),
        .I1(\q[6]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[8]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[4]_i_12_n_0 ),
        .O(\q[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_i_11 
       (.I0(\q[13]_i_18_n_0 ),
        .I1(\q[13]_i_19_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[13]_i_17_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[5]_i_16_n_0 ),
        .O(\q[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[5]_i_16 
       (.I0(\q[5]_i_18_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[5]_i_18 
       (.I0(\q[5]_i_19_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[5]_i_19 
       (.I0(\q[5]_i_20_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[5]_i_20 
       (.I0(\q[5]_i_21_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[5]_i_21 
       (.I0(\q[5]_i_22_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[5]_i_22 
       (.I0(\q[5]_i_23_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[5]_i_23 
       (.I0(\q_reg[5]_3 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[5]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[5]_i_2__0 
       (.I0(\q[5]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[5]_i_5_n_0 ),
        .O(\q[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[5]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[5]_3 ),
        .I4(\q_reg[5]_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[5]_i_4 
       (.I0(\q[5]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[6]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_6 ),
        .O(\q[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[5]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[5]_3 ),
        .I3(\q_reg[5]_0 ),
        .I4(Q[3]),
        .I5(\q_reg[2]_2 [4]),
        .O(\q[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[5]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [0]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[0]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [0]),
        .O(\q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_i_8 
       (.I0(\q[11]_i_12_n_0 ),
        .I1(\q[7]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[9]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[5]_i_11_n_0 ),
        .O(\q[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[6]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_1 ),
        .I1(cio_0),
        .I2(\q[6]_i_7_n_0 ),
        .I3(B_adder__95[1]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/sum [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_i_11 
       (.I0(\q_reg[5]_1 ),
        .I1(\q[14]_i_14_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[6]_i_17_n_0 ),
        .O(\q[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD4DDD4DDDDDDD4D4)) 
    \q[6]_i_14 
       (.I0(\q_reg[5]_0 ),
        .I1(B_adder__95[0]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[4]_1 ),
        .I4(B_adder0[0]),
        .I5(B_adder1__3),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_1 ));
  LUT6 #(
    .INIT(64'h4D4DDD4444444444)) 
    \q[6]_i_16 
       (.I0(\q_reg[5]_0 ),
        .I1(B_adder__95[0]),
        .I2(\q_reg[4]_1 ),
        .I3(B_adder0[0]),
        .I4(B_adder1__3),
        .I5(\q_reg[4]_0 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_1 ));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \q[6]_i_17 
       (.I0(\q[6]_i_19_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_2 ),
        .O(\q[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[6]_i_19 
       (.I0(\q[6]_i_20_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[6]_i_20 
       (.I0(\q[6]_i_21_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[6]_i_21 
       (.I0(\q[6]_i_22_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[6]_i_22 
       (.I0(\q[6]_i_23_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[6]_i_23 
       (.I0(\q[6]_i_24_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[6]_i_24 
       (.I0(\q_reg[0]_3 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[6]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[6]_i_2__0 
       (.I0(\q[6]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[6]_i_5_n_0 ),
        .O(\q[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[6]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[0]_3 ),
        .I4(\q[6]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[6]_i_4 
       (.I0(\q[6]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[7]_i_8__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_5 ),
        .O(\q[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[6]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[0]_3 ),
        .I3(\q[6]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [6]),
        .O(\q[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[6]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[1]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [1]),
        .O(\q[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_i_8 
       (.I0(\q[12]_i_12_n_0 ),
        .I1(\q[8]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[10]_i_11_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[6]_i_11_n_0 ),
        .O(\q[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB47887)) 
    \q[7]_i_10__0 
       (.I0(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_2 ),
        .I1(cio_0),
        .I2(\q[7]_i_7__1_n_0 ),
        .I3(B_adder__95[2]),
        .I4(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_2 ),
        .O(\EX/ALU/sum [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[7]_i_11 
       (.I0(\q[15]_i_27_n_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(\q[7]_i_18_n_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q[7]_i_19_n_0 ),
        .O(\q[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[7]_i_14 
       (.I0(\q[6]_i_7_n_0 ),
        .I1(B_adder__95[1]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi_2 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \q[7]_i_17 
       (.I0(\q[6]_i_7_n_0 ),
        .I1(B_adder__95[1]),
        .I2(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_1 ),
        .O(\EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi_2 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[7]_i_18 
       (.I0(\q[23]_i_19_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_20 ),
        .O(\q[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[7]_i_19 
       (.I0(\q[7]_i_21_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[7]_i_21 
       (.I0(\q[7]_i_22_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[7]_i_22 
       (.I0(\q[7]_i_23_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[7]_i_23 
       (.I0(\q[7]_i_24_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[7]_i_24 
       (.I0(\q[7]_i_25_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[7]_i_25 
       (.I0(\q[7]_i_26_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[7]_i_26 
       (.I0(\q_reg[1]_1 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[7]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[7]_i_2__2 
       (.I0(\q[7]_i_4__1_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[7]_i_5__1_n_0 ),
        .O(\q[7]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[7]_i_3__1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[1]_1 ),
        .I4(\q[7]_i_7__1_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[7]_i_4__1 
       (.I0(\q[7]_i_8__0_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[8]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_4 ),
        .O(\q[7]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[7]_i_5__1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[1]_1 ),
        .I3(\q[7]_i_7__1_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [7]),
        .O(\q[7]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[7]_i_7__1 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [2]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[2]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [2]),
        .O(\q[7]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_i_8__0 
       (.I0(\q[13]_i_12_n_0 ),
        .I1(\q[9]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[11]_i_12_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[7]_i_11_n_0 ),
        .O(\q[7]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'h995A66A5)) 
    \q[8]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_1 ),
        .I1(\q_reg[2]_3 ),
        .I2(B_adder0[1]),
        .I3(B_adder1__3),
        .I4(\q[8]_i_7_n_0 ),
        .O(\EX/ALU/sum [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_i_11 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[8]_i_15_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[8]_i_16_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[8]_i_17_n_0 ),
        .O(\q[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[8]_i_15 
       (.I0(\q[16]_i_21_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[8]_i_16 
       (.I0(\q[24]_i_22_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[8]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[8]_i_17 
       (.I0(\q[8]_i_24_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[8]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[8]_i_2 
       (.I0(\q[8]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[8]_i_5_n_0 ),
        .O(\q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[8]_i_24 
       (.I0(\q[8]_i_25_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[8]_i_25 
       (.I0(\q[8]_i_26_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[8]_i_26 
       (.I0(\q[8]_i_27_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[8]_i_27 
       (.I0(\q[8]_i_28_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[8]_i_28 
       (.I0(\q[8]_i_29_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[8]_i_29 
       (.I0(\q_reg[2]_3 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[8]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[2]_3 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[8]_i_4 
       (.I0(\q[8]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[9]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_15 ),
        .O(\q[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[8]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[2]_3 ),
        .I3(\q[8]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [8]),
        .O(\q[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[8]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [3]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[3]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [3]),
        .O(\q[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_i_8 
       (.I0(\q[14]_i_11_n_0 ),
        .I1(\q[10]_i_11_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[12]_i_12_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[8]_i_11_n_0 ),
        .O(\q[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69C33C69)) 
    \q[9]_i_10 
       (.I0(\EX/ALU/adder_32bits_ALU/cio_1 ),
        .I1(\q[9]_i_7_n_0 ),
        .I2(B_adder__95[4]),
        .I3(B_adder__95[3]),
        .I4(\q[8]_i_7_n_0 ),
        .O(\EX/ALU/sum [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_i_11 
       (.I0(\q_reg[15]_0 ),
        .I1(\q[9]_i_16_n_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(\q[9]_i_17_n_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q[9]_i_18_n_0 ),
        .O(\q[9]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[9]_i_16 
       (.I0(\q[17]_i_17_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[9]_i_17 
       (.I0(\q[25]_i_19_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[9]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \q[9]_i_18 
       (.I0(\q[9]_i_21_n_0 ),
        .I1(\q[7]_i_7__1_n_0 ),
        .I2(\q[6]_i_7_n_0 ),
        .I3(\q_reg[5]_0 ),
        .I4(\q_reg[15]_0 ),
        .O(\q[9]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[9]_i_2 
       (.I0(\q[9]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(ALUCode_ex[4]),
        .I3(\q[9]_i_5_n_0 ),
        .O(\q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[9]_i_21 
       (.I0(\q[9]_i_22_n_0 ),
        .I1(\q[11]_i_7_n_0 ),
        .I2(\q[10]_i_7_n_0 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(\q[8]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[9]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \q[9]_i_22 
       (.I0(\q[9]_i_23_n_0 ),
        .I1(\q[15]_i_6_n_0 ),
        .I2(\q[14]_i_7_n_0 ),
        .I3(\q[13]_i_7_n_0 ),
        .I4(\q[12]_i_7_n_0 ),
        .I5(\q_reg[15]_1 ),
        .O(\q[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[9]_i_23 
       (.I0(\q[9]_i_24_n_0 ),
        .I1(\q[19]_i_2_n_0 ),
        .I2(\q[18]_i_2_n_0 ),
        .I3(\q[17]_i_2_n_0 ),
        .I4(\q[16]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[9]_i_24 
       (.I0(\q[9]_i_25_n_0 ),
        .I1(\q[23]_i_2_n_0 ),
        .I2(\q[22]_i_2_n_0 ),
        .I3(\q[21]_i_2_n_0 ),
        .I4(\q[20]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h80000000BFFFFFFF)) 
    \q[9]_i_25 
       (.I0(\q[9]_i_26_n_0 ),
        .I1(\q[27]_i_2_n_0 ),
        .I2(\q[26]_i_2_n_0 ),
        .I3(\q[25]_i_2_n_0 ),
        .I4(\q[24]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h400000007FFFFFFF)) 
    \q[9]_i_26 
       (.I0(\q_reg[3]_16 ),
        .I1(\q_reg[31] ),
        .I2(\q[30]_i_2_n_0 ),
        .I3(\q[29]_i_2_n_0 ),
        .I4(\q[28]_i_2_n_0 ),
        .I5(\q_reg[15]_2 ),
        .O(\q[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \q[9]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\q_reg[3]_16 ),
        .I4(\q[9]_i_7_n_0 ),
        .I5(ALUCode_ex[4]),
        .O(\q[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[9]_i_4 
       (.I0(\q[9]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[10]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_reg[3]_14 ),
        .O(\q[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2EE735590CC52448)) 
    \q[9]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[3]_16 ),
        .I3(\q[9]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ALU/sum [9]),
        .O(\q[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \q[9]_i_7 
       (.I0(Q[2]),
        .I1(\q_reg[31]_0 [4]),
        .I2(ForwardA_0),
        .I3(RegWriteData_wb[4]),
        .I4(ForwardA_1),
        .I5(\q_reg[31]_1 [4]),
        .O(\q[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_i_8 
       (.I0(\q[11]_i_11_n_0 ),
        .I1(\q[11]_i_12_n_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q[13]_i_12_n_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[9]_i_11_n_0 ),
        .O(\q[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [0]),
        .Q(Q[0]),
        .R(SR));
  MUXF7 \q_reg[10]_i_1 
       (.I0(\q[10]_i_2_n_0 ),
        .I1(\q[10]_i_3_n_0 ),
        .O(D[10]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[11]_i_1 
       (.I0(\q[11]_i_2_n_0 ),
        .I1(\q[11]_i_3_n_0 ),
        .O(D[11]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[12]_i_1 
       (.I0(\q[12]_i_2_n_0 ),
        .I1(\q[12]_i_3_n_0 ),
        .O(D[12]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[13]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(\q[13]_i_3_n_0 ),
        .O(D[13]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[14]_i_1 
       (.I0(\q[14]_i_2_n_0 ),
        .I1(\q[14]_i_3_n_0 ),
        .O(D[14]),
        .S(ALUCode_ex[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [1]),
        .Q(Q[1]),
        .R(SR));
  MUXF7 \q_reg[1]_i_1 
       (.I0(\q[1]_i_2__0_n_0 ),
        .I1(\q[1]_i_3_n_0 ),
        .O(D[1]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[1]_i_4 
       (.I0(\q_reg[3]_1 ),
        .I1(\q[1]_i_9_n_0 ),
        .O(\q_reg[1]_i_4_n_0 ),
        .S(Q[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [3]),
        .Q(Q[3]),
        .R(SR));
  MUXF7 \q_reg[3]_i_1 
       (.I0(\q[3]_i_2__0_n_0 ),
        .I1(\q[3]_i_3__0_n_0 ),
        .O(D[3]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[3]_i_4 
       (.I0(\q_reg[3]_2 ),
        .I1(\q[3]_i_9_n_0 ),
        .O(\q_reg[3]_i_4_n_0 ),
        .S(Q[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [4]),
        .Q(Q[4]),
        .R(SR));
  MUXF7 \q_reg[4]_i_1 
       (.I0(\q[4]_i_2_n_0 ),
        .I1(\q[4]_i_3_n_0 ),
        .O(D[4]),
        .S(ALUCode_ex[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [5]),
        .Q(Q[5]),
        .R(SR));
  MUXF7 \q_reg[5]_i_1 
       (.I0(\q[5]_i_2__0_n_0 ),
        .I1(\q[5]_i_3__0_n_0 ),
        .O(D[5]),
        .S(ALUCode_ex[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [6]),
        .Q(ALUCode_ex[3]),
        .R(SR));
  MUXF7 \q_reg[6]_i_1 
       (.I0(\q[6]_i_2__0_n_0 ),
        .I1(\q[6]_i_3_n_0 ),
        .O(D[6]),
        .S(ALUCode_ex[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[0]_4 [7]),
        .Q(ALUCode_ex[4]),
        .R(SR));
  MUXF7 \q_reg[7]_i_1 
       (.I0(\q[7]_i_2__2_n_0 ),
        .I1(\q[7]_i_3__1_n_0 ),
        .O(D[7]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[8]_i_1 
       (.I0(\q[8]_i_2_n_0 ),
        .I1(\q[8]_i_3_n_0 ),
        .O(D[8]),
        .S(ALUCode_ex[3]));
  MUXF7 \q_reg[9]_i_1 
       (.I0(\q[9]_i_2_n_0 ),
        .I1(\q[9]_i_3_n_0 ),
        .O(D[9]),
        .S(ALUCode_ex[3]));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized1
   (\q_reg[12] ,
    \q_reg[16] ,
    \q_reg[1]_0 ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[3]_0 ,
    \q_reg[2]_0 ,
    \q_reg[1]_1 ,
    \q_reg[3]_1 ,
    \q_reg[4]_0 ,
    \q_reg[2]_1 ,
    \q_reg[7] ,
    \q_reg[6] ,
    \q_reg[5] ,
    \q_reg[4]_1 ,
    \q_reg[8] ,
    \q_reg[10] ,
    \q_reg[9] ,
    \q_reg[8]_0 ,
    \q_reg[1]_2 ,
    \q_reg[31] ,
    \q_reg[29] ,
    \q_reg[28] ,
    \q_reg[27] ,
    \q_reg[25] ,
    \q_reg[24] ,
    \q_reg[23] ,
    \q_reg[22] ,
    \q_reg[21] ,
    \q_reg[20] ,
    \q_reg[9]_0 ,
    \q_reg[6]_0 ,
    \q_reg[10]_0 ,
    \q_reg[7]_0 ,
    B_adder__95,
    \q_reg[31]_0 ,
    \q_reg[31]_1 ,
    \q_reg[23]_0 ,
    \q_reg[2]_2 ,
    \q_reg[25]_0 ,
    \q_reg[30] ,
    \q_reg[26] ,
    \q_reg[19] ,
    \q_reg[16]_0 ,
    \q_reg[15] ,
    \q_reg[13] ,
    \q_reg[14] ,
    \q_reg[11] ,
    \q_reg[12]_0 ,
    \q_reg[17] ,
    \q_reg[18] ,
    SR,
    Q,
    clk_out1,
    \q_reg[0]_2 ,
    CO,
    \q_reg[12]_1 ,
    \q_reg[2]_3 ,
    \q_reg[5]_0 ,
    \q_reg[2]_4 ,
    \q_reg[0]_3 ,
    \q_reg[2]_5 ,
    \q_reg[2]_6 ,
    \q_reg[2]_7 ,
    \q_reg[4]_2 ,
    \q_reg[4]_3 ,
    \q_reg[2]_8 ,
    \q_reg[2]_9 ,
    \q_reg[1]_3 ,
    B_adder1__3,
    \q_reg[2]_10 ,
    \q_reg[2]_11 ,
    \q_reg[15]_0 ,
    \q_reg[2]_12 ,
    \q_reg[1]_4 ,
    \q_reg[12]_2 ,
    \q_reg[15]_1 ,
    \q_reg[3]_2 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q_reg[13]_0 ,
    \q_reg[15]_2 ,
    \q_reg[14]_0 ,
    \q_reg[15]_3 ,
    \q_reg[11]_0 ,
    \q_reg[15]_4 ,
    \q_reg[11]_1 ,
    \q_reg[15]_5 ,
    \q_reg[15]_6 ,
    MemWriteData_ex,
    \q_reg[15]_7 ,
    \q_reg[15]_8 ,
    \q_reg[15]_9 ,
    \q_reg[15]_10 ,
    \q_reg[15]_11 ,
    \q_reg[3]_3 ,
    \q_reg[2]_13 ,
    \q_reg[1]_5 ,
    \q_reg[15]_12 ,
    \q_reg[15]_13 ,
    \q_reg[15]_14 ,
    \q_reg[15]_15 ,
    \q_reg[15]_16 ,
    \q_reg[15]_17 ,
    \q_reg[15]_18 ,
    \q_reg[15]_19 ,
    \q_reg[15]_20 ,
    D,
    ForwardA_1,
    \q_reg[0]_4 ,
    \q_reg[4]_4 ,
    \q_reg[3]_4 ,
    \q_reg[2]_14 ,
    \q_reg[1]_6 ,
    \q_reg[12]_3 ,
    \q_reg[13]_1 ,
    \q_reg[2]_15 ,
    \q_reg[0]_5 ,
    \q_reg[4]_5 ,
    \q_reg[3]_5 ,
    \q_reg[1]_7 ,
    \q_reg[5]_3 ,
    \q_reg[15]_21 ,
    \q_reg[15]_22 ,
    \q_reg[15]_23 ,
    \q_reg[15]_24 ,
    \q_reg[15]_25 ,
    \q_reg[15]_26 ,
    \q_reg[15]_27 ,
    \q_reg[15]_28 ,
    \q_reg[15]_29 ,
    \q_reg[15]_30 ,
    \q_reg[15]_31 ,
    \q_reg[15]_32 ,
    \q_reg[4]_6 ,
    \q_reg[4]_7 ,
    \q_reg[4]_8 ,
    \q_reg[4]_9 ,
    \q_reg[4]_10 ,
    \q_reg[4]_11 );
  output [3:0]\q_reg[12] ;
  output [0:0]\q_reg[16] ;
  output \q_reg[1]_0 ;
  output \q_reg[0]_0 ;
  output \q_reg[0]_1 ;
  output \q_reg[3]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[3]_1 ;
  output \q_reg[4]_0 ;
  output \q_reg[2]_1 ;
  output \q_reg[7] ;
  output \q_reg[6] ;
  output \q_reg[5] ;
  output \q_reg[4]_1 ;
  output \q_reg[8] ;
  output \q_reg[10] ;
  output \q_reg[9] ;
  output \q_reg[8]_0 ;
  output [0:0]\q_reg[1]_2 ;
  output \q_reg[31] ;
  output \q_reg[29] ;
  output \q_reg[28] ;
  output \q_reg[27] ;
  output \q_reg[25] ;
  output \q_reg[24] ;
  output \q_reg[23] ;
  output \q_reg[22] ;
  output \q_reg[21] ;
  output \q_reg[20] ;
  output \q_reg[9]_0 ;
  output \q_reg[6]_0 ;
  output \q_reg[10]_0 ;
  output \q_reg[7]_0 ;
  output [4:0]B_adder__95;
  output \q_reg[31]_0 ;
  output \q_reg[31]_1 ;
  output \q_reg[23]_0 ;
  output \q_reg[2]_2 ;
  output [6:0]\q_reg[25]_0 ;
  output \q_reg[30] ;
  output \q_reg[26] ;
  output \q_reg[19] ;
  output \q_reg[16]_0 ;
  output \q_reg[15] ;
  output \q_reg[13] ;
  output \q_reg[14] ;
  output \q_reg[11] ;
  output \q_reg[12]_0 ;
  output \q_reg[17] ;
  output \q_reg[18] ;
  input [0:0]SR;
  input [4:0]Q;
  input clk_out1;
  input [0:0]\q_reg[0]_2 ;
  input [0:0]CO;
  input [2:0]\q_reg[12]_1 ;
  input \q_reg[2]_3 ;
  input [4:0]\q_reg[5]_0 ;
  input \q_reg[2]_4 ;
  input \q_reg[0]_3 ;
  input \q_reg[2]_5 ;
  input \q_reg[2]_6 ;
  input \q_reg[2]_7 ;
  input \q_reg[4]_2 ;
  input \q_reg[4]_3 ;
  input \q_reg[2]_8 ;
  input \q_reg[2]_9 ;
  input \q_reg[1]_3 ;
  input B_adder1__3;
  input \q_reg[2]_10 ;
  input \q_reg[2]_11 ;
  input \q_reg[15]_0 ;
  input \q_reg[2]_12 ;
  input \q_reg[1]_4 ;
  input \q_reg[12]_2 ;
  input \q_reg[15]_1 ;
  input \q_reg[3]_2 ;
  input \q_reg[5]_1 ;
  input \q_reg[5]_2 ;
  input \q_reg[13]_0 ;
  input \q_reg[15]_2 ;
  input \q_reg[14]_0 ;
  input \q_reg[15]_3 ;
  input \q_reg[11]_0 ;
  input \q_reg[15]_4 ;
  input \q_reg[11]_1 ;
  input \q_reg[15]_5 ;
  input \q_reg[15]_6 ;
  input [4:0]MemWriteData_ex;
  input \q_reg[15]_7 ;
  input \q_reg[15]_8 ;
  input \q_reg[15]_9 ;
  input \q_reg[15]_10 ;
  input \q_reg[15]_11 ;
  input \q_reg[3]_3 ;
  input \q_reg[2]_13 ;
  input \q_reg[1]_5 ;
  input \q_reg[15]_12 ;
  input \q_reg[15]_13 ;
  input \q_reg[15]_14 ;
  input \q_reg[15]_15 ;
  input \q_reg[15]_16 ;
  input \q_reg[15]_17 ;
  input \q_reg[15]_18 ;
  input \q_reg[15]_19 ;
  input \q_reg[15]_20 ;
  input [4:0]D;
  input ForwardA_1;
  input \q_reg[0]_4 ;
  input \q_reg[4]_4 ;
  input \q_reg[3]_4 ;
  input \q_reg[2]_14 ;
  input \q_reg[1]_6 ;
  input \q_reg[12]_3 ;
  input \q_reg[13]_1 ;
  input \q_reg[2]_15 ;
  input \q_reg[0]_5 ;
  input \q_reg[4]_5 ;
  input \q_reg[3]_5 ;
  input \q_reg[1]_7 ;
  input \q_reg[5]_3 ;
  input \q_reg[15]_21 ;
  input \q_reg[15]_22 ;
  input \q_reg[15]_23 ;
  input \q_reg[15]_24 ;
  input \q_reg[15]_25 ;
  input \q_reg[15]_26 ;
  input \q_reg[15]_27 ;
  input \q_reg[15]_28 ;
  input \q_reg[15]_29 ;
  input \q_reg[15]_30 ;
  input \q_reg[15]_31 ;
  input \q_reg[15]_32 ;
  input \q_reg[4]_6 ;
  input \q_reg[4]_7 ;
  input \q_reg[4]_8 ;
  input \q_reg[4]_9 ;
  input \q_reg[4]_10 ;
  input \q_reg[4]_11 ;

  wire B_adder1__3;
  wire [4:0]B_adder__95;
  wire [0:0]CO;
  wire [4:0]D;
  wire [10:6]\EX/ALU/B_adder0 ;
  wire [10:6]\EX/ALU/p_0_in ;
  wire ForwardA_1;
  wire [4:0]MemWriteData_ex;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [4:0]Sa_ex;
  wire clk_out1;
  wire \q[10]_i_12_n_0 ;
  wire \q[10]_i_13_n_0 ;
  wire \q[10]_i_21_n_0 ;
  wire \q[10]_i_22_n_0 ;
  wire \q[11]_i_19_n_0 ;
  wire \q[12]_i_19_n_0 ;
  wire \q[13]_i_21_n_0 ;
  wire \q[14]_i_16_n_0 ;
  wire \q[15]_i_19_n_0 ;
  wire \q[16]_i_15_n_0 ;
  wire \q[17]_i_16_n_0 ;
  wire \q[17]_i_19_n_0 ;
  wire \q[18]_i_17_n_0 ;
  wire \q[18]_i_20_n_0 ;
  wire \q[19]_i_20_n_0 ;
  wire \q[1]_i_12_n_0 ;
  wire \q[20]_i_11_n_0 ;
  wire \q[20]_i_14_n_0 ;
  wire \q[21]_i_10_n_0 ;
  wire \q[21]_i_11_n_0 ;
  wire \q[21]_i_16_n_0 ;
  wire \q[22]_i_10_n_0 ;
  wire \q[22]_i_11_n_0 ;
  wire \q[22]_i_17_n_0 ;
  wire \q[23]_i_10_n_0 ;
  wire \q[23]_i_11_n_0 ;
  wire \q[23]_i_18_n_0 ;
  wire \q[23]_i_9_n_0 ;
  wire \q[24]_i_10_n_0 ;
  wire \q[24]_i_11_n_0 ;
  wire \q[24]_i_15_n_0 ;
  wire \q[24]_i_16_n_0 ;
  wire \q[24]_i_17_n_0 ;
  wire \q[24]_i_9_n_0 ;
  wire \q[25]_i_10_n_0 ;
  wire \q[25]_i_11_n_0 ;
  wire \q[25]_i_12_n_0 ;
  wire \q[25]_i_16_n_0 ;
  wire \q[25]_i_17_n_0 ;
  wire \q[25]_i_18_n_0 ;
  wire \q[25]_i_9_n_0 ;
  wire \q[26]_i_10_n_0 ;
  wire \q[26]_i_11_n_0 ;
  wire \q[26]_i_12_n_0 ;
  wire \q[26]_i_18_n_0 ;
  wire \q[26]_i_19_n_0 ;
  wire \q[26]_i_20_n_0 ;
  wire \q[26]_i_5_n_0 ;
  wire \q[26]_i_6_n_0 ;
  wire \q[27]_i_11_n_0 ;
  wire \q[27]_i_6_n_0 ;
  wire \q[27]_i_7_n_0 ;
  wire \q[28]_i_11_n_0 ;
  wire \q[28]_i_12_n_0 ;
  wire \q[28]_i_15_n_0 ;
  wire \q[28]_i_6_n_0 ;
  wire \q[28]_i_7_n_0 ;
  wire \q[29]_i_11_n_0 ;
  wire \q[29]_i_12_n_0 ;
  wire \q[29]_i_16_n_0 ;
  wire \q[29]_i_6_n_0 ;
  wire \q[29]_i_7_n_0 ;
  wire \q[2]_i_15_n_0 ;
  wire \q[2]_i_16_n_0 ;
  wire \q[2]_i_17_n_0 ;
  wire \q[2]_i_24_n_0 ;
  wire \q[2]_i_32_n_0 ;
  wire \q[2]_i_33_n_0 ;
  wire \q[30]_i_10_n_0 ;
  wire \q[30]_i_16_n_0 ;
  wire \q[30]_i_17_n_0 ;
  wire \q[30]_i_21_n_0 ;
  wire \q[30]_i_5_n_0 ;
  wire \q[30]_i_8_n_0 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[3]_i_12_n_0 ;
  wire \q[4]_i_13_n_0 ;
  wire \q[4]_i_14_n_0 ;
  wire \q[4]_i_16_n_0 ;
  wire \q[5]_i_13_n_0 ;
  wire \q[5]_i_17_n_0 ;
  wire \q[6]_i_12_n_0 ;
  wire \q[6]_i_13_n_0 ;
  wire \q[6]_i_18_n_0 ;
  wire \q[7]_i_13_n_0 ;
  wire \q[7]_i_20_n_0 ;
  wire \q[8]_i_12_n_0 ;
  wire \q[8]_i_13_n_0 ;
  wire \q[8]_i_19_n_0 ;
  wire \q[9]_i_13_n_0 ;
  wire \q[9]_i_20_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire [0:0]\q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[10] ;
  wire \q_reg[11] ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [3:0]\q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire [2:0]\q_reg[12]_1 ;
  wire \q_reg[12]_2 ;
  wire \q_reg[12]_3 ;
  wire \q_reg[13] ;
  wire \q_reg[13]_0 ;
  wire \q_reg[13]_1 ;
  wire \q_reg[14] ;
  wire \q_reg[14]_0 ;
  wire \q_reg[15] ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[15]_10 ;
  wire \q_reg[15]_11 ;
  wire \q_reg[15]_12 ;
  wire \q_reg[15]_13 ;
  wire \q_reg[15]_14 ;
  wire \q_reg[15]_15 ;
  wire \q_reg[15]_16 ;
  wire \q_reg[15]_17 ;
  wire \q_reg[15]_18 ;
  wire \q_reg[15]_19 ;
  wire \q_reg[15]_2 ;
  wire \q_reg[15]_20 ;
  wire \q_reg[15]_21 ;
  wire \q_reg[15]_22 ;
  wire \q_reg[15]_23 ;
  wire \q_reg[15]_24 ;
  wire \q_reg[15]_25 ;
  wire \q_reg[15]_26 ;
  wire \q_reg[15]_27 ;
  wire \q_reg[15]_28 ;
  wire \q_reg[15]_29 ;
  wire \q_reg[15]_3 ;
  wire \q_reg[15]_30 ;
  wire \q_reg[15]_31 ;
  wire \q_reg[15]_32 ;
  wire \q_reg[15]_4 ;
  wire \q_reg[15]_5 ;
  wire \q_reg[15]_6 ;
  wire \q_reg[15]_7 ;
  wire \q_reg[15]_8 ;
  wire \q_reg[15]_9 ;
  wire [0:0]\q_reg[16] ;
  wire \q_reg[16]_0 ;
  wire \q_reg[17] ;
  wire \q_reg[18] ;
  wire \q_reg[19] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire [0:0]\q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[20] ;
  wire \q_reg[21] ;
  wire \q_reg[22] ;
  wire \q_reg[23] ;
  wire \q_reg[23]_0 ;
  wire \q_reg[24] ;
  wire \q_reg[25] ;
  wire [6:0]\q_reg[25]_0 ;
  wire \q_reg[26] ;
  wire \q_reg[27] ;
  wire \q_reg[28] ;
  wire \q_reg[29] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_10 ;
  wire \q_reg[2]_11 ;
  wire \q_reg[2]_12 ;
  wire \q_reg[2]_13 ;
  wire \q_reg[2]_14 ;
  wire \q_reg[2]_15 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire \q_reg[2]_7 ;
  wire \q_reg[2]_8 ;
  wire \q_reg[2]_9 ;
  wire \q_reg[30] ;
  wire \q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_10 ;
  wire \q_reg[4]_11 ;
  wire \q_reg[4]_2 ;
  wire \q_reg[4]_3 ;
  wire \q_reg[4]_4 ;
  wire \q_reg[4]_5 ;
  wire \q_reg[4]_6 ;
  wire \q_reg[4]_7 ;
  wire \q_reg[4]_8 ;
  wire \q_reg[4]_9 ;
  wire \q_reg[5] ;
  wire [4:0]\q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_i_14_n_0 ;
  wire \q_reg[9] ;
  wire [2:0]\NLW_q_reg[16]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[8]_i_14_CO_UNCONNECTED ;

  assign \q_reg[10]_0  = \EX/ALU/p_0_in [10];
  assign \q_reg[6]_0  = \EX/ALU/p_0_in [6];
  assign \q_reg[7]_0  = \EX/ALU/p_0_in [7];
  assign \q_reg[8]  = \EX/ALU/p_0_in [8];
  assign \q_reg[9]_0  = \EX/ALU/p_0_in [9];
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[0]_i_13 
       (.I0(\q_reg[2]_1 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[1]_1 ),
        .O(\q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \q[0]_i_5 
       (.I0(Sa_ex[0]),
        .I1(D[0]),
        .I2(ForwardA_1),
        .I3(\q_reg[0]_4 ),
        .I4(\q_reg[5]_0 [1]),
        .O(\q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[10]_i_12 
       (.I0(\q_reg[15]_28 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[10]_i_21_n_0 ),
        .I3(\q_reg[15]_29 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[10]_i_13 
       (.I0(\q[10]_i_22_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[12]_i_19_n_0 ),
        .I3(\q[11]_i_19_n_0 ),
        .I4(\q[13]_i_21_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[10]_i_15 
       (.I0(\EX/ALU/p_0_in [10]),
        .I1(\EX/ALU/B_adder0 [10]),
        .I2(B_adder1__3),
        .O(B_adder__95[4]));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[10]_i_21 
       (.I0(\q_reg[15]_3 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[15]_11 ),
        .I3(\q_reg[4]_0 ),
        .I4(\EX/ALU/p_0_in [10]),
        .O(\q[10]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[10]_i_22 
       (.I0(\q_reg[3]_2 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\EX/ALU/p_0_in [7]),
        .I4(\q_reg[3]_1 ),
        .O(\q[10]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[10]_i_6 
       (.I0(Sa_ex[4]),
        .I1(MemWriteData_ex[4]),
        .I2(\q_reg[5]_0 [0]),
        .O(\EX/ALU/p_0_in [10]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[10]_i_9 
       (.I0(\q[10]_i_12_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[2]_8 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[10]_i_13_n_0 ),
        .O(\q_reg[10] ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[11]_i_14 
       (.I0(\q[12]_i_19_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[14]_i_16_n_0 ),
        .I3(\q[11]_i_19_n_0 ),
        .I4(\q[13]_i_21_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[11] ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[11]_i_19 
       (.I0(\q_reg[4]_2 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[0]_3 ),
        .I3(\q_reg[3]_1 ),
        .I4(\EX/ALU/p_0_in [8]),
        .I5(\q_reg[4]_0 ),
        .O(\q[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[12]_i_14 
       (.I0(\q[12]_i_19_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[14]_i_16_n_0 ),
        .I3(\q[13]_i_21_n_0 ),
        .I4(\q[15]_i_19_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[12]_i_19 
       (.I0(\q_reg[5]_1 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[1]_3 ),
        .I3(\q_reg[3]_1 ),
        .I4(\EX/ALU/p_0_in [9]),
        .I5(\q_reg[4]_0 ),
        .O(\q[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[13]_i_14 
       (.I0(\q[14]_i_16_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[16]_i_15_n_0 ),
        .I3(\q[13]_i_21_n_0 ),
        .I4(\q[15]_i_19_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[13] ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[13]_i_21 
       (.I0(\EX/ALU/p_0_in [6]),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[2]_5 ),
        .I3(\q_reg[3]_1 ),
        .I4(\EX/ALU/p_0_in [10]),
        .I5(\q_reg[4]_0 ),
        .O(\q[13]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[14]_i_13 
       (.I0(\q[14]_i_16_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[16]_i_15_n_0 ),
        .I3(\q[15]_i_19_n_0 ),
        .I4(\q[17]_i_16_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[14] ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[14]_i_16 
       (.I0(\EX/ALU/p_0_in [7]),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[11]_0 ),
        .I5(\q_reg[4]_0 ),
        .O(\q[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[15]_i_12 
       (.I0(\q[16]_i_15_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[18]_i_17_n_0 ),
        .I3(\q[15]_i_19_n_0 ),
        .I4(\q[17]_i_16_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[15] ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[15]_i_19 
       (.I0(\q_reg[0]_3 ),
        .I1(\q_reg[3]_1 ),
        .I2(\EX/ALU/p_0_in [8]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[4]_3 ),
        .O(\q[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[15]_i_7 
       (.I0(\q_reg[3]_3 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[2]_13 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q_reg[1]_5 ),
        .O(\q_reg[25]_0 [0]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[16]_i_11 
       (.I0(\q[16]_i_15_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[18]_i_17_n_0 ),
        .I3(\q[17]_i_16_n_0 ),
        .I4(\q[19]_i_20_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[16]_i_15 
       (.I0(\q_reg[1]_3 ),
        .I1(\q_reg[3]_1 ),
        .I2(\EX/ALU/p_0_in [9]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[5]_2 ),
        .O(\q[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[17]_i_11 
       (.I0(\q[18]_i_17_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[20]_i_14_n_0 ),
        .I3(\q[17]_i_16_n_0 ),
        .I4(\q[19]_i_20_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[17] ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[17]_i_16 
       (.I0(\q_reg[2]_5 ),
        .I1(\q_reg[3]_1 ),
        .I2(\EX/ALU/p_0_in [10]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[17]_i_19_n_0 ),
        .O(\q[17]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[17]_i_19 
       (.I0(\EX/ALU/p_0_in [6]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[14]_0 ),
        .I3(\q_reg[4]_0 ),
        .O(\q[17]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[18]_i_11 
       (.I0(\q[18]_i_17_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[20]_i_14_n_0 ),
        .I3(\q[19]_i_20_n_0 ),
        .I4(\q[21]_i_16_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q_reg[18] ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[18]_i_17 
       (.I0(\q_reg[3]_2 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[11]_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[18]_i_20_n_0 ),
        .O(\q[18]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[18]_i_20 
       (.I0(\EX/ALU/p_0_in [7]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[15]_4 ),
        .I3(\q_reg[4]_0 ),
        .O(\q[18]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[19]_i_12 
       (.I0(\q[19]_i_20_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[21]_i_16_n_0 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q[20]_i_11_n_0 ),
        .O(\q_reg[19] ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[19]_i_20 
       (.I0(\q_reg[4]_2 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[12]_2 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[23]_i_18_n_0 ),
        .O(\q[19]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h995A995A66A5995A)) 
    \q[1]_i_10 
       (.I0(\q_reg[1]_1 ),
        .I1(\q_reg[1]_3 ),
        .I2(\q_reg[0]_2 ),
        .I3(B_adder1__3),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[0]_3 ),
        .O(\q_reg[1]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_12 
       (.I0(\q_reg[0]_1 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[2]_i_32_n_0 ),
        .O(\q[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \q[1]_i_6 
       (.I0(Sa_ex[1]),
        .I1(D[1]),
        .I2(ForwardA_1),
        .I3(\q_reg[1]_6 ),
        .I4(\q_reg[5]_0 [1]),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[1]_i_8 
       (.I0(\q_reg[2]_3 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[2]_i_15_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[1]_i_12_n_0 ),
        .O(\q_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[20]_i_11 
       (.I0(\q[20]_i_14_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[22]_i_17_n_0 ),
        .O(\q[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[20]_i_14 
       (.I0(\q_reg[5]_1 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[13]_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[24]_i_17_n_0 ),
        .O(\q[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[20]_i_5 
       (.I0(\q[23]_i_9_n_0 ),
        .I1(\q_reg[15]_12 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q_reg[15]_13 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q_reg[15]_14 ),
        .O(\q_reg[25]_0 [1]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[20]_i_6 
       (.I0(\q_reg[1]_4 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[21]_i_11_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[20]_i_11_n_0 ),
        .O(\q_reg[20] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[21]_i_10 
       (.I0(\q[24]_i_16_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[15]_30 ),
        .I3(\q_reg[15]_31 ),
        .I4(\q_reg[15]_32 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[21]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[21]_i_11 
       (.I0(\q[23]_i_18_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[12]_3 ),
        .I3(\q[21]_i_16_n_0 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[21]_i_16 
       (.I0(\EX/ALU/p_0_in [6]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[14]_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q[25]_i_18_n_0 ),
        .O(\q[21]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[21]_i_5 
       (.I0(\q[24]_i_9_n_0 ),
        .I1(\q_reg[15]_13 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[23]_i_9_n_0 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q_reg[15]_12 ),
        .O(\q_reg[25]_0 [2]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[21]_i_6 
       (.I0(\q[21]_i_10_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[22]_i_11_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[21]_i_11_n_0 ),
        .O(\q_reg[21] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[22]_i_10 
       (.I0(\q[25]_i_17_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[15]_31 ),
        .I3(\q[24]_i_16_n_0 ),
        .I4(\q_reg[15]_30 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[22]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[22]_i_11 
       (.I0(\q[24]_i_17_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[13]_1 ),
        .I3(\q[22]_i_17_n_0 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[22]_i_17 
       (.I0(\EX/ALU/p_0_in [7]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[15]_4 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[11]_1 ),
        .O(\q[22]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[22]_i_5 
       (.I0(\q[25]_i_10_n_0 ),
        .I1(\q[23]_i_9_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[24]_i_9_n_0 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q_reg[15]_13 ),
        .O(\q_reg[25]_0 [3]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[22]_i_6 
       (.I0(\q[22]_i_10_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[23]_i_11_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[22]_i_11_n_0 ),
        .O(\q_reg[22] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[23]_i_10 
       (.I0(\q[24]_i_15_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[24]_i_16_n_0 ),
        .I3(\q[25]_i_17_n_0 ),
        .I4(\q_reg[15]_31 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[23]_i_11 
       (.I0(\q[25]_i_18_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[26]_i_20_n_0 ),
        .I3(\q[23]_i_18_n_0 ),
        .I4(\q_reg[12]_3 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[23]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[23]_i_18 
       (.I0(\EX/ALU/p_0_in [8]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[0]_3 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[15]_1 ),
        .O(\q[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[23]_i_5 
       (.I0(\q_reg[15]_15 ),
        .I1(\q[24]_i_9_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[25]_i_10_n_0 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[23]_i_9_n_0 ),
        .O(\q_reg[25]_0 [4]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[23]_i_6 
       (.I0(\q[23]_i_10_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[24]_i_11_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[23]_i_11_n_0 ),
        .O(\q_reg[23] ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \q[23]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_6 ),
        .I3(\q_reg[4]_7 ),
        .I4(\q_reg[2]_1 ),
        .O(\q[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[24]_i_10 
       (.I0(\q[25]_i_16_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[25]_i_17_n_0 ),
        .I3(\q[24]_i_15_n_0 ),
        .I4(\q[24]_i_16_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[24]_i_11 
       (.I0(\q_reg[11]_1 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[23]_0 ),
        .I3(\q[24]_i_17_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[24]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[24]_i_15 
       (.I0(\q_reg[15]_6 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[15]_11 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[24]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[24]_i_16 
       (.I0(\q_reg[15]_16 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[15]_9 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[24]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[24]_i_17 
       (.I0(\EX/ALU/p_0_in [9]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[1]_3 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[15]_2 ),
        .O(\q[24]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[24]_i_5 
       (.I0(\q[25]_i_9_n_0 ),
        .I1(\q[25]_i_10_n_0 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q_reg[15]_15 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[24]_i_9_n_0 ),
        .O(\q_reg[25]_0 [5]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[24]_i_6 
       (.I0(\q[24]_i_10_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[25]_i_12_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[24]_i_11_n_0 ),
        .O(\q_reg[24] ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \q[24]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_8 ),
        .I3(\q_reg[4]_9 ),
        .I4(\q_reg[2]_1 ),
        .O(\q[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \q[25]_i_10 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_10 ),
        .I3(\q_reg[4]_11 ),
        .I4(\q_reg[2]_1 ),
        .O(\q[25]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[25]_i_11 
       (.I0(\q[25]_i_16_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[25]_i_17_n_0 ),
        .I3(\q[26]_i_19_n_0 ),
        .I4(\q_reg[0]_0 ),
        .O(\q[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[25]_i_12 
       (.I0(\q[25]_i_18_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[26]_i_20_n_0 ),
        .I3(\q_reg[12]_3 ),
        .I4(\q_reg[0]_5 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[25]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[25]_i_16 
       (.I0(\q_reg[15]_8 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[15]_18 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[25]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[25]_i_17 
       (.I0(\q_reg[15]_17 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[15]_10 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[25]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[25]_i_18 
       (.I0(\EX/ALU/p_0_in [10]),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[2]_5 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[15]_3 ),
        .O(\q[25]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[25]_i_5 
       (.I0(\q[26]_i_10_n_0 ),
        .I1(\q_reg[15]_15 ),
        .I2(\q_reg[0]_0 ),
        .I3(\q[25]_i_9_n_0 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[25]_i_10_n_0 ),
        .O(\q_reg[25]_0 [6]));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[25]_i_6 
       (.I0(\q[25]_i_11_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q_reg[2]_12 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[25]_i_12_n_0 ),
        .O(\q_reg[25] ));
  LUT4 #(
    .INIT(16'hAAB8)) 
    \q[25]_i_9 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_6 ),
        .I3(\q_reg[2]_1 ),
        .O(\q[25]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAB8)) 
    \q[26]_i_10 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_8 ),
        .I3(\q_reg[2]_1 ),
        .O(\q[26]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[26]_i_11 
       (.I0(\q[26]_i_18_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[26]_i_19_n_0 ),
        .O(\q[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[26]_i_12 
       (.I0(\q[26]_i_20_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[2]_15 ),
        .I3(\q_reg[12]_3 ),
        .I4(\q_reg[0]_5 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[26]_i_18 
       (.I0(\q_reg[3]_1 ),
        .I1(\q_reg[15]_17 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[25]_i_16_n_0 ),
        .O(\q[26]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[26]_i_19 
       (.I0(\q_reg[3]_1 ),
        .I1(\q_reg[15]_16 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[24]_i_15_n_0 ),
        .O(\q[26]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[26]_i_20 
       (.I0(\q_reg[14]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\EX/ALU/p_0_in [6]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[15]_5 ),
        .O(\q[26]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[26]_i_23 
       (.I0(\q_reg[15]_4 ),
        .I1(\q_reg[3]_1 ),
        .I2(\EX/ALU/p_0_in [7]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[15]_7 ),
        .O(\q_reg[23]_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \q[26]_i_3 
       (.I0(\q[26]_i_5_n_0 ),
        .I1(\q_reg[5]_0 [3]),
        .I2(\q[26]_i_6_n_0 ),
        .I3(\q_reg[5]_0 [4]),
        .O(\q_reg[26] ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \q[26]_i_5 
       (.I0(\q_reg[15]_15 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[26]_i_10_n_0 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q[27]_i_6_n_0 ),
        .I5(\q_reg[5]_0 [2]),
        .O(\q[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[26]_i_6 
       (.I0(\q[26]_i_11_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[26]_i_12_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[2]_12 ),
        .O(\q[26]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[27]_i_11 
       (.I0(\q[28]_i_15_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[26]_i_18_n_0 ),
        .O(\q[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[27]_i_4 
       (.I0(\q[27]_i_6_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[28]_i_6_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[5]_0 [3]),
        .I5(\q[27]_i_7_n_0 ),
        .O(\q_reg[27] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8B8BB88)) 
    \q[27]_i_6 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_10 ),
        .I3(\q_reg[4]_6 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[27]_i_7 
       (.I0(\q[27]_i_11_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[28]_i_12_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[26]_i_12_n_0 ),
        .O(\q[27]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[28]_i_11 
       (.I0(\q[29]_i_16_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[28]_i_15_n_0 ),
        .O(\q[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[28]_i_12 
       (.I0(\q_reg[23]_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[3]_5 ),
        .I3(\q_reg[13]_1 ),
        .I4(\q_reg[1]_7 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000407)) 
    \q[28]_i_15 
       (.I0(\q_reg[15]_6 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[15]_16 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[28]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[28]_i_4 
       (.I0(\q[28]_i_6_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[29]_i_6_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[5]_0 [3]),
        .I5(\q[28]_i_7_n_0 ),
        .O(\q_reg[28] ));
  LUT6 #(
    .INIT(64'hAAAAAAAABB88B8B8)) 
    \q[28]_i_6 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_8 ),
        .I3(\q_reg[15]_20 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[28]_i_7 
       (.I0(\q[28]_i_11_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[29]_i_12_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[28]_i_12_n_0 ),
        .O(\q[28]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[29]_i_11 
       (.I0(\q[30]_i_21_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[29]_i_16_n_0 ),
        .O(\q[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[29]_i_12 
       (.I0(\q[26]_i_20_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[2]_15 ),
        .I3(\q_reg[0]_5 ),
        .I4(\q_reg[4]_5 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000080B)) 
    \q[29]_i_16 
       (.I0(\q_reg[15]_19 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[15]_17 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[29]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[29]_i_4 
       (.I0(\q[29]_i_6_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[30]_i_8_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[5]_0 [3]),
        .I5(\q[29]_i_7_n_0 ),
        .O(\q_reg[29] ));
  LUT5 #(
    .INIT(32'hAAAAAAB8)) 
    \q[29]_i_6 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[4]_10 ),
        .I3(\q_reg[1]_1 ),
        .I4(\q_reg[2]_1 ),
        .O(\q[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[29]_i_7 
       (.I0(\q[29]_i_11_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q[30]_i_17_n_0 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[29]_i_12_n_0 ),
        .O(\q[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[2]_i_15 
       (.I0(\q[2]_i_24_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[15]_21 ),
        .I3(\q_reg[15]_22 ),
        .I4(\q_reg[15]_23 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[2]_i_16 
       (.I0(\q_reg[2]_2 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[15]_24 ),
        .I3(\q_reg[15]_25 ),
        .I4(\q_reg[15]_26 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[2]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_17 
       (.I0(\q[2]_i_32_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[2]_i_33_n_0 ),
        .O(\q[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[2]_i_24 
       (.I0(\q_reg[15]_1 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[15]_9 ),
        .I3(\q_reg[4]_0 ),
        .I4(\EX/ALU/p_0_in [8]),
        .O(\q[2]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[2]_i_28 
       (.I0(\q_reg[15]_2 ),
        .I1(\q_reg[3]_1 ),
        .I2(\q_reg[15]_10 ),
        .I3(\q_reg[4]_0 ),
        .I4(\EX/ALU/p_0_in [9]),
        .O(\q_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[2]_i_32 
       (.I0(\q_reg[2]_1 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q_reg[1]_3 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000407)) 
    \q[2]_i_33 
       (.I0(\q_reg[0]_3 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[2]_5 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[2]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \q[2]_i_5 
       (.I0(Sa_ex[2]),
        .I1(D[2]),
        .I2(ForwardA_1),
        .I3(\q_reg[2]_14 ),
        .I4(\q_reg[5]_0 [1]),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[2]_i_8 
       (.I0(\q[2]_i_15_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[2]_i_16_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[2]_i_17_n_0 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0808080B080)) 
    \q[30]_i_10 
       (.I0(\q[30]_i_16_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q_reg[2]_11 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q[30]_i_17_n_0 ),
        .O(\q[30]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[30]_i_16 
       (.I0(\q[31]_i_14_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[30]_i_21_n_0 ),
        .O(\q[30]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[30]_i_17 
       (.I0(\q_reg[23]_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[3]_5 ),
        .I3(\q_reg[1]_7 ),
        .I4(\q_reg[5]_3 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[30]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[30]_i_21 
       (.I0(\q_reg[2]_1 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q_reg[15]_6 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[30]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_3 
       (.I0(\q[30]_i_5_n_0 ),
        .I1(\q_reg[5]_0 [4]),
        .O(\q_reg[30] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \q[30]_i_5 
       (.I0(\q[30]_i_8_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[15]_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[5]_0 [3]),
        .I5(\q[30]_i_10_n_0 ),
        .O(\q[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \q[30]_i_8 
       (.I0(\q_reg[1]_1 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[15]_0 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[15]_20 ),
        .O(\q[30]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_14 
       (.I0(\q_reg[2]_1 ),
        .I1(\q_reg[4]_0 ),
        .I2(\q_reg[15]_8 ),
        .I3(\q_reg[3]_1 ),
        .I4(\q_reg[1]_1 ),
        .O(\q[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_30 
       (.I0(\EX/ALU/p_0_in [7]),
        .I1(\q_reg[15]_7 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[15]_4 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[15]_8 ),
        .O(\q_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_34 
       (.I0(\EX/ALU/p_0_in [6]),
        .I1(\q_reg[15]_5 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[14]_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[15]_6 ),
        .O(\q_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h3030B0800000B080)) 
    \q[31]_i_9 
       (.I0(\q[31]_i_14_n_0 ),
        .I1(\q_reg[5]_0 [2]),
        .I2(\q_reg[2]_4 ),
        .I3(\q_reg[2]_10 ),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[2]_11 ),
        .O(\q_reg[31] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_12 
       (.I0(\q[2]_i_33_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[4]_i_16_n_0 ),
        .O(\q[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \q[3]_i_6 
       (.I0(Sa_ex[3]),
        .I1(D[3]),
        .I2(ForwardA_1),
        .I3(\q_reg[3]_4 ),
        .I4(\q_reg[5]_0 [1]),
        .O(\q_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[3]_i_8 
       (.I0(\q[2]_i_16_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[4]_i_13_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[3]_i_12_n_0 ),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[4]_i_13 
       (.I0(\q[10]_i_21_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[15]_22 ),
        .I3(\q[2]_i_24_n_0 ),
        .I4(\q_reg[15]_21 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[4]_i_14 
       (.I0(\q[4]_i_16_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[5]_i_17_n_0 ),
        .O(\q[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000407)) 
    \q[4]_i_16 
       (.I0(\q_reg[1]_3 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q_reg[3]_1 ),
        .I3(\q_reg[3]_2 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \q[4]_i_6 
       (.I0(Sa_ex[4]),
        .I1(D[4]),
        .I2(ForwardA_1),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[5]_0 [1]),
        .O(\q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[4]_i_9 
       (.I0(\q[4]_i_13_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[2]_7 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[4]_i_14_n_0 ),
        .O(\q_reg[4]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[5]_i_13 
       (.I0(\q[5]_i_17_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[6]_i_18_n_0 ),
        .O(\q[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[5]_i_17 
       (.I0(\q_reg[3]_1 ),
        .I1(\q_reg[2]_5 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[7]_i_20_n_0 ),
        .O(\q[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[5]_i_9 
       (.I0(\q_reg[2]_7 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[6]_i_12_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[5]_i_13_n_0 ),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[6]_i_12 
       (.I0(\q_reg[15]_27 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[2]_i_24_n_0 ),
        .I3(\q[10]_i_21_n_0 ),
        .I4(\q_reg[15]_22 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[6]_i_13 
       (.I0(\q[7]_i_20_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[9]_i_20_n_0 ),
        .I3(\q[6]_i_18_n_0 ),
        .I4(\q_reg[0]_0 ),
        .O(\q[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[6]_i_15 
       (.I0(\EX/ALU/p_0_in [6]),
        .I1(\EX/ALU/B_adder0 [6]),
        .I2(B_adder1__3),
        .O(B_adder__95[0]));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[6]_i_18 
       (.I0(\q_reg[3]_1 ),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[1]_1 ),
        .I5(\q[8]_i_19_n_0 ),
        .O(\q[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[6]_i_6 
       (.I0(Sa_ex[0]),
        .I1(MemWriteData_ex[0]),
        .I2(\q_reg[5]_0 [0]),
        .O(\EX/ALU/p_0_in [6]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[6]_i_9 
       (.I0(\q[6]_i_12_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[2]_6 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[6]_i_13_n_0 ),
        .O(\q_reg[6] ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[7]_i_13 
       (.I0(\q[8]_i_19_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[10]_i_22_n_0 ),
        .I3(\q[7]_i_20_n_0 ),
        .I4(\q[9]_i_20_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[7]_i_16 
       (.I0(\EX/ALU/p_0_in [7]),
        .I1(\EX/ALU/B_adder0 [7]),
        .I2(B_adder1__3),
        .O(B_adder__95[1]));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[7]_i_20 
       (.I0(\q_reg[0]_3 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[4]_2 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[7]_i_6__1 
       (.I0(Sa_ex[1]),
        .I1(MemWriteData_ex[1]),
        .I2(\q_reg[5]_0 [0]),
        .O(\EX/ALU/p_0_in [7]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[7]_i_9__0 
       (.I0(\q_reg[2]_6 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[8]_i_12_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[7]_i_13_n_0 ),
        .O(\q_reg[7] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[8]_i_12 
       (.I0(\q_reg[15]_28 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q[10]_i_21_n_0 ),
        .I3(\q_reg[15]_27 ),
        .I4(\q[2]_i_24_n_0 ),
        .I5(\q_reg[1]_1 ),
        .O(\q[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[8]_i_13 
       (.I0(\q[8]_i_19_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[10]_i_22_n_0 ),
        .I3(\q[9]_i_20_n_0 ),
        .I4(\q[11]_i_19_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[8]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[8]_i_19 
       (.I0(\q_reg[1]_3 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[5]_1 ),
        .I4(\q_reg[3]_1 ),
        .O(\q[8]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[8]_i_6 
       (.I0(Sa_ex[2]),
        .I1(MemWriteData_ex[2]),
        .I2(\q_reg[5]_0 [0]),
        .O(\EX/ALU/p_0_in [8]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[8]_i_9 
       (.I0(\q[8]_i_12_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[2]_9 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[8]_i_13_n_0 ),
        .O(\q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[9]_i_13 
       (.I0(\q[10]_i_22_n_0 ),
        .I1(\q_reg[1]_1 ),
        .I2(\q[12]_i_19_n_0 ),
        .I3(\q[9]_i_20_n_0 ),
        .I4(\q[11]_i_19_n_0 ),
        .I5(\q_reg[0]_0 ),
        .O(\q[9]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[9]_i_14 
       (.I0(\EX/ALU/p_0_in [9]),
        .I1(\EX/ALU/B_adder0 [9]),
        .I2(B_adder1__3),
        .O(B_adder__95[3]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[9]_i_15 
       (.I0(\EX/ALU/p_0_in [8]),
        .I1(\q_reg[12] [1]),
        .I2(B_adder1__3),
        .O(B_adder__95[2]));
  LUT5 #(
    .INIT(32'h00000407)) 
    \q[9]_i_20 
       (.I0(\q_reg[2]_5 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[4]_0 ),
        .I3(\EX/ALU/p_0_in [6]),
        .I4(\q_reg[3]_1 ),
        .O(\q[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \q[9]_i_6 
       (.I0(Sa_ex[3]),
        .I1(MemWriteData_ex[3]),
        .I2(\q_reg[5]_0 [0]),
        .O(\EX/ALU/p_0_in [9]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[9]_i_9 
       (.I0(\q_reg[2]_9 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q[10]_i_12_n_0 ),
        .I3(\q_reg[5]_0 [2]),
        .I4(\q_reg[2]_4 ),
        .I5(\q[9]_i_13_n_0 ),
        .O(\q_reg[9] ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Sa_ex[0]),
        .R(SR));
  CARRY4 \q_reg[16]_i_16 
       (.CI(\q_reg[8]_i_14_n_0 ),
        .CO({\q_reg[16] ,\NLW_q_reg[16]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[12] [3:2],\EX/ALU/B_adder0 [10:9]}),
        .S({\q_reg[12]_1 [2:1],\EX/ALU/p_0_in [10:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Sa_ex[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Sa_ex[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Sa_ex[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Sa_ex[4]),
        .R(SR));
  CARRY4 \q_reg[8]_i_14 
       (.CI(CO),
        .CO({\q_reg[8]_i_14_n_0 ,\NLW_q_reg[8]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[12] [1],\EX/ALU/B_adder0 [7:6],\q_reg[12] [0]}),
        .S({\EX/ALU/p_0_in [8:6],\q_reg[12]_1 [0]}));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized10
   (Q,
    reset,
    MemWriteData_ex,
    clk);
  output [31:0]Q;
  input reset;
  input [31:0]MemWriteData_ex;
  input clk;

  wire [31:0]MemWriteData_ex;
  wire [31:0]Q;
  wire clk;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(MemWriteData_ex[9]),
        .Q(Q[9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized11
   (MemWriteData_ex,
    \q_reg[4]_0 ,
    ForwardA_1,
    \q_reg[31] ,
    D,
    RegWriteData_wb,
    ForwardB_00,
    Q,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    p_3_in,
    \q_reg[0]_0 ,
    reset,
    \q_reg[15] ,
    clk_out1);
  output [31:0]MemWriteData_ex;
  output [4:0]\q_reg[4]_0 ;
  output ForwardA_1;
  output \q_reg[31] ;
  input [31:0]D;
  input [31:0]RegWriteData_wb;
  input ForwardB_00;
  input [31:0]Q;
  input [4:0]\q_reg[4]_1 ;
  input [4:0]\q_reg[4]_2 ;
  input p_3_in;
  input [0:0]\q_reg[0]_0 ;
  input reset;
  input [4:0]\q_reg[15] ;
  input clk_out1;

  wire [31:0]D;
  wire \EX/ForwardB_1 ;
  wire \EX/p_5_in ;
  wire ForwardA_1;
  wire ForwardB_00;
  wire [31:0]MemWriteData_ex;
  wire [31:0]Q;
  wire [31:0]RegWriteData_wb;
  wire clk_out1;
  wire p_3_in;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_23_n_0 ;
  wire \q[31]_i_3__1_n_0 ;
  wire \q[31]_i_6__0_n_0 ;
  wire \q[31]_i_9__0_n_0 ;
  wire [0:0]\q_reg[0]_0 ;
  wire [4:0]\q_reg[15] ;
  wire \q_reg[31] ;
  wire [4:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire [4:0]\q_reg[4]_2 ;
  wire reset;

  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[0]_i_1__4 
       (.I0(D[0]),
        .I1(RegWriteData_wb[0]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[0]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[10]_i_1__1 
       (.I0(D[10]),
        .I1(RegWriteData_wb[10]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[10]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[11]_i_1__1 
       (.I0(D[11]),
        .I1(RegWriteData_wb[11]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[11]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[12]_i_1__1 
       (.I0(D[12]),
        .I1(RegWriteData_wb[12]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[12]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[13]_i_1__1 
       (.I0(D[13]),
        .I1(RegWriteData_wb[13]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[13]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[14]_i_1__1 
       (.I0(D[14]),
        .I1(RegWriteData_wb[14]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[14]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[15]_i_1__2 
       (.I0(D[15]),
        .I1(RegWriteData_wb[15]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[15]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[16]_i_1__2 
       (.I0(D[16]),
        .I1(RegWriteData_wb[16]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[16]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[17]_i_1__2 
       (.I0(D[17]),
        .I1(RegWriteData_wb[17]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[17]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[18]_i_1__2 
       (.I0(D[18]),
        .I1(RegWriteData_wb[18]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[18]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[19]_i_1__2 
       (.I0(D[19]),
        .I1(RegWriteData_wb[19]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[19]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[1]_i_1__2 
       (.I0(D[1]),
        .I1(RegWriteData_wb[1]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[1]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[20]_i_1__2 
       (.I0(D[20]),
        .I1(RegWriteData_wb[20]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[20]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[21]_i_1__2 
       (.I0(D[21]),
        .I1(RegWriteData_wb[21]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[21]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[22]_i_1__2 
       (.I0(D[22]),
        .I1(RegWriteData_wb[22]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[22]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[23]_i_1__2 
       (.I0(D[23]),
        .I1(RegWriteData_wb[23]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[23]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[24]_i_1__2 
       (.I0(D[24]),
        .I1(RegWriteData_wb[24]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[24]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[25]_i_1__2 
       (.I0(D[25]),
        .I1(RegWriteData_wb[25]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[25]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[26]_i_1__2 
       (.I0(D[26]),
        .I1(RegWriteData_wb[26]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[26]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[27]_i_1__2 
       (.I0(D[27]),
        .I1(RegWriteData_wb[27]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[27]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[28]_i_1__2 
       (.I0(D[28]),
        .I1(RegWriteData_wb[28]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[28]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[29]_i_1__2 
       (.I0(D[29]),
        .I1(RegWriteData_wb[29]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[29]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[2]_i_1__4 
       (.I0(D[2]),
        .I1(RegWriteData_wb[2]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[2]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[30]_i_1__2 
       (.I0(D[30]),
        .I1(RegWriteData_wb[30]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[30]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[30]));
  LUT5 #(
    .INIT(32'hFFF60000)) 
    \q[31]_i_12 
       (.I0(\q_reg[4]_2 [3]),
        .I1(\q_reg[4]_0 [3]),
        .I2(\q[31]_i_23_n_0 ),
        .I3(\q_reg[4]_0 [4]),
        .I4(p_3_in),
        .O(\q_reg[31] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_13 
       (.I0(\q_reg[4]_0 [0]),
        .I1(\q_reg[4]_2 [0]),
        .I2(\q_reg[4]_2 [2]),
        .I3(\q_reg[4]_0 [2]),
        .I4(\q_reg[4]_2 [1]),
        .I5(\q_reg[4]_0 [1]),
        .O(\q[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[31]_i_1__2 
       (.I0(D[31]),
        .I1(RegWriteData_wb[31]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[31]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[31]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_23 
       (.I0(\q_reg[4]_0 [1]),
        .I1(\q_reg[4]_2 [1]),
        .I2(\q_reg[4]_0 [2]),
        .I3(\q_reg[4]_2 [2]),
        .I4(\q_reg[4]_0 [0]),
        .I5(\q_reg[4]_2 [0]),
        .O(\q[31]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hEFFE0000)) 
    \q[31]_i_3__1 
       (.I0(\q_reg[4]_0 [4]),
        .I1(\q[31]_i_6__0_n_0 ),
        .I2(\q_reg[4]_1 [3]),
        .I3(\q_reg[4]_0 [3]),
        .I4(p_3_in),
        .O(\q[31]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'h00008200)) 
    \q[31]_i_4__2 
       (.I0(\EX/p_5_in ),
        .I1(\q_reg[4]_1 [3]),
        .I2(\q_reg[4]_0 [3]),
        .I3(\q[31]_i_9__0_n_0 ),
        .I4(\q_reg[4]_0 [4]),
        .O(\EX/ForwardB_1 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_6__0 
       (.I0(\q_reg[4]_0 [0]),
        .I1(\q_reg[4]_1 [0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_0 [2]),
        .I4(\q_reg[4]_1 [1]),
        .I5(\q_reg[4]_0 [1]),
        .O(\q[31]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h20000020)) 
    \q[31]_i_7 
       (.I0(\EX/p_5_in ),
        .I1(\q_reg[4]_0 [4]),
        .I2(\q[31]_i_13_n_0 ),
        .I3(\q_reg[4]_2 [3]),
        .I4(\q_reg[4]_0 [3]),
        .O(ForwardA_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \q[31]_i_8 
       (.I0(\q_reg[0]_0 ),
        .I1(\q_reg[4]_0 [2]),
        .I2(\q_reg[4]_0 [4]),
        .I3(\q_reg[4]_0 [0]),
        .I4(\q_reg[4]_0 [1]),
        .I5(\q_reg[4]_0 [3]),
        .O(\EX/p_5_in ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_9__0 
       (.I0(\q_reg[4]_0 [1]),
        .I1(\q_reg[4]_1 [1]),
        .I2(\q_reg[4]_0 [2]),
        .I3(\q_reg[4]_1 [2]),
        .I4(\q_reg[4]_0 [0]),
        .I5(\q_reg[4]_1 [0]),
        .O(\q[31]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[3]_i_1__3 
       (.I0(D[3]),
        .I1(RegWriteData_wb[3]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[3]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[4]_i_1__3 
       (.I0(D[4]),
        .I1(RegWriteData_wb[4]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[4]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[5]_i_1__3 
       (.I0(D[5]),
        .I1(RegWriteData_wb[5]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[5]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[6]_i_1__3 
       (.I0(D[6]),
        .I1(RegWriteData_wb[6]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[6]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[7]_i_1__2 
       (.I0(D[7]),
        .I1(RegWriteData_wb[7]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[7]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[8]_i_1__1 
       (.I0(D[8]),
        .I1(RegWriteData_wb[8]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[8]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFFFC000)) 
    \q[9]_i_1__1 
       (.I0(D[9]),
        .I1(RegWriteData_wb[9]),
        .I2(ForwardB_00),
        .I3(\q[31]_i_3__1_n_0 ),
        .I4(Q[9]),
        .I5(\EX/ForwardB_1 ),
        .O(MemWriteData_ex[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[15] [0]),
        .Q(\q_reg[4]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[15] [1]),
        .Q(\q_reg[4]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[15] [2]),
        .Q(\q_reg[4]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[15] [3]),
        .Q(\q_reg[4]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[15] [4]),
        .Q(\q_reg[4]_0 [4]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized12
   (D,
    \q_reg[11] ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    ForwardA_0,
    p_3_in,
    ForwardB_00,
    Q,
    \q_reg[11]_0 ,
    spo,
    RtData0,
    \q_reg[17] ,
    \q_reg[25] ,
    \q_reg[21] ,
    \q_reg[16] ,
    \q_reg[4]_0 ,
    \q_reg[3]_0 ,
    \q_reg[4]_1 ,
    reset,
    \q_reg[4]_2 ,
    clk_out1);
  output [0:0]D;
  output \q_reg[11] ;
  output \q_reg[0]_0 ;
  output [4:0]\q_reg[0]_1 ;
  output ForwardA_0;
  output p_3_in;
  output ForwardB_00;
  input [1:0]Q;
  input [0:0]\q_reg[11]_0 ;
  input [0:0]spo;
  input [0:0]RtData0;
  input \q_reg[17] ;
  input [3:0]\q_reg[25] ;
  input \q_reg[21] ;
  input \q_reg[16] ;
  input [4:0]\q_reg[4]_0 ;
  input \q_reg[3]_0 ;
  input [4:0]\q_reg[4]_1 ;
  input reset;
  input [4:0]\q_reg[4]_2 ;
  input clk_out1;

  wire [0:0]D;
  wire ForwardA_0;
  wire ForwardB_00;
  wire [1:0]Q;
  wire [0:0]RtData0;
  wire clk_out1;
  wire p_3_in;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_4_n_0 ;
  wire \q[31]_i_5__1_n_0 ;
  wire \q_reg[0]_0 ;
  wire [4:0]\q_reg[0]_1 ;
  wire \q_reg[11] ;
  wire [0:0]\q_reg[11]_0 ;
  wire \q_reg[16] ;
  wire \q_reg[17] ;
  wire \q_reg[21] ;
  wire [3:0]\q_reg[25] ;
  wire \q_reg[3]_0 ;
  wire [4:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire [4:0]\q_reg[4]_2 ;
  wire reset;
  wire [0:0]spo;

  LUT6 #(
    .INIT(64'hA820A820FD75A820)) 
    \q[11]_i_1 
       (.I0(\q_reg[11] ),
        .I1(Q[1]),
        .I2(\q_reg[11]_0 ),
        .I3(spo),
        .I4(RtData0),
        .I5(\q_reg[17] ),
        .O(D));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_11 
       (.I0(\q_reg[0]_1 [0]),
        .I1(\q_reg[4]_0 [0]),
        .I2(\q_reg[4]_0 [2]),
        .I3(\q_reg[0]_1 [2]),
        .I4(\q_reg[4]_0 [1]),
        .I5(\q_reg[0]_1 [1]),
        .O(\q[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h02000002)) 
    \q[31]_i_2 
       (.I0(\q[31]_i_4_n_0 ),
        .I1(\q_reg[0]_1 [4]),
        .I2(\q_reg[21] ),
        .I3(\q_reg[0]_1 [3]),
        .I4(\q_reg[25] [2]),
        .O(\q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h02000002)) 
    \q[31]_i_2__0 
       (.I0(\q[31]_i_4_n_0 ),
        .I1(\q_reg[0]_1 [4]),
        .I2(\q_reg[16] ),
        .I3(\q_reg[0]_1 [3]),
        .I4(\q_reg[25] [0]),
        .O(\q_reg[11] ));
  LUT4 #(
    .INIT(16'h0090)) 
    \q[31]_i_2__2 
       (.I0(\q_reg[0]_1 [3]),
        .I1(\q_reg[4]_1 [3]),
        .I2(\q[31]_i_5__1_n_0 ),
        .I3(\q_reg[0]_1 [4]),
        .O(ForwardB_00));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \q[31]_i_4 
       (.I0(Q[0]),
        .I1(\q_reg[0]_1 [2]),
        .I2(\q_reg[0]_1 [4]),
        .I3(\q_reg[0]_1 [1]),
        .I4(\q_reg[0]_1 [0]),
        .I5(\q_reg[0]_1 [3]),
        .O(\q[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_5__1 
       (.I0(\q_reg[0]_1 [0]),
        .I1(\q_reg[4]_1 [0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[0]_1 [2]),
        .I4(\q_reg[4]_1 [1]),
        .I5(\q_reg[0]_1 [1]),
        .O(\q[31]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h40040000)) 
    \q[31]_i_6 
       (.I0(\q_reg[0]_1 [4]),
        .I1(\q[31]_i_11_n_0 ),
        .I2(\q_reg[4]_0 [3]),
        .I3(\q_reg[0]_1 [3]),
        .I4(\q_reg[3]_0 ),
        .O(ForwardA_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \q[31]_i_7__0 
       (.I0(Q[0]),
        .I1(\q_reg[0]_1 [2]),
        .I2(\q_reg[0]_1 [4]),
        .I3(\q_reg[0]_1 [0]),
        .I4(\q_reg[0]_1 [1]),
        .I5(\q_reg[0]_1 [3]),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[4]_2 [0]),
        .Q(\q_reg[0]_1 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[4]_2 [1]),
        .Q(\q_reg[0]_1 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[4]_2 [2]),
        .Q(\q_reg[0]_1 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[4]_2 [3]),
        .Q(\q_reg[0]_1 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[4]_2 [4]),
        .Q(\q_reg[0]_1 [4]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized13
   (\q_reg[0]_0 ,
    RsData_id,
    D,
    \q_reg[11]_0 ,
    \q_reg[0]_1 ,
    \q_reg[1]_0 ,
    \q_reg[2]_0 ,
    \q_reg[3]_0 ,
    \q_reg[4]_0 ,
    RegWriteData_wb,
    \q_reg[26]_0 ,
    \q_reg[29]_0 ,
    \q_reg[28]_0 ,
    spo,
    Q,
    \q_reg[20]_0 ,
    RtData0,
    \q_reg[17]_0 ,
    \q_reg[11]_1 ,
    \q_reg[0]_2 ,
    \q_reg[25]_0 ,
    RsData0,
    \q_reg[25]_1 ,
    ForwardA_0,
    \q_reg[4]_1 ,
    reset,
    \q_reg[31]_0 ,
    clk_out1);
  output \q_reg[0]_0 ;
  output [31:0]RsData_id;
  output [30:0]D;
  output [0:0]\q_reg[11]_0 ;
  output \q_reg[0]_1 ;
  output \q_reg[1]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[4]_0 ;
  output [31:0]RegWriteData_wb;
  input \q_reg[26]_0 ;
  input [0:0]\q_reg[29]_0 ;
  input \q_reg[28]_0 ;
  input [31:0]spo;
  input [0:0]Q;
  input \q_reg[20]_0 ;
  input [30:0]RtData0;
  input \q_reg[17]_0 ;
  input \q_reg[11]_1 ;
  input \q_reg[0]_2 ;
  input \q_reg[25]_0 ;
  input [31:0]RsData0;
  input \q_reg[25]_1 ;
  input ForwardA_0;
  input [4:0]\q_reg[4]_1 ;
  input reset;
  input [31:0]\q_reg[31]_0 ;
  input clk_out1;

  wire [30:0]D;
  wire ForwardA_0;
  wire \PC_in_reg[7]_i_13_n_0 ;
  wire \PC_in_reg[7]_i_14_n_0 ;
  wire \PC_in_reg[7]_i_15_n_0 ;
  wire \PC_in_reg[7]_i_17_n_0 ;
  wire \PC_in_reg[7]_i_18_n_0 ;
  wire \PC_in_reg[7]_i_19_n_0 ;
  wire \PC_in_reg[7]_i_20_n_0 ;
  wire \PC_in_reg[7]_i_21_n_0 ;
  wire \PC_in_reg[7]_i_22_n_0 ;
  wire \PC_in_reg[7]_i_23_n_0 ;
  wire \PC_in_reg[7]_i_24_n_0 ;
  wire \PC_in_reg[7]_i_25_n_0 ;
  wire \PC_in_reg[7]_i_26_n_0 ;
  wire \PC_in_reg[7]_i_27_n_0 ;
  wire \PC_in_reg[7]_i_28_n_0 ;
  wire \PC_in_reg[7]_i_30_n_0 ;
  wire \PC_in_reg[7]_i_31_n_0 ;
  wire \PC_in_reg[7]_i_32_n_0 ;
  wire \PC_in_reg[7]_i_33_n_0 ;
  wire \PC_in_reg[7]_i_34_n_0 ;
  wire \PC_in_reg[7]_i_35_n_0 ;
  wire \PC_in_reg[7]_i_36_n_0 ;
  wire \PC_in_reg[7]_i_37_n_0 ;
  wire \PC_in_reg[7]_i_38_n_0 ;
  wire \PC_in_reg[7]_i_39_n_0 ;
  wire [0:0]Q;
  wire [31:0]RegWriteData_wb;
  wire [31:0]RsData0;
  wire [31:0]RsData_id;
  wire [30:0]RtData0;
  wire clk_out1;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire [0:0]\q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire \q_reg[17]_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[20]_0 ;
  wire \q_reg[25]_0 ;
  wire \q_reg[25]_1 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[28]_0 ;
  wire [0:0]\q_reg[29]_0 ;
  wire \q_reg[2]_0 ;
  wire [31:0]\q_reg[31]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[12] ;
  wire \q_reg_n_0_[13] ;
  wire \q_reg_n_0_[14] ;
  wire \q_reg_n_0_[15] ;
  wire \q_reg_n_0_[16] ;
  wire \q_reg_n_0_[17] ;
  wire \q_reg_n_0_[18] ;
  wire \q_reg_n_0_[19] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[20] ;
  wire \q_reg_n_0_[21] ;
  wire \q_reg_n_0_[22] ;
  wire \q_reg_n_0_[23] ;
  wire \q_reg_n_0_[24] ;
  wire \q_reg_n_0_[25] ;
  wire \q_reg_n_0_[26] ;
  wire \q_reg_n_0_[27] ;
  wire \q_reg_n_0_[28] ;
  wire \q_reg_n_0_[29] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[30] ;
  wire \q_reg_n_0_[31] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;
  wire reset;
  wire [31:0]spo;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \PC_in_reg[7]_i_13 
       (.I0(\PC_in_reg[7]_i_15_n_0 ),
        .I1(\q_reg[0]_2 ),
        .I2(RsData_id[22]),
        .I3(RsData_id[21]),
        .I4(\PC_in_reg[7]_i_17_n_0 ),
        .I5(\PC_in_reg[7]_i_18_n_0 ),
        .O(\PC_in_reg[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \PC_in_reg[7]_i_14 
       (.I0(\PC_in_reg[7]_i_19_n_0 ),
        .I1(\PC_in_reg[7]_i_20_n_0 ),
        .I2(\PC_in_reg[7]_i_21_n_0 ),
        .I3(\PC_in_reg[7]_i_22_n_0 ),
        .O(\PC_in_reg[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PC_in_reg[7]_i_15 
       (.I0(RsData_id[27]),
        .I1(RsData_id[24]),
        .I2(RsData_id[26]),
        .I3(RsData_id[25]),
        .I4(\PC_in_reg[7]_i_23_n_0 ),
        .O(\PC_in_reg[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_in_reg[7]_i_17 
       (.I0(RsData_id[18]),
        .I1(RsData_id[19]),
        .I2(RsData_id[16]),
        .I3(RsData_id[17]),
        .O(\PC_in_reg[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \PC_in_reg[7]_i_18 
       (.I0(\PC_in_reg[7]_i_24_n_0 ),
        .I1(RsData_id[9]),
        .I2(RsData_id[10]),
        .I3(RsData_id[8]),
        .I4(RsData_id[11]),
        .I5(\PC_in_reg[7]_i_25_n_0 ),
        .O(\PC_in_reg[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \PC_in_reg[7]_i_19 
       (.I0(\PC_in_reg[7]_i_26_n_0 ),
        .I1(RsData_id[3]),
        .I2(D[3]),
        .I3(RsData_id[2]),
        .I4(D[2]),
        .I5(\PC_in_reg[7]_i_27_n_0 ),
        .O(\PC_in_reg[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014000014)) 
    \PC_in_reg[7]_i_20 
       (.I0(\PC_in_reg[7]_i_28_n_0 ),
        .I1(RsData_id[11]),
        .I2(\q_reg[11]_1 ),
        .I3(RsData_id[10]),
        .I4(D[10]),
        .I5(\PC_in_reg[7]_i_30_n_0 ),
        .O(\PC_in_reg[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \PC_in_reg[7]_i_21 
       (.I0(\PC_in_reg[7]_i_31_n_0 ),
        .I1(RsData_id[22]),
        .I2(D[21]),
        .I3(RsData_id[23]),
        .I4(D[22]),
        .I5(\PC_in_reg[7]_i_32_n_0 ),
        .O(\PC_in_reg[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \PC_in_reg[7]_i_22 
       (.I0(\PC_in_reg[7]_i_33_n_0 ),
        .I1(RsData_id[26]),
        .I2(D[25]),
        .I3(RsData_id[27]),
        .I4(D[26]),
        .I5(\PC_in_reg[7]_i_34_n_0 ),
        .O(\PC_in_reg[7]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_in_reg[7]_i_23 
       (.I0(RsData_id[28]),
        .I1(RsData_id[29]),
        .I2(RsData_id[30]),
        .I3(RsData_id[31]),
        .O(\PC_in_reg[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_in_reg[7]_i_24 
       (.I0(RsData_id[13]),
        .I1(RsData_id[14]),
        .I2(RsData_id[12]),
        .I3(RsData_id[15]),
        .O(\PC_in_reg[7]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PC_in_reg[7]_i_25 
       (.I0(RsData_id[7]),
        .I1(RsData_id[4]),
        .I2(RsData_id[6]),
        .I3(RsData_id[5]),
        .I4(\PC_in_reg[7]_i_35_n_0 ),
        .O(\PC_in_reg[7]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_26 
       (.I0(RsData_id[0]),
        .I1(D[0]),
        .I2(RsData_id[1]),
        .I3(D[1]),
        .O(\PC_in_reg[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \PC_in_reg[7]_i_27 
       (.I0(D[6]),
        .I1(RsData_id[6]),
        .I2(D[7]),
        .I3(RsData_id[7]),
        .I4(\PC_in_reg[7]_i_36_n_0 ),
        .O(\PC_in_reg[7]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_28 
       (.I0(RsData_id[9]),
        .I1(D[9]),
        .I2(RsData_id[8]),
        .I3(D[8]),
        .O(\PC_in_reg[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \PC_in_reg[7]_i_30 
       (.I0(D[14]),
        .I1(RsData_id[15]),
        .I2(D[13]),
        .I3(RsData_id[14]),
        .I4(\PC_in_reg[7]_i_37_n_0 ),
        .O(\PC_in_reg[7]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_31 
       (.I0(RsData_id[20]),
        .I1(D[19]),
        .I2(RsData_id[21]),
        .I3(D[20]),
        .O(\PC_in_reg[7]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \PC_in_reg[7]_i_32 
       (.I0(D[18]),
        .I1(RsData_id[19]),
        .I2(D[17]),
        .I3(RsData_id[18]),
        .I4(\PC_in_reg[7]_i_38_n_0 ),
        .O(\PC_in_reg[7]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_33 
       (.I0(RsData_id[24]),
        .I1(D[23]),
        .I2(RsData_id[25]),
        .I3(D[24]),
        .O(\PC_in_reg[7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \PC_in_reg[7]_i_34 
       (.I0(RsData_id[31]),
        .I1(D[30]),
        .I2(D[29]),
        .I3(RsData_id[30]),
        .I4(\PC_in_reg[7]_i_39_n_0 ),
        .O(\PC_in_reg[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_in_reg[7]_i_35 
       (.I0(RsData_id[0]),
        .I1(RsData_id[1]),
        .I2(RsData_id[2]),
        .I3(RsData_id[3]),
        .O(\PC_in_reg[7]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_36 
       (.I0(RsData_id[4]),
        .I1(D[4]),
        .I2(RsData_id[5]),
        .I3(D[5]),
        .O(\PC_in_reg[7]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_37 
       (.I0(RsData_id[12]),
        .I1(D[11]),
        .I2(RsData_id[13]),
        .I3(D[12]),
        .O(\PC_in_reg[7]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_38 
       (.I0(RsData_id[17]),
        .I1(D[16]),
        .I2(RsData_id[16]),
        .I3(D[15]),
        .O(\PC_in_reg[7]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC_in_reg[7]_i_39 
       (.I0(RsData_id[28]),
        .I1(D[27]),
        .I2(RsData_id[29]),
        .I3(D[28]),
        .O(\PC_in_reg[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5151EAEAF00FFFFF)) 
    \PC_in_reg[7]_i_6 
       (.I0(RsData_id[31]),
        .I1(\PC_in_reg[7]_i_13_n_0 ),
        .I2(\q_reg[26]_0 ),
        .I3(\PC_in_reg[7]_i_14_n_0 ),
        .I4(\q_reg[29]_0 ),
        .I5(\q_reg[28]_0 ),
        .O(\q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \q[0]_i_10 
       (.I0(spo[0]),
        .I1(\q_reg_n_0_[0] ),
        .I2(Q),
        .I3(ForwardA_0),
        .I4(\q_reg[4]_1 [0]),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[0]_i_1__0 
       (.I0(spo[0]),
        .I1(\q_reg_n_0_[0] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[0]),
        .I5(\q_reg[17]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[0]_i_1__1 
       (.I0(spo[0]),
        .I1(\q_reg_n_0_[0] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[0]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[0]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[10]_i_1 
       (.I0(spo[10]),
        .I1(\q_reg_n_0_[10] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[10]),
        .I5(\q_reg[17]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[10]_i_1__0 
       (.I0(spo[10]),
        .I1(\q_reg_n_0_[10] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[10]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[10]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[11]_i_1__0 
       (.I0(spo[11]),
        .I1(\q_reg[11]_0 ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[11]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[11]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[12]_i_1 
       (.I0(spo[12]),
        .I1(\q_reg_n_0_[12] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[11]),
        .I5(\q_reg[17]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[12]_i_1__0 
       (.I0(spo[12]),
        .I1(\q_reg_n_0_[12] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[12]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[12]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[13]_i_1 
       (.I0(spo[13]),
        .I1(\q_reg_n_0_[13] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[12]),
        .I5(\q_reg[17]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[13]_i_1__0 
       (.I0(spo[13]),
        .I1(\q_reg_n_0_[13] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[13]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[13]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[14]_i_1 
       (.I0(spo[14]),
        .I1(\q_reg_n_0_[14] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[13]),
        .I5(\q_reg[17]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[14]_i_1__0 
       (.I0(spo[14]),
        .I1(\q_reg_n_0_[14] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[14]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[14]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[15]_i_1 
       (.I0(spo[15]),
        .I1(\q_reg_n_0_[15] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[14]),
        .I5(\q_reg[17]_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[15]_i_1__0 
       (.I0(spo[15]),
        .I1(\q_reg_n_0_[15] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[15]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[15]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[16]_i_1 
       (.I0(spo[16]),
        .I1(\q_reg_n_0_[16] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[15]),
        .I5(\q_reg[17]_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[16]_i_1__0 
       (.I0(spo[16]),
        .I1(\q_reg_n_0_[16] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[16]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[16]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[17]_i_1 
       (.I0(spo[17]),
        .I1(\q_reg_n_0_[17] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[16]),
        .I5(\q_reg[17]_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[17]_i_1__0 
       (.I0(spo[17]),
        .I1(\q_reg_n_0_[17] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[17]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[17]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[18]_i_1 
       (.I0(spo[18]),
        .I1(\q_reg_n_0_[18] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[17]),
        .I5(\q_reg[17]_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[18]_i_1__0 
       (.I0(spo[18]),
        .I1(\q_reg_n_0_[18] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[18]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[18]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[19]_i_1 
       (.I0(spo[19]),
        .I1(\q_reg_n_0_[19] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[18]),
        .I5(\q_reg[17]_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[19]_i_1__0 
       (.I0(spo[19]),
        .I1(\q_reg_n_0_[19] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[19]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[19]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \q[1]_i_11 
       (.I0(spo[1]),
        .I1(\q_reg_n_0_[1] ),
        .I2(Q),
        .I3(ForwardA_0),
        .I4(\q_reg[4]_1 [1]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[1]_i_1__0 
       (.I0(spo[1]),
        .I1(\q_reg_n_0_[1] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[1]),
        .I5(\q_reg[17]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[1]_i_1__1 
       (.I0(spo[1]),
        .I1(\q_reg_n_0_[1] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[1]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[1]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[20]_i_1 
       (.I0(spo[20]),
        .I1(\q_reg_n_0_[20] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[19]),
        .I5(\q_reg[17]_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[20]_i_1__0 
       (.I0(spo[20]),
        .I1(\q_reg_n_0_[20] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[20]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[20]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[21]_i_1 
       (.I0(spo[21]),
        .I1(\q_reg_n_0_[21] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[20]),
        .I5(\q_reg[17]_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[21]_i_1__0 
       (.I0(spo[21]),
        .I1(\q_reg_n_0_[21] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[21]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[21]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[22]_i_1 
       (.I0(spo[22]),
        .I1(\q_reg_n_0_[22] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[21]),
        .I5(\q_reg[17]_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[22]_i_1__0 
       (.I0(spo[22]),
        .I1(\q_reg_n_0_[22] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[22]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[22]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[23]_i_1 
       (.I0(spo[23]),
        .I1(\q_reg_n_0_[23] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[22]),
        .I5(\q_reg[17]_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[23]_i_1__0 
       (.I0(spo[23]),
        .I1(\q_reg_n_0_[23] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[23]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[23]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[24]_i_1 
       (.I0(spo[24]),
        .I1(\q_reg_n_0_[24] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[23]),
        .I5(\q_reg[17]_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[24]_i_1__0 
       (.I0(spo[24]),
        .I1(\q_reg_n_0_[24] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[24]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[24]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[25]_i_1 
       (.I0(spo[25]),
        .I1(\q_reg_n_0_[25] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[24]),
        .I5(\q_reg[17]_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[25]_i_1__0 
       (.I0(spo[25]),
        .I1(\q_reg_n_0_[25] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[25]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[25]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[26]_i_1 
       (.I0(spo[26]),
        .I1(\q_reg_n_0_[26] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[25]),
        .I5(\q_reg[17]_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[26]_i_1__0 
       (.I0(spo[26]),
        .I1(\q_reg_n_0_[26] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[26]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[26]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[27]_i_1 
       (.I0(spo[27]),
        .I1(\q_reg_n_0_[27] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[26]),
        .I5(\q_reg[17]_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[27]_i_1__0 
       (.I0(spo[27]),
        .I1(\q_reg_n_0_[27] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[27]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[27]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[28]_i_1 
       (.I0(spo[28]),
        .I1(\q_reg_n_0_[28] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[27]),
        .I5(\q_reg[17]_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[28]_i_1__0 
       (.I0(spo[28]),
        .I1(\q_reg_n_0_[28] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[28]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[28]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[29]_i_1 
       (.I0(spo[29]),
        .I1(\q_reg_n_0_[29] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[28]),
        .I5(\q_reg[17]_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[29]_i_1__0 
       (.I0(spo[29]),
        .I1(\q_reg_n_0_[29] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[29]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[29]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \q[2]_i_10 
       (.I0(spo[2]),
        .I1(\q_reg_n_0_[2] ),
        .I2(Q),
        .I3(ForwardA_0),
        .I4(\q_reg[4]_1 [2]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[2]_i_1__1 
       (.I0(spo[2]),
        .I1(\q_reg_n_0_[2] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[2]),
        .I5(\q_reg[17]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[2]_i_1__2 
       (.I0(spo[2]),
        .I1(\q_reg_n_0_[2] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[2]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[2]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[30]_i_1 
       (.I0(spo[30]),
        .I1(\q_reg_n_0_[30] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[29]),
        .I5(\q_reg[17]_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[30]_i_1__0 
       (.I0(spo[30]),
        .I1(\q_reg_n_0_[30] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[30]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[30]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[31]_i_1 
       (.I0(spo[31]),
        .I1(\q_reg_n_0_[31] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[30]),
        .I5(\q_reg[17]_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[31]_i_1__0 
       (.I0(spo[31]),
        .I1(\q_reg_n_0_[31] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[31]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[31]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \q[3]_i_11 
       (.I0(spo[3]),
        .I1(\q_reg_n_0_[3] ),
        .I2(Q),
        .I3(ForwardA_0),
        .I4(\q_reg[4]_1 [3]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[3]_i_1__1 
       (.I0(spo[3]),
        .I1(\q_reg_n_0_[3] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[3]),
        .I5(\q_reg[17]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[3]_i_1__2 
       (.I0(spo[3]),
        .I1(\q_reg_n_0_[3] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[3]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[3]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \q[4]_i_11 
       (.I0(spo[4]),
        .I1(\q_reg_n_0_[4] ),
        .I2(Q),
        .I3(ForwardA_0),
        .I4(\q_reg[4]_1 [4]),
        .O(\q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[4]_i_1__1 
       (.I0(spo[4]),
        .I1(\q_reg_n_0_[4] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[4]),
        .I5(\q_reg[17]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[4]_i_1__2 
       (.I0(spo[4]),
        .I1(\q_reg_n_0_[4] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[4]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[4]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[5]_i_1__1 
       (.I0(spo[5]),
        .I1(\q_reg_n_0_[5] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[5]),
        .I5(\q_reg[17]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[5]_i_1__2 
       (.I0(spo[5]),
        .I1(\q_reg_n_0_[5] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[5]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[5]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[6]_i_1__1 
       (.I0(spo[6]),
        .I1(\q_reg_n_0_[6] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[6]),
        .I5(\q_reg[17]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[6]_i_1__2 
       (.I0(spo[6]),
        .I1(\q_reg_n_0_[6] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[6]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[6]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[7]_i_1__0 
       (.I0(spo[7]),
        .I1(\q_reg_n_0_[7] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[7]),
        .I5(\q_reg[17]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[7]_i_1__1 
       (.I0(spo[7]),
        .I1(\q_reg_n_0_[7] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[7]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[7]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[8]_i_1 
       (.I0(spo[8]),
        .I1(\q_reg_n_0_[8] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[8]),
        .I5(\q_reg[17]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[8]_i_1__0 
       (.I0(spo[8]),
        .I1(\q_reg_n_0_[8] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[8]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[8]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[9]_i_1 
       (.I0(spo[9]),
        .I1(\q_reg_n_0_[9] ),
        .I2(Q),
        .I3(\q_reg[20]_0 ),
        .I4(RtData0[9]),
        .I5(\q_reg[17]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAC00AC00ACFFAC00)) 
    \q[9]_i_1__0 
       (.I0(spo[9]),
        .I1(\q_reg_n_0_[9] ),
        .I2(Q),
        .I3(\q_reg[25]_0 ),
        .I4(RsData0[9]),
        .I5(\q_reg[25]_1 ),
        .O(RsData_id[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [0]),
        .Q(\q_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [10]),
        .Q(\q_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [11]),
        .Q(\q_reg[11]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [12]),
        .Q(\q_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [13]),
        .Q(\q_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [14]),
        .Q(\q_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [15]),
        .Q(\q_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [16]),
        .Q(\q_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [17]),
        .Q(\q_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [18]),
        .Q(\q_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [19]),
        .Q(\q_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [1]),
        .Q(\q_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [20]),
        .Q(\q_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [21]),
        .Q(\q_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [22]),
        .Q(\q_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [23]),
        .Q(\q_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [24]),
        .Q(\q_reg_n_0_[24] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [25]),
        .Q(\q_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [26]),
        .Q(\q_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [27]),
        .Q(\q_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [28]),
        .Q(\q_reg_n_0_[28] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [29]),
        .Q(\q_reg_n_0_[29] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [2]),
        .Q(\q_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [30]),
        .Q(\q_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [31]),
        .Q(\q_reg_n_0_[31] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [3]),
        .Q(\q_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [4]),
        .Q(\q_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [5]),
        .Q(\q_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [6]),
        .Q(\q_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [7]),
        .Q(\q_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [8]),
        .Q(\q_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[31]_0 [9]),
        .Q(\q_reg_n_0_[9] ),
        .R(reset));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_1
       (.I0(spo[1]),
        .I1(\q_reg_n_0_[1] ),
        .I2(Q),
        .O(RegWriteData_wb[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_2
       (.I0(spo[0]),
        .I1(\q_reg_n_0_[0] ),
        .I2(Q),
        .O(RegWriteData_wb[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_3
       (.I0(spo[3]),
        .I1(\q_reg_n_0_[3] ),
        .I2(Q),
        .O(RegWriteData_wb[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_4
       (.I0(spo[2]),
        .I1(\q_reg_n_0_[2] ),
        .I2(Q),
        .O(RegWriteData_wb[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_5
       (.I0(spo[5]),
        .I1(\q_reg_n_0_[5] ),
        .I2(Q),
        .O(RegWriteData_wb[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_0_5_i_6
       (.I0(spo[4]),
        .I1(\q_reg_n_0_[4] ),
        .I2(Q),
        .O(RegWriteData_wb[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_1
       (.I0(spo[13]),
        .I1(\q_reg_n_0_[13] ),
        .I2(Q),
        .O(RegWriteData_wb[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_2
       (.I0(spo[12]),
        .I1(\q_reg_n_0_[12] ),
        .I2(Q),
        .O(RegWriteData_wb[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_3
       (.I0(spo[15]),
        .I1(\q_reg_n_0_[15] ),
        .I2(Q),
        .O(RegWriteData_wb[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_4
       (.I0(spo[14]),
        .I1(\q_reg_n_0_[14] ),
        .I2(Q),
        .O(RegWriteData_wb[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_5
       (.I0(spo[17]),
        .I1(\q_reg_n_0_[17] ),
        .I2(Q),
        .O(RegWriteData_wb[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_12_17_i_6
       (.I0(spo[16]),
        .I1(\q_reg_n_0_[16] ),
        .I2(Q),
        .O(RegWriteData_wb[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_1
       (.I0(spo[19]),
        .I1(\q_reg_n_0_[19] ),
        .I2(Q),
        .O(RegWriteData_wb[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_2
       (.I0(spo[18]),
        .I1(\q_reg_n_0_[18] ),
        .I2(Q),
        .O(RegWriteData_wb[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_3
       (.I0(spo[21]),
        .I1(\q_reg_n_0_[21] ),
        .I2(Q),
        .O(RegWriteData_wb[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_4
       (.I0(spo[20]),
        .I1(\q_reg_n_0_[20] ),
        .I2(Q),
        .O(RegWriteData_wb[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_5
       (.I0(spo[23]),
        .I1(\q_reg_n_0_[23] ),
        .I2(Q),
        .O(RegWriteData_wb[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_18_23_i_6
       (.I0(spo[22]),
        .I1(\q_reg_n_0_[22] ),
        .I2(Q),
        .O(RegWriteData_wb[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_1
       (.I0(spo[25]),
        .I1(\q_reg_n_0_[25] ),
        .I2(Q),
        .O(RegWriteData_wb[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_2
       (.I0(spo[24]),
        .I1(\q_reg_n_0_[24] ),
        .I2(Q),
        .O(RegWriteData_wb[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_3
       (.I0(spo[27]),
        .I1(\q_reg_n_0_[27] ),
        .I2(Q),
        .O(RegWriteData_wb[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_4
       (.I0(spo[26]),
        .I1(\q_reg_n_0_[26] ),
        .I2(Q),
        .O(RegWriteData_wb[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_5
       (.I0(spo[29]),
        .I1(\q_reg_n_0_[29] ),
        .I2(Q),
        .O(RegWriteData_wb[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_24_29_i_6
       (.I0(spo[28]),
        .I1(\q_reg_n_0_[28] ),
        .I2(Q),
        .O(RegWriteData_wb[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_30_31_i_1
       (.I0(spo[31]),
        .I1(\q_reg_n_0_[31] ),
        .I2(Q),
        .O(RegWriteData_wb[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_30_31_i_2
       (.I0(spo[30]),
        .I1(\q_reg_n_0_[30] ),
        .I2(Q),
        .O(RegWriteData_wb[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_1
       (.I0(spo[7]),
        .I1(\q_reg_n_0_[7] ),
        .I2(Q),
        .O(RegWriteData_wb[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_2
       (.I0(spo[6]),
        .I1(\q_reg_n_0_[6] ),
        .I2(Q),
        .O(RegWriteData_wb[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_3
       (.I0(spo[9]),
        .I1(\q_reg_n_0_[9] ),
        .I2(Q),
        .O(RegWriteData_wb[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_4
       (.I0(spo[8]),
        .I1(\q_reg_n_0_[8] ),
        .I2(Q),
        .O(RegWriteData_wb[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_5
       (.I0(spo[11]),
        .I1(\q_reg[11]_0 ),
        .I2(Q),
        .O(RegWriteData_wb[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    regs_reg_r1_0_31_6_11_i_6
       (.I0(spo[10]),
        .I1(\q_reg_n_0_[10] ),
        .I2(Q),
        .O(RegWriteData_wb[10]));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized2
   (\q_reg[4]_0 ,
    \q_reg[0]_0 ,
    \q_reg[4]_1 ,
    CO,
    \q_reg[31] ,
    \q_reg[16] ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[15]_0 ,
    \q_reg[14]_0 ,
    \q_reg[13]_0 ,
    \q_reg[12]_0 ,
    \q_reg[11]_0 ,
    \q_reg[11]_1 ,
    \q_reg[5]_0 ,
    cio_0,
    \q_reg[4]_2 ,
    \q_reg[0]_3 ,
    \q_reg[3]_0 ,
    \q_reg[2]_0 ,
    \q_reg[1]_0 ,
    \q_reg[0]_4 ,
    \q_reg[31]_0 ,
    \q_reg[16]_0 ,
    \q_reg[24] ,
    \q_reg[19] ,
    \q_reg[18] ,
    \q_reg[17] ,
    \q_reg[16]_1 ,
    \q_reg[31]_1 ,
    \q_reg[17]_0 ,
    \q_reg[25] ,
    \q_reg[31]_2 ,
    \q_reg[18]_0 ,
    \q_reg[26] ,
    \q_reg[0]_5 ,
    \q_reg[31]_3 ,
    \q_reg[19]_0 ,
    \q_reg[11]_2 ,
    \q_reg[27] ,
    \q_reg[26]_0 ,
    \q_reg[0]_6 ,
    \q_reg[15]_1 ,
    \q_reg[12]_1 ,
    \q_reg[31]_4 ,
    \q_reg[20] ,
    \q_reg[28] ,
    \q_reg[20]_0 ,
    \q_reg[0]_7 ,
    \q_reg[15]_2 ,
    \q_reg[5]_1 ,
    \q_reg[13]_1 ,
    \q_reg[31]_5 ,
    \q_reg[21] ,
    \q_reg[29] ,
    \q_reg[26]_1 ,
    \q_reg[0]_8 ,
    \q_reg[0]_9 ,
    \q_reg[30] ,
    \q_reg[14]_1 ,
    \q_reg[22] ,
    \q_reg[0]_10 ,
    \q_reg[31]_6 ,
    \q_reg[15]_3 ,
    \q_reg[23] ,
    \q_reg[11]_3 ,
    \q_reg[5]_2 ,
    \q_reg[8] ,
    \q_reg[18]_1 ,
    \q_reg[15]_4 ,
    \q_reg[15]_5 ,
    \q_reg[18]_2 ,
    \q_reg[19]_1 ,
    \q_reg[20]_1 ,
    \q_reg[29]_0 ,
    \q_reg[30]_0 ,
    \q_reg[0]_11 ,
    \q_reg[31]_7 ,
    \q_reg[31]_8 ,
    \q_reg[26]_2 ,
    \q_reg[5]_3 ,
    \q_reg[7] ,
    \q_reg[9] ,
    \q_reg[20]_2 ,
    \q_reg[23]_0 ,
    \q_reg[20]_3 ,
    SR,
    Q,
    clk_out1,
    \q_reg[3]_1 ,
    \q_reg[4]_3 ,
    \q_reg[12]_2 ,
    \q_reg[12]_3 ,
    \q_reg[2]_1 ,
    \q_reg[0]_12 ,
    \q_reg[2]_2 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    B_adder1__3,
    \q_reg[4]_4 ,
    \q_reg[2]_3 ,
    \q_reg[3]_2 ,
    \q_reg[2]_4 ,
    \q_reg[1]_6 ,
    \q_reg[2]_5 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    MemWriteData_ex,
    \q_reg[3]_3 ,
    \q_reg[4]_5 ,
    \q_reg[0]_13 ,
    \q_reg[1]_11 ,
    \q_reg[3]_4 ,
    \q_reg[2]_6 ,
    \q_reg[2]_7 ,
    \q_reg[2]_8 ,
    \q_reg[0]_14 ,
    \q_reg[1]_12 ,
    \q_reg[15]_6 ,
    \q_reg[15]_7 ,
    \q_reg[4]_6 );
  output [0:0]\q_reg[4]_0 ;
  output \q_reg[0]_0 ;
  output [4:0]\q_reg[4]_1 ;
  output [0:0]CO;
  output [6:0]\q_reg[31] ;
  output [2:0]\q_reg[16] ;
  output \q_reg[0]_1 ;
  output \q_reg[0]_2 ;
  output \q_reg[15]_0 ;
  output \q_reg[14]_0 ;
  output \q_reg[13]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[11]_0 ;
  output \q_reg[11]_1 ;
  output [3:0]\q_reg[5]_0 ;
  output cio_0;
  output \q_reg[4]_2 ;
  output [20:0]\q_reg[0]_3 ;
  output \q_reg[3]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[0]_4 ;
  output \q_reg[31]_0 ;
  output \q_reg[16]_0 ;
  output \q_reg[24] ;
  output \q_reg[19] ;
  output \q_reg[18] ;
  output \q_reg[17] ;
  output \q_reg[16]_1 ;
  output \q_reg[31]_1 ;
  output \q_reg[17]_0 ;
  output \q_reg[25] ;
  output \q_reg[31]_2 ;
  output \q_reg[18]_0 ;
  output \q_reg[26] ;
  output \q_reg[0]_5 ;
  output \q_reg[31]_3 ;
  output \q_reg[19]_0 ;
  output \q_reg[11]_2 ;
  output \q_reg[27] ;
  output \q_reg[26]_0 ;
  output \q_reg[0]_6 ;
  output \q_reg[15]_1 ;
  output \q_reg[12]_1 ;
  output \q_reg[31]_4 ;
  output \q_reg[20] ;
  output \q_reg[28] ;
  output \q_reg[20]_0 ;
  output \q_reg[0]_7 ;
  output \q_reg[15]_2 ;
  output \q_reg[5]_1 ;
  output \q_reg[13]_1 ;
  output \q_reg[31]_5 ;
  output \q_reg[21] ;
  output \q_reg[29] ;
  output \q_reg[26]_1 ;
  output \q_reg[0]_8 ;
  output \q_reg[0]_9 ;
  output \q_reg[30] ;
  output \q_reg[14]_1 ;
  output \q_reg[22] ;
  output \q_reg[0]_10 ;
  output \q_reg[31]_6 ;
  output \q_reg[15]_3 ;
  output \q_reg[23] ;
  output \q_reg[11]_3 ;
  output \q_reg[5]_2 ;
  output \q_reg[8] ;
  output \q_reg[18]_1 ;
  output \q_reg[15]_4 ;
  output \q_reg[15]_5 ;
  output \q_reg[18]_2 ;
  output \q_reg[19]_1 ;
  output \q_reg[20]_1 ;
  output \q_reg[29]_0 ;
  output \q_reg[30]_0 ;
  output \q_reg[0]_11 ;
  output \q_reg[31]_7 ;
  output \q_reg[31]_8 ;
  output \q_reg[26]_2 ;
  output \q_reg[5]_3 ;
  output \q_reg[7] ;
  output \q_reg[9] ;
  output \q_reg[20]_2 ;
  output \q_reg[23]_0 ;
  output \q_reg[20]_3 ;
  input [0:0]SR;
  input [14:0]Q;
  input clk_out1;
  input [2:0]\q_reg[3]_1 ;
  input [4:0]\q_reg[4]_3 ;
  input [2:0]\q_reg[12]_2 ;
  input [0:0]\q_reg[12]_3 ;
  input \q_reg[2]_1 ;
  input \q_reg[0]_12 ;
  input \q_reg[2]_2 ;
  input \q_reg[1]_1 ;
  input \q_reg[1]_2 ;
  input \q_reg[1]_3 ;
  input \q_reg[1]_4 ;
  input \q_reg[1]_5 ;
  input B_adder1__3;
  input \q_reg[4]_4 ;
  input \q_reg[2]_3 ;
  input \q_reg[3]_2 ;
  input \q_reg[2]_4 ;
  input \q_reg[1]_6 ;
  input \q_reg[2]_5 ;
  input \q_reg[1]_7 ;
  input \q_reg[1]_8 ;
  input \q_reg[1]_9 ;
  input \q_reg[1]_10 ;
  input [26:0]MemWriteData_ex;
  input \q_reg[3]_3 ;
  input \q_reg[4]_5 ;
  input \q_reg[0]_13 ;
  input \q_reg[1]_11 ;
  input \q_reg[3]_4 ;
  input \q_reg[2]_6 ;
  input \q_reg[2]_7 ;
  input \q_reg[2]_8 ;
  input \q_reg[0]_14 ;
  input \q_reg[1]_12 ;
  input \q_reg[15]_6 ;
  input \q_reg[15]_7 ;
  input \q_reg[4]_6 ;

  wire B_adder1__3;
  wire [0:0]CO;
  wire [30:2]\EX/ALU/B_adder0 ;
  wire [4:4]\EX/ALU/B_adder__95 ;
  wire \EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_1 ;
  wire \EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_2 ;
  wire [31:0]\EX/ALU/p_0_in ;
  wire [14:0]Imm_ex;
  wire [26:0]MemWriteData_ex;
  wire [14:0]Q;
  wire [0:0]SR;
  wire cio_0;
  wire clk_out1;
  wire \q[0]_i_11_n_0 ;
  wire \q[0]_i_18_n_0 ;
  wire \q[0]_i_19_n_0 ;
  wire \q[11]_i_18_n_0 ;
  wire \q[12]_i_13_n_0 ;
  wire \q[13]_i_13_n_0 ;
  wire \q[13]_i_20_n_0 ;
  wire \q[14]_i_12_n_0 ;
  wire \q[14]_i_15_n_0 ;
  wire \q[15]_i_11_n_0 ;
  wire \q[15]_i_18_n_0 ;
  wire \q[15]_i_28_n_0 ;
  wire \q[16]_i_10_n_0 ;
  wire \q[16]_i_14_n_0 ;
  wire \q[16]_i_17_n_0 ;
  wire \q[16]_i_22_n_0 ;
  wire \q[17]_i_10_n_0 ;
  wire \q[17]_i_15_n_0 ;
  wire \q[17]_i_18_n_0 ;
  wire \q[18]_i_10_n_0 ;
  wire \q[18]_i_16_n_0 ;
  wire \q[18]_i_19_n_0 ;
  wire \q[19]_i_10_n_0 ;
  wire \q[19]_i_11_n_0 ;
  wire \q[19]_i_18_n_0 ;
  wire \q[19]_i_19_n_0 ;
  wire \q[19]_i_22_n_0 ;
  wire \q[20]_i_15_n_0 ;
  wire \q[20]_i_16_n_0 ;
  wire \q[20]_i_17_n_0 ;
  wire \q[20]_i_18_n_0 ;
  wire \q[22]_i_15_n_0 ;
  wire \q[24]_i_20_n_0 ;
  wire \q[24]_i_21_n_0 ;
  wire \q[7]_i_7__0_n_0 ;
  wire \q[9]_i_19_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_10 ;
  wire \q_reg[0]_11 ;
  wire \q_reg[0]_12 ;
  wire \q_reg[0]_13 ;
  wire \q_reg[0]_14 ;
  wire \q_reg[0]_2 ;
  wire [20:0]\q_reg[0]_3 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire \q_reg[0]_7 ;
  wire \q_reg[0]_8 ;
  wire \q_reg[0]_9 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire \q_reg[11]_3 ;
  wire \q_reg[12]_0 ;
  wire [2:0]\q_reg[12]_2 ;
  wire [0:0]\q_reg[12]_3 ;
  wire \q_reg[13]_0 ;
  wire \q_reg[14]_0 ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[15]_2 ;
  wire \q_reg[15]_4 ;
  wire \q_reg[15]_5 ;
  wire \q_reg[15]_6 ;
  wire \q_reg[15]_7 ;
  wire [2:0]\q_reg[16] ;
  wire \q_reg[16]_1 ;
  wire \q_reg[16]_i_12_n_0 ;
  wire \q_reg[17] ;
  wire \q_reg[18] ;
  wire \q_reg[18]_1 ;
  wire \q_reg[18]_2 ;
  wire \q_reg[19] ;
  wire \q_reg[19]_1 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire \q_reg[20]_0 ;
  wire \q_reg[20]_1 ;
  wire \q_reg[20]_2 ;
  wire \q_reg[20]_3 ;
  wire \q_reg[20]_i_12_n_0 ;
  wire \q_reg[23]_0 ;
  wire \q_reg[24]_i_12_n_0 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[26]_1 ;
  wire \q_reg[26]_2 ;
  wire \q_reg[29]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire \q_reg[2]_7 ;
  wire \q_reg[2]_8 ;
  wire \q_reg[30]_0 ;
  wire \q_reg[30]_i_19_n_0 ;
  wire [6:0]\q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[31]_2 ;
  wire \q_reg[31]_3 ;
  wire \q_reg[31]_4 ;
  wire \q_reg[31]_5 ;
  wire \q_reg[31]_7 ;
  wire \q_reg[31]_8 ;
  wire [2:0]\q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire [0:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire [4:0]\q_reg[4]_3 ;
  wire \q_reg[4]_4 ;
  wire \q_reg[4]_5 ;
  wire \q_reg[4]_6 ;
  wire [3:0]\q_reg[5]_0 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[7] ;
  wire \q_reg[8] ;
  wire \q_reg[9] ;
  wire [2:0]\NLW_q_reg[16]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[20]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[24]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[2]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[30]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_35_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg[31]_i_35_O_UNCONNECTED ;

  assign \q_reg[0]_4  = \EX/ALU/p_0_in [0];
  assign \q_reg[11]_2  = \q_reg[16] [1];
  assign \q_reg[12]_1  = \q_reg[16] [2];
  assign \q_reg[13]_1  = \EX/ALU/p_0_in [13];
  assign \q_reg[14]_1  = \EX/ALU/p_0_in [14];
  assign \q_reg[15]_3  = \EX/ALU/p_0_in [15];
  assign \q_reg[16]_0  = \q[16]_i_17_n_0 ;
  assign \q_reg[17]_0  = \q[20]_i_18_n_0 ;
  assign \q_reg[18]_0  = \q[20]_i_17_n_0 ;
  assign \q_reg[19]_0  = \q[20]_i_16_n_0 ;
  assign \q_reg[1]_0  = \EX/ALU/p_0_in [1];
  assign \q_reg[20]  = \q[20]_i_15_n_0 ;
  assign \q_reg[21]  = \q[24]_i_21_n_0 ;
  assign \q_reg[22]  = \q[24]_i_20_n_0 ;
  assign \q_reg[23]  = \EX/ALU/p_0_in [23];
  assign \q_reg[24]  = \EX/ALU/p_0_in [24];
  assign \q_reg[25]  = \EX/ALU/p_0_in [25];
  assign \q_reg[26]  = \EX/ALU/p_0_in [26];
  assign \q_reg[27]  = \EX/ALU/p_0_in [27];
  assign \q_reg[28]  = \EX/ALU/p_0_in [28];
  assign \q_reg[29]  = \EX/ALU/p_0_in [29];
  assign \q_reg[2]_0  = \EX/ALU/p_0_in [2];
  assign \q_reg[30]  = \EX/ALU/p_0_in [30];
  assign \q_reg[31]_6  = \EX/ALU/p_0_in [31];
  assign \q_reg[3]_0  = \EX/ALU/p_0_in [3];
  assign \q_reg[4]_2  = \EX/ALU/p_0_in [4];
  assign \q_reg[5]_1  = \q_reg[16] [0];
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[0]_i_11 
       (.I0(\q_reg[0]_9 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[0]_5 ),
        .I3(\q_reg[1]_6 ),
        .I4(\q_reg[0]_7 ),
        .I5(\q[0]_i_18_n_0 ),
        .O(\q[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[0]_i_12 
       (.I0(\q_reg[0]_10 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[0]_6 ),
        .I3(\q_reg[1]_6 ),
        .I4(\q_reg[0]_8 ),
        .I5(\q[0]_i_19_n_0 ),
        .O(\q_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_15 
       (.I0(\EX/ALU/p_0_in [31]),
        .I1(\q_reg[2]_8 ),
        .O(\q_reg[0]_11 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[0]_i_18 
       (.I0(\EX/ALU/p_0_in [24]),
        .I1(\q_reg[2]_5 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q[16]_i_17_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [0]),
        .O(\q[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[0]_i_19 
       (.I0(\EX/ALU/p_0_in [25]),
        .I1(\q_reg[3]_3 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q[20]_i_18_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [1]),
        .O(\q[0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[0]_i_1__5 
       (.I0(Imm_ex[11]),
        .I1(\q_reg[3]_1 [0]),
        .I2(\q_reg[4]_3 [0]),
        .O(\q_reg[4]_1 [0]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[0]_i_27 
       (.I0(\EX/ALU/p_0_in [31]),
        .I1(\q_reg[31] [6]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[0]_i_6 
       (.I0(Imm_ex[0]),
        .I1(MemWriteData_ex[0]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [0]));
  LUT6 #(
    .INIT(64'hC000AF00C000A000)) 
    \q[0]_i_7 
       (.I0(\q[0]_i_11_n_0 ),
        .I1(\q_reg[0]_2 ),
        .I2(\q_reg[3]_1 [2]),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[0]_12 ),
        .I5(\q_reg[2]_2 ),
        .O(\q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[10]_i_20 
       (.I0(\q[24]_i_20_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [30]),
        .I3(\q_reg[4]_4 ),
        .I4(\EX/ALU/p_0_in [14]),
        .O(\q_reg[8] ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[11]_i_13 
       (.I0(\q[15]_i_28_n_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q[11]_i_18_n_0 ),
        .I3(\q[13]_i_20_n_0 ),
        .I4(\q_reg[1]_6 ),
        .O(\q_reg[11]_1 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[11]_i_18 
       (.I0(\q[20]_i_16_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [27]),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[16] [1]),
        .O(\q[11]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[11]_i_6 
       (.I0(Imm_ex[11]),
        .I1(MemWriteData_ex[6]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[16] [1]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[11]_i_9 
       (.I0(\q_reg[11]_1 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[12]_i_13_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_5 ),
        .O(\q_reg[11]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[12]_i_13 
       (.I0(\q[14]_i_15_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q_reg[11]_3 ),
        .O(\q[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[12]_i_18 
       (.I0(\EX/ALU/p_0_in [24]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[16]_i_17_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q_reg[5]_2 ),
        .O(\q_reg[11]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[12]_i_6 
       (.I0(Imm_ex[12]),
        .I1(MemWriteData_ex[7]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[16] [2]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[12]_i_9 
       (.I0(\q[12]_i_13_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[13]_i_13_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_4 ),
        .O(\q_reg[12]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[13]_i_13 
       (.I0(\q[15]_i_18_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[13]_i_20_n_0 ),
        .O(\q[13]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[13]_i_15 
       (.I0(\EX/ALU/p_0_in [13]),
        .I1(\EX/ALU/B_adder0 [13]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [3]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[13]_i_16 
       (.I0(\q_reg[16] [2]),
        .I1(\q_reg[12]_2 [2]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [2]));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[13]_i_20 
       (.I0(\EX/ALU/p_0_in [25]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_18_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[9]_i_19_n_0 ),
        .O(\q[13]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[13]_i_6 
       (.I0(Imm_ex[13]),
        .I1(MemWriteData_ex[8]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [13]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[13]_i_9 
       (.I0(\q[13]_i_13_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[14]_i_12_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_3 ),
        .O(\q_reg[13]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[14]_i_12 
       (.I0(\q[16]_i_14_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[14]_i_15_n_0 ),
        .O(\q[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[14]_i_15 
       (.I0(\EX/ALU/p_0_in [26]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_17_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q_reg[8] ),
        .O(\q[14]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[14]_i_6 
       (.I0(Imm_ex[14]),
        .I1(MemWriteData_ex[9]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [14]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[14]_i_9 
       (.I0(\q[14]_i_12_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[15]_i_11_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_2 ),
        .O(\q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[15]_i_11 
       (.I0(\q[17]_i_15_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[15]_i_18_n_0 ),
        .O(\q[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[15]_i_15 
       (.I0(\EX/ALU/p_0_in [15]),
        .I1(\EX/ALU/B_adder0 [15]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [5]));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[15]_i_18 
       (.I0(\EX/ALU/p_0_in [27]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_16_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[15]_i_28_n_0 ),
        .O(\q[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[15]_i_20 
       (.I0(\EX/ALU/p_0_in [14]),
        .I1(\EX/ALU/B_adder0 [14]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [4]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[15]_i_24 
       (.I0(\q_reg[16] [1]),
        .I1(\q_reg[12]_2 [1]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [1]));
  LUT5 #(
    .INIT(32'h30443077)) 
    \q[15]_i_28 
       (.I0(\EX/ALU/p_0_in [23]),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[18]_1 ),
        .I3(\q_reg[4]_4 ),
        .I4(\EX/ALU/p_0_in [15]),
        .O(\q[15]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[15]_i_29 
       (.I0(\EX/ALU/p_0_in [4]),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[16] [2]),
        .I3(\q_reg[4]_4 ),
        .O(\q_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[15]_i_5 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[10]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [15]));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[15]_i_8 
       (.I0(\q[15]_i_11_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[16]_i_10_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_1 ),
        .O(\q_reg[15]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[16]_i_10 
       (.I0(\q[18]_i_16_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[16]_i_14_n_0 ),
        .O(\q[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[16]_i_14 
       (.I0(\EX/ALU/p_0_in [28]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_15_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[16]_i_22_n_0 ),
        .O(\q[16]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[16]_i_22 
       (.I0(\EX/ALU/p_0_in [24]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[16]_i_17_n_0 ),
        .I3(\q_reg[4]_4 ),
        .O(\q[16]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[16]_i_23 
       (.I0(\q_reg[16] [0]),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [13]),
        .I3(\q_reg[4]_4 ),
        .O(\q_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[16]_i_6 
       (.I0(\q[16]_i_10_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[17]_i_10_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_10 ),
        .O(\q_reg[16]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[16]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[11]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[16]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[17]_i_10 
       (.I0(\q[19]_i_18_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[17]_i_15_n_0 ),
        .O(\q[17]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[17]_i_12 
       (.I0(\q[20]_i_18_n_0 ),
        .I1(\EX/ALU/B_adder0 [17]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [7]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[17]_i_13 
       (.I0(\q[16]_i_17_n_0 ),
        .I1(\q_reg[31] [2]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [6]));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[17]_i_15 
       (.I0(\EX/ALU/p_0_in [29]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[24]_i_21_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[17]_i_18_n_0 ),
        .O(\q[17]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[17]_i_18 
       (.I0(\EX/ALU/p_0_in [25]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_18_n_0 ),
        .I3(\q_reg[4]_4 ),
        .O(\q[17]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[17]_i_6 
       (.I0(\q[17]_i_10_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[18]_i_10_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_9 ),
        .O(\q_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[17]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[12]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[20]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[18]_i_10 
       (.I0(\q[19]_i_19_n_0 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[18]_i_16_n_0 ),
        .O(\q[18]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[18]_i_13 
       (.I0(\q[20]_i_17_n_0 ),
        .I1(\EX/ALU/B_adder0 [18]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [8]));
  LUT6 #(
    .INIT(64'h0047FFFF00470000)) 
    \q[18]_i_16 
       (.I0(\EX/ALU/p_0_in [30]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[24]_i_20_n_0 ),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[18]_i_19_n_0 ),
        .O(\q[18]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[18]_i_19 
       (.I0(\EX/ALU/p_0_in [26]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_17_n_0 ),
        .I3(\q_reg[4]_4 ),
        .O(\q[18]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[18]_i_6 
       (.I0(\q[18]_i_10_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[19]_i_10_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_8 ),
        .O(\q_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[18]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[13]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[20]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[18]_i_9 
       (.I0(\q_reg[15]_5 ),
        .I1(\q_reg[3]_2 ),
        .I2(\q[22]_i_15_n_0 ),
        .I3(\q_reg[2]_4 ),
        .I4(\q_reg[3]_4 ),
        .O(\q_reg[15]_4 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[19]_i_10 
       (.I0(\q_reg[18]_2 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[19]_i_18_n_0 ),
        .O(\q[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[19]_i_11 
       (.I0(\q_reg[19]_1 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q[19]_i_19_n_0 ),
        .O(\q[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[19]_i_15 
       (.I0(\q[20]_i_16_n_0 ),
        .I1(\EX/ALU/B_adder0 [19]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [9]));
  LUT6 #(
    .INIT(64'h008BFFFF008B0000)) 
    \q[19]_i_18 
       (.I0(\q_reg[18]_1 ),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [23]),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[2]_4 ),
        .I5(\q[19]_i_22_n_0 ),
        .O(\q[19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[19]_i_19 
       (.I0(\EX/ALU/p_0_in [24]),
        .I1(\q_reg[2]_4 ),
        .I2(\EX/ALU/p_0_in [28]),
        .I3(\q_reg[3]_2 ),
        .I4(\q[20]_i_15_n_0 ),
        .I5(\q_reg[4]_4 ),
        .O(\q[19]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \q[19]_i_22 
       (.I0(\EX/ALU/p_0_in [27]),
        .I1(\q_reg[3]_2 ),
        .I2(\q[20]_i_16_n_0 ),
        .I3(\q_reg[4]_4 ),
        .O(\q[19]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \q[19]_i_6 
       (.I0(\q[19]_i_10_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q[19]_i_11_n_0 ),
        .I3(\q_reg[3]_1 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[1]_7 ),
        .O(\q_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[19]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[14]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[20]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_1__3 
       (.I0(Imm_ex[12]),
        .I1(\q_reg[3]_1 [0]),
        .I2(\q_reg[4]_3 [1]),
        .O(\q_reg[4]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[1]_i_7 
       (.I0(Imm_ex[1]),
        .I1(MemWriteData_ex[1]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[20]_i_10 
       (.I0(\q_reg[20]_1 ),
        .I1(\q_reg[1]_6 ),
        .I2(\q_reg[18]_2 ),
        .I3(\q_reg[0]_12 ),
        .I4(\q[19]_i_11_n_0 ),
        .O(\q_reg[20]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[20]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[15]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[20]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[21]_i_12 
       (.I0(\q[24]_i_21_n_0 ),
        .I1(\EX/ALU/B_adder0 [21]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [11]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[21]_i_13 
       (.I0(\q[20]_i_15_n_0 ),
        .I1(\q_reg[31] [3]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [10]));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[21]_i_15 
       (.I0(\EX/ALU/p_0_in [25]),
        .I1(\q_reg[2]_4 ),
        .I2(\EX/ALU/p_0_in [29]),
        .I3(\q_reg[3]_2 ),
        .I4(\q[24]_i_21_n_0 ),
        .I5(\q_reg[4]_4 ),
        .O(\q_reg[18]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[21]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[16]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[24]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[22]_i_13 
       (.I0(\q[24]_i_20_n_0 ),
        .I1(\EX/ALU/B_adder0 [22]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [12]));
  LUT3 #(
    .INIT(8'h74)) 
    \q[22]_i_15 
       (.I0(\EX/ALU/p_0_in [31]),
        .I1(\q_reg[4]_4 ),
        .I2(\q_reg[2]_6 ),
        .O(\q[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003440377)) 
    \q[22]_i_16 
       (.I0(\EX/ALU/p_0_in [26]),
        .I1(\q_reg[2]_4 ),
        .I2(\EX/ALU/p_0_in [30]),
        .I3(\q_reg[3]_2 ),
        .I4(\q[24]_i_20_n_0 ),
        .I5(\q_reg[4]_4 ),
        .O(\q_reg[19]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[22]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[17]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q[24]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[22]_i_9 
       (.I0(\q_reg[30]_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[4]_6 ),
        .I3(\q_reg[2]_4 ),
        .I4(\q_reg[15]_5 ),
        .I5(\q[22]_i_15_n_0 ),
        .O(\q_reg[20]_3 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[23]_i_14 
       (.I0(\EX/ALU/p_0_in [23]),
        .I1(\EX/ALU/B_adder0 [23]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [13]));
  LUT6 #(
    .INIT(64'h0000000030443077)) 
    \q[23]_i_17 
       (.I0(\EX/ALU/p_0_in [27]),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[18]_1 ),
        .I3(\q_reg[3]_2 ),
        .I4(\EX/ALU/p_0_in [23]),
        .I5(\q_reg[4]_4 ),
        .O(\q_reg[20]_1 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \q[23]_i_20 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[26]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[18]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[23]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[18]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[24]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[19]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [24]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[25]_i_13 
       (.I0(\EX/ALU/p_0_in [25]),
        .I1(\EX/ALU/B_adder0 [25]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [15]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[25]_i_14 
       (.I0(\EX/ALU/p_0_in [24]),
        .I1(\q_reg[31] [4]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[25]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[20]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [25]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[26]_i_13 
       (.I0(\q_reg[26]_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[15]_6 ),
        .I3(\q_reg[26]_1 ),
        .I4(\q_reg[31]_1 ),
        .I5(\q_reg[1]_6 ),
        .O(\q_reg[26]_2 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[26]_i_15 
       (.I0(\EX/ALU/p_0_in [26]),
        .I1(\EX/ALU/B_adder0 [26]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [16]));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[26]_i_21 
       (.I0(\q_reg[16] [2]),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [4]),
        .I3(\q_reg[4]_4 ),
        .I4(\q[20]_i_15_n_0 ),
        .O(\q_reg[20]_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[26]_i_22 
       (.I0(\q_reg[16] [1]),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [3]),
        .I3(\q_reg[4]_4 ),
        .I4(\q[20]_i_16_n_0 ),
        .O(\q_reg[26]_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[26]_i_24 
       (.I0(\EX/ALU/p_0_in [13]),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[16] [0]),
        .I3(\q_reg[4]_4 ),
        .I4(\q[24]_i_21_n_0 ),
        .O(\q_reg[26]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[26]_i_7 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[21]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [26]));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    \q[26]_i_9 
       (.I0(\q_reg[30]_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\q_reg[4]_6 ),
        .I3(\q_reg[15]_5 ),
        .I4(\q_reg[2]_4 ),
        .O(\q_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[27]_i_8 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[22]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[28]_i_8 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[23]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \q[29]_i_18 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[26]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[29]_i_8 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[24]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [29]));
  LUT6 #(
    .INIT(64'h3FAF33AA030A0000)) 
    \q[2]_i_19 
       (.I0(\q_reg[31] [0]),
        .I1(\EX/ALU/p_0_in [1]),
        .I2(\EX/ALU/p_0_in [0]),
        .I3(B_adder1__3),
        .I4(\q_reg[0]_12 ),
        .I5(\q_reg[1]_6 ),
        .O(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_1 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_1__5 
       (.I0(Imm_ex[13]),
        .I1(\q_reg[3]_1 [0]),
        .I2(\q_reg[4]_3 [2]),
        .O(\q_reg[4]_1 [2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_25 
       (.I0(\EX/ALU/p_0_in [28]),
        .I1(\q_reg[16] [2]),
        .I2(\q_reg[3]_2 ),
        .I3(\q[20]_i_15_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [4]),
        .O(\q_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_26 
       (.I0(\EX/ALU/p_0_in [30]),
        .I1(\EX/ALU/p_0_in [14]),
        .I2(\q_reg[3]_2 ),
        .I3(\q[24]_i_20_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\q_reg[0]_13 ),
        .O(\q_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_27 
       (.I0(\EX/ALU/p_0_in [26]),
        .I1(\q_reg[4]_5 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q[20]_i_17_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [2]),
        .O(\q_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_29 
       (.I0(\EX/ALU/p_0_in [29]),
        .I1(\EX/ALU/p_0_in [13]),
        .I2(\q_reg[3]_2 ),
        .I3(\q[24]_i_21_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\q_reg[16] [0]),
        .O(\q_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_30 
       (.I0(\EX/ALU/p_0_in [31]),
        .I1(\EX/ALU/p_0_in [15]),
        .I2(\q_reg[3]_2 ),
        .I3(\EX/ALU/p_0_in [23]),
        .I4(\q_reg[4]_4 ),
        .I5(\q_reg[1]_11 ),
        .O(\q_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[2]_i_31 
       (.I0(\EX/ALU/p_0_in [27]),
        .I1(\q_reg[16] [1]),
        .I2(\q_reg[3]_2 ),
        .I3(\q[20]_i_16_n_0 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [3]),
        .O(\q_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[2]_i_6 
       (.I0(Imm_ex[2]),
        .I1(MemWriteData_ex[2]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [2]));
  LUT5 #(
    .INIT(32'h66A5995A)) 
    \q[2]_i_9 
       (.I0(\q_reg[2]_4 ),
        .I1(\EX/ALU/p_0_in [2]),
        .I2(\EX/ALU/B_adder0 [2]),
        .I3(B_adder1__3),
        .I4(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_1 ),
        .O(\q_reg[5]_0 [0]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[30]_i_13 
       (.I0(\EX/ALU/p_0_in [30]),
        .I1(\EX/ALU/B_adder0 [30]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [19]));
  LUT3 #(
    .INIT(8'h74)) 
    \q[30]_i_15 
       (.I0(\EX/ALU/p_0_in [31]),
        .I1(\q_reg[4]_4 ),
        .I2(\q_reg[2]_7 ),
        .O(\q_reg[15]_5 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[30]_i_18 
       (.I0(\EX/ALU/p_0_in [29]),
        .I1(\EX/ALU/B_adder0 [29]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [18]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[30]_i_6 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[25]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \q[30]_i_9 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[26]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[31]_i_16 
       (.I0(\q_reg[31]_1 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[31]_5 ),
        .I3(\q_reg[1]_6 ),
        .I4(\q_reg[31]_3 ),
        .I5(\q_reg[1]_12 ),
        .O(\q_reg[31]_8 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[31]_i_17 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[31]_4 ),
        .I3(\q_reg[1]_6 ),
        .I4(\q_reg[31]_2 ),
        .I5(\q_reg[0]_14 ),
        .O(\q_reg[31]_7 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_27 
       (.I0(\EX/ALU/p_0_in [1]),
        .I1(\q[20]_i_18_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[3]_3 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [25]),
        .O(\q_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_28 
       (.I0(\q_reg[16] [0]),
        .I1(\q[24]_i_21_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\EX/ALU/p_0_in [13]),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [29]),
        .O(\q_reg[31]_5 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_29 
       (.I0(\EX/ALU/p_0_in [3]),
        .I1(\q[20]_i_16_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[16] [1]),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [27]),
        .O(\q_reg[31]_3 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_31 
       (.I0(\EX/ALU/p_0_in [0]),
        .I1(\q[16]_i_17_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[2]_5 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [24]),
        .O(\q_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_32 
       (.I0(\EX/ALU/p_0_in [4]),
        .I1(\q[20]_i_15_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[16] [2]),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [28]),
        .O(\q_reg[31]_4 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[31]_i_33 
       (.I0(\EX/ALU/p_0_in [2]),
        .I1(\q[20]_i_17_n_0 ),
        .I2(\q_reg[3]_2 ),
        .I3(\q_reg[4]_5 ),
        .I4(\q_reg[4]_4 ),
        .I5(\EX/ALU/p_0_in [26]),
        .O(\q_reg[31]_2 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[31]_i_36 
       (.I0(\EX/ALU/p_0_in [27]),
        .I1(\EX/ALU/B_adder0 [27]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [17]));
  LUT3 #(
    .INIT(8'h53)) 
    \q[31]_i_8__0 
       (.I0(\q_reg[4]_0 ),
        .I1(MemWriteData_ex[26]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [31]));
  LUT5 #(
    .INIT(32'h66A5995A)) 
    \q[3]_i_10 
       (.I0(\q_reg[3]_2 ),
        .I1(\EX/ALU/p_0_in [3]),
        .I2(\EX/ALU/B_adder0 [3]),
        .I3(B_adder1__3),
        .I4(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_2 ),
        .O(\q_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'hFF4E4E00)) 
    \q[3]_i_13 
       (.I0(B_adder1__3),
        .I1(\EX/ALU/B_adder0 [2]),
        .I2(\EX/ALU/p_0_in [2]),
        .I3(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_1 ),
        .I4(\q_reg[2]_4 ),
        .O(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_2 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_1__4 
       (.I0(Imm_ex[14]),
        .I1(\q_reg[3]_1 [0]),
        .I2(\q_reg[4]_3 [3]),
        .O(\q_reg[4]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[3]_i_7 
       (.I0(Imm_ex[3]),
        .I1(MemWriteData_ex[3]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [3]));
  LUT5 #(
    .INIT(32'h66A5995A)) 
    \q[4]_i_10 
       (.I0(cio_0),
        .I1(\EX/ALU/p_0_in [4]),
        .I2(\q_reg[31] [1]),
        .I3(B_adder1__3),
        .I4(\q_reg[4]_4 ),
        .O(\q_reg[5]_0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__4 
       (.I0(\q_reg[4]_0 ),
        .I1(\q_reg[3]_1 [0]),
        .O(\q_reg[4]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[4]_i_7 
       (.I0(Imm_ex[4]),
        .I1(MemWriteData_ex[4]),
        .I2(\q_reg[3]_1 [1]),
        .O(\EX/ALU/p_0_in [4]));
  LUT5 #(
    .INIT(32'h3C6969C3)) 
    \q[5]_i_10 
       (.I0(cio_0),
        .I1(\q_reg[2]_3 ),
        .I2(\q_reg[0]_3 [0]),
        .I3(\q_reg[4]_4 ),
        .I4(\EX/ALU/B_adder__95 ),
        .O(\q_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[5]_i_12 
       (.I0(\q[11]_i_18_n_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[0]_10 ),
        .I3(\q_reg[15]_7 ),
        .I4(\q_reg[0]_8 ),
        .I5(\q_reg[1]_6 ),
        .O(\q_reg[5]_3 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[5]_i_14 
       (.I0(\q_reg[16] [0]),
        .I1(\q_reg[12]_2 [0]),
        .I2(B_adder1__3),
        .O(\q_reg[0]_3 [0]));
  LUT3 #(
    .INIT(8'h5C)) 
    \q[5]_i_15 
       (.I0(\EX/ALU/p_0_in [4]),
        .I1(\q_reg[31] [1]),
        .I2(B_adder1__3),
        .O(\EX/ALU/B_adder__95 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \q[5]_i_6 
       (.I0(Imm_ex[5]),
        .I1(MemWriteData_ex[5]),
        .I2(\q_reg[3]_1 [1]),
        .O(\q_reg[16] [0]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[7]_i_12 
       (.I0(\q[9]_i_19_n_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q_reg[15]_7 ),
        .I3(\q[11]_i_18_n_0 ),
        .I4(\q_reg[0]_10 ),
        .I5(\q_reg[1]_6 ),
        .O(\q_reg[7] ));
  LUT5 #(
    .INIT(32'hFF4E4E00)) 
    \q[7]_i_15 
       (.I0(B_adder1__3),
        .I1(\EX/ALU/B_adder0 [3]),
        .I2(\EX/ALU/p_0_in [3]),
        .I3(\EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi_2 ),
        .I4(\q_reg[3]_2 ),
        .O(cio_0));
  LUT3 #(
    .INIT(8'hF8)) 
    \q[7]_i_5__0 
       (.I0(\q_reg[4]_0 ),
        .I1(\q_reg[3]_1 [0]),
        .I2(\q[7]_i_7__0_n_0 ),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[7]_i_7__0 
       (.I0(\q_reg[4]_1 [0]),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(\q_reg[4]_1 [1]),
        .I4(Q[13]),
        .I5(\q_reg[4]_1 [2]),
        .O(\q[7]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[8]_i_18 
       (.I0(\q[20]_i_15_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [28]),
        .I3(\q_reg[4]_4 ),
        .I4(\q_reg[16] [2]),
        .O(\q_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[9]_i_12 
       (.I0(\q[15]_i_28_n_0 ),
        .I1(\q_reg[2]_4 ),
        .I2(\q[11]_i_18_n_0 ),
        .I3(\q[9]_i_19_n_0 ),
        .I4(\q_reg[15]_7 ),
        .I5(\q_reg[1]_6 ),
        .O(\q_reg[9] ));
  LUT5 #(
    .INIT(32'h03440377)) 
    \q[9]_i_19 
       (.I0(\q[24]_i_21_n_0 ),
        .I1(\q_reg[3]_2 ),
        .I2(\EX/ALU/p_0_in [29]),
        .I3(\q_reg[4]_4 ),
        .I4(\EX/ALU/p_0_in [13]),
        .O(\q[9]_i_19_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Imm_ex[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Imm_ex[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Imm_ex[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Imm_ex[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Imm_ex[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\q_reg[4]_0 ),
        .R(SR));
  CARRY4 \q_reg[16]_i_12 
       (.CI(\q_reg[12]_3 ),
        .CO({\q_reg[16]_i_12_n_0 ,\NLW_q_reg[16]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [2],\EX/ALU/B_adder0 [15:13]}),
        .S({\q[16]_i_17_n_0 ,\EX/ALU/p_0_in [15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Imm_ex[1]),
        .R(SR));
  CARRY4 \q_reg[20]_i_12 
       (.CI(\q_reg[16]_i_12_n_0 ),
        .CO({\q_reg[20]_i_12_n_0 ,\NLW_q_reg[20]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [3],\EX/ALU/B_adder0 [19:17]}),
        .S({\q[20]_i_15_n_0 ,\q[20]_i_16_n_0 ,\q[20]_i_17_n_0 ,\q[20]_i_18_n_0 }));
  CARRY4 \q_reg[24]_i_12 
       (.CI(\q_reg[20]_i_12_n_0 ),
        .CO({\q_reg[24]_i_12_n_0 ,\NLW_q_reg[24]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [4],\EX/ALU/B_adder0 [23:21]}),
        .S({\EX/ALU/p_0_in [24:23],\q[24]_i_20_n_0 ,\q[24]_i_21_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Imm_ex[2]),
        .R(SR));
  CARRY4 \q_reg[2]_i_18 
       (.CI(1'b0),
        .CO({CO,\NLW_q_reg[2]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(\EX/ALU/p_0_in [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [1],\EX/ALU/B_adder0 [3:2],\q_reg[31] [0]}),
        .S(\EX/ALU/p_0_in [4:1]));
  CARRY4 \q_reg[30]_i_19 
       (.CI(\q_reg[24]_i_12_n_0 ),
        .CO({\q_reg[30]_i_19_n_0 ,\NLW_q_reg[30]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [5],\EX/ALU/B_adder0 [27:25]}),
        .S(\EX/ALU/p_0_in [28:25]));
  CARRY4 \q_reg[31]_i_35 
       (.CI(\q_reg[30]_i_19_n_0 ),
        .CO(\NLW_q_reg[31]_i_35_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[31]_i_35_O_UNCONNECTED [3],\q_reg[31] [6],\EX/ALU/B_adder0 [30:29]}),
        .S({1'b0,\EX/ALU/p_0_in [31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Imm_ex[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Imm_ex[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Imm_ex[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized4
   (Q,
    SR,
    \q_reg[25] ,
    clk_out1);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]\q_reg[25] ;
  input clk_out1;

  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_out1;
  wire [4:0]\q_reg[25] ;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[25] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[25] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[25] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[25] [3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized5
   (Q,
    SR,
    \q_reg[20] ,
    clk_out1);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]\q_reg[20] ;
  input clk_out1;

  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_out1;
  wire [4:0]\q_reg[20] ;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[20] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[20] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[20] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\q_reg[20] [3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized6
   (Q,
    SR,
    RsData_id,
    clk_out1);
  output [31:0]Q;
  input [0:0]SR;
  input [31:0]RsData_id;
  input clk_out1;

  wire [31:0]Q;
  wire [31:0]RsData_id;
  wire [0:0]SR;
  wire clk_out1;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(RsData_id[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized7
   (Q,
    SR,
    D,
    clk_out1);
  output [31:0]Q;
  input [0:0]SR;
  input [31:0]D;
  input clk_out1;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire clk_out1;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized8
   (we,
    reset,
    \q_reg[1] ,
    clk);
  output we;
  input reset;
  input \q_reg[1] ;
  input clk;

  wire clk;
  wire \q_reg[1] ;
  wire reset;
  wire we;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\q_reg[1] ),
        .Q(we),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "dffr" *) 
module dffr__parameterized9
   (E,
    Q,
    reset,
    reset_IBUF,
    locked,
    D,
    clk);
  output [0:0]E;
  output [31:0]Q;
  output reset;
  input reset_IBUF;
  input locked;
  input [31:0]D;
  input clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk;
  wire locked;
  wire reset;
  wire reset_IBUF;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_data_store[31]_i_1 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    \q[7]_i_1__3 
       (.I0(reset_IBUF),
        .I1(locked),
        .O(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(reset));
endmodule

module dffre
   (\q_reg[7]_0 ,
    Q,
    \q_reg[7]_1 ,
    \q_reg[3]_0 ,
    \q_reg[5]_0 ,
    \q_reg[0]_0 ,
    \q_reg[11]_0 ,
    \q_reg[0]_1 ,
    MemRead_id,
    \q_reg[0]_2 ,
    E,
    \q_reg[11]_1 ,
    MemWrite_id,
    SR,
    \q_reg[0]_3 ,
    \q_reg[2]_0 ,
    RegWrite_id,
    RsData_id,
    \q_reg[5]_1 ,
    D,
    \q_reg[7]_2 ,
    \q_reg[2]_1 ,
    \q_reg[3]_1 ,
    RtData0,
    spo,
    \q_reg[11]_2 ,
    \q_reg[1]_0 ,
    \q_reg[20]_0 ,
    \q_reg[2]_2 ,
    \q_reg[0]_4 ,
    \q_reg[14]_0 ,
    \q_reg[15]_0 ,
    \q_reg[15]_1 ,
    \q_reg[0]_5 ,
    \q_reg[4]_0 ,
    locked,
    reset_IBUF,
    \q_reg[31]_0 ,
    \bbstub_spo[31] ,
    clk_out1);
  output [5:0]\q_reg[7]_0 ;
  output [25:0]Q;
  output [7:0]\q_reg[7]_1 ;
  output \q_reg[3]_0 ;
  output \q_reg[5]_0 ;
  output \q_reg[0]_0 ;
  output \q_reg[11]_0 ;
  output \q_reg[0]_1 ;
  output MemRead_id;
  output \q_reg[0]_2 ;
  output [0:0]E;
  output \q_reg[11]_1 ;
  output MemWrite_id;
  output [0:0]SR;
  output [0:0]\q_reg[0]_3 ;
  output [0:0]\q_reg[2]_0 ;
  output RegWrite_id;
  input [5:0]RsData_id;
  input [1:0]\q_reg[5]_1 ;
  input [4:0]D;
  input [5:0]\q_reg[7]_2 ;
  input [0:0]\q_reg[2]_1 ;
  input \q_reg[3]_1 ;
  input [0:0]RtData0;
  input [0:0]spo;
  input [0:0]\q_reg[11]_2 ;
  input [0:0]\q_reg[1]_0 ;
  input \q_reg[20]_0 ;
  input [2:0]\q_reg[2]_2 ;
  input [0:0]\q_reg[0]_4 ;
  input [3:0]\q_reg[14]_0 ;
  input \q_reg[15]_0 ;
  input [0:0]\q_reg[15]_1 ;
  input [0:0]\q_reg[0]_5 ;
  input [0:0]\q_reg[4]_0 ;
  input locked;
  input reset_IBUF;
  input \q_reg[31]_0 ;
  input [31:0]\bbstub_spo[31] ;
  input clk_out1;

  wire [7:4]BranchAddr;
  wire [4:0]D;
  wire [0:0]E;
  wire [31:26]Instruction_id;
  wire J;
  wire JR;
  wire MemRead_id;
  wire MemWrite_id;
  wire \PC_in_reg[7]_i_11_n_0 ;
  wire \PC_in_reg[7]_i_12_n_0 ;
  wire \PC_in_reg[7]_i_3_n_0 ;
  wire \PC_in_reg[7]_i_5_n_0 ;
  wire \PC_in_reg[7]_i_9_n_0 ;
  wire [25:0]\^Q ;
  wire RegWrite_id;
  wire [5:0]RsData_id;
  wire [0:0]RtData0;
  wire [0:0]SR;
  wire [31:0]\bbstub_spo[31] ;
  wire clk_out1;
  wire locked;
  wire \q[0]_i_2__0_n_0 ;
  wire \q[0]_i_2_n_0 ;
  wire \q[2]_i_2_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_5__0_n_0 ;
  wire \q[4]_i_2__0_n_0 ;
  wire \q[5]_i_3_n_0 ;
  wire \q[7]_i_10_n_0 ;
  wire \q[7]_i_2__0_n_0 ;
  wire \q[7]_i_3__0_n_0 ;
  wire \q[7]_i_4__0_n_0 ;
  wire \q[7]_i_4_n_0 ;
  wire \q[7]_i_5_n_0 ;
  wire \q[7]_i_6__0_n_0 ;
  wire \q[7]_i_6_n_0 ;
  wire \q[7]_i_7_n_0 ;
  wire \q[7]_i_8_n_0 ;
  wire \q[7]_i_9_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire [0:0]\q_reg[0]_3 ;
  wire [0:0]\q_reg[0]_4 ;
  wire [0:0]\q_reg[0]_5 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [0:0]\q_reg[11]_2 ;
  wire [3:0]\q_reg[14]_0 ;
  wire \q_reg[15]_0 ;
  wire [0:0]\q_reg[15]_1 ;
  wire [0:0]\q_reg[1]_0 ;
  wire \q_reg[20]_0 ;
  wire [0:0]\q_reg[2]_0 ;
  wire [0:0]\q_reg[2]_1 ;
  wire [2:0]\q_reg[2]_2 ;
  wire \q_reg[31]_0 ;
  wire \q_reg[3]_1 ;
  wire [1:0]\q_reg[5]_1 ;
  wire [5:0]\q_reg[7]_0 ;
  wire [7:0]\q_reg[7]_1 ;
  wire [5:0]\q_reg[7]_2 ;
  wire reset_IBUF;
  wire [0:0]spo;

  assign Q[25] = \bbstub_spo[31] [20];
  assign Q[24:21] = \^Q [24:21];
  assign Q[20] = \bbstub_spo[31] [20];
  assign Q[19:0] = \^Q [19:0];
  assign \q_reg[3]_0  = \q_reg[7]_1 [3];
  assign \q_reg[5]_0  = \q_reg[7]_1 [5];
  LUT6 #(
    .INIT(64'h8BB8C0C08BB8F3F3)) 
    \PC_in_reg[2]_i_1 
       (.I0(RsData_id[0]),
        .I1(\PC_in_reg[7]_i_3_n_0 ),
        .I2(\^Q [0]),
        .I3(\q_reg[7]_2 [0]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(\q_reg[2]_1 ),
        .O(\q_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PC_in_reg[3]_i_1 
       (.I0(RsData_id[1]),
        .I1(\^Q [1]),
        .I2(\PC_in_reg[7]_i_3_n_0 ),
        .I3(\q_reg[5]_1 [0]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(D[0]),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PC_in_reg[4]_i_1 
       (.I0(RsData_id[2]),
        .I1(\^Q [2]),
        .I2(\PC_in_reg[7]_i_3_n_0 ),
        .I3(BranchAddr[4]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(D[1]),
        .O(\q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \PC_in_reg[4]_i_2 
       (.I0(\^Q [0]),
        .I1(\q_reg[7]_2 [0]),
        .I2(\^Q [1]),
        .I3(\q_reg[7]_2 [1]),
        .I4(\q_reg[7]_2 [2]),
        .I5(\^Q [2]),
        .O(BranchAddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PC_in_reg[5]_i_1 
       (.I0(RsData_id[3]),
        .I1(\^Q [3]),
        .I2(\PC_in_reg[7]_i_3_n_0 ),
        .I3(\q_reg[5]_1 [1]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(D[2]),
        .O(\q_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PC_in_reg[6]_i_1 
       (.I0(RsData_id[4]),
        .I1(\^Q [4]),
        .I2(\PC_in_reg[7]_i_3_n_0 ),
        .I3(BranchAddr[6]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(D[3]),
        .O(\q_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hA5965A96)) 
    \PC_in_reg[6]_i_2 
       (.I0(\q_reg[7]_2 [4]),
        .I1(\PC_in_reg[7]_i_9_n_0 ),
        .I2(\^Q [4]),
        .I3(\q_reg[3]_1 ),
        .I4(\PC_in_reg[7]_i_11_n_0 ),
        .O(BranchAddr[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PC_in_reg[7]_i_1 
       (.I0(RsData_id[5]),
        .I1(\^Q [5]),
        .I2(\PC_in_reg[7]_i_3_n_0 ),
        .I3(BranchAddr[7]),
        .I4(\PC_in_reg[7]_i_5_n_0 ),
        .I5(D[4]),
        .O(\q_reg[7]_0 [5]));
  LUT4 #(
    .INIT(16'hFEA8)) 
    \PC_in_reg[7]_i_11 
       (.I0(\^Q [3]),
        .I1(\q_reg[7]_2 [2]),
        .I2(\^Q [2]),
        .I3(\q_reg[7]_2 [3]),
        .O(\PC_in_reg[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC_in_reg[7]_i_12 
       (.I0(\^Q [5]),
        .I1(\q_reg[7]_2 [5]),
        .O(\PC_in_reg[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0DDF)) 
    \PC_in_reg[7]_i_2 
       (.I0(\q_reg[7]_1 [6]),
        .I1(\q_reg[31]_0 ),
        .I2(J),
        .I3(JR),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0F0F00FFBBBBBBBB)) 
    \PC_in_reg[7]_i_29 
       (.I0(\q_reg[11]_0 ),
        .I1(RtData0),
        .I2(spo),
        .I3(\q_reg[11]_2 ),
        .I4(\q_reg[1]_0 ),
        .I5(\q_reg[20]_0 ),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \PC_in_reg[7]_i_3 
       (.I0(JR),
        .I1(Instruction_id[29]),
        .I2(Instruction_id[27]),
        .I3(Instruction_id[28]),
        .I4(Instruction_id[31]),
        .I5(Instruction_id[26]),
        .O(\PC_in_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h03173F17FCE8C0E8)) 
    \PC_in_reg[7]_i_4 
       (.I0(\PC_in_reg[7]_i_9_n_0 ),
        .I1(\^Q [4]),
        .I2(\q_reg[7]_2 [4]),
        .I3(\q_reg[3]_1 ),
        .I4(\PC_in_reg[7]_i_11_n_0 ),
        .I5(\PC_in_reg[7]_i_12_n_0 ),
        .O(BranchAddr[7]));
  LUT4 #(
    .INIT(16'hF0F2)) 
    \PC_in_reg[7]_i_5 
       (.I0(\q_reg[7]_1 [6]),
        .I1(\q_reg[31]_0 ),
        .I2(JR),
        .I3(J),
        .O(\PC_in_reg[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \PC_in_reg[7]_i_7 
       (.I0(Instruction_id[29]),
        .I1(Instruction_id[27]),
        .I2(Instruction_id[28]),
        .I3(Instruction_id[31]),
        .I4(Instruction_id[26]),
        .O(J));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \PC_in_reg[7]_i_8 
       (.I0(\^Q [2]),
        .I1(\^Q [3]),
        .I2(\^Q [0]),
        .I3(\^Q [1]),
        .I4(\q[2]_i_2_n_0 ),
        .I5(\^Q [5]),
        .O(JR));
  LUT4 #(
    .INIT(16'hEC80)) 
    \PC_in_reg[7]_i_9 
       (.I0(\^Q [2]),
        .I1(\^Q [3]),
        .I2(\q_reg[7]_2 [2]),
        .I3(\q_reg[7]_2 [3]),
        .O(\PC_in_reg[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[0]_i_1 
       (.I0(\q[0]_i_2__0_n_0 ),
        .I1(\q_reg[7]_1 [2]),
        .O(\q_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \q[0]_i_1__2 
       (.I0(Instruction_id[29]),
        .I1(Instruction_id[27]),
        .I2(Instruction_id[26]),
        .I3(Instruction_id[31]),
        .I4(Instruction_id[28]),
        .O(MemRead_id));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \q[0]_i_1__6 
       (.I0(\q[0]_i_2__0_n_0 ),
        .I1(\q_reg[7]_1 [2]),
        .I2(\q[0]_i_2_n_0 ),
        .O(RegWrite_id));
  LUT5 #(
    .INIT(32'h007F0800)) 
    \q[0]_i_2 
       (.I0(Instruction_id[27]),
        .I1(Instruction_id[26]),
        .I2(Instruction_id[28]),
        .I3(Instruction_id[31]),
        .I4(Instruction_id[29]),
        .O(\q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1515050504040004)) 
    \q[0]_i_2__0 
       (.I0(\q[2]_i_2_n_0 ),
        .I1(\^Q [2]),
        .I2(\^Q [3]),
        .I3(\^Q [0]),
        .I4(\^Q [1]),
        .I5(\^Q [5]),
        .O(\q[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0E222222)) 
    \q[1]_i_1 
       (.I0(Instruction_id[29]),
        .I1(Instruction_id[31]),
        .I2(Instruction_id[28]),
        .I3(Instruction_id[26]),
        .I4(Instruction_id[27]),
        .O(\q_reg[7]_1 [1]));
  LUT3 #(
    .INIT(8'hF7)) 
    \q[1]_i_1__4 
       (.I0(E),
        .I1(locked),
        .I2(reset_IBUF),
        .O(SR));
  LUT5 #(
    .INIT(32'h00008000)) 
    \q[1]_i_2 
       (.I0(Instruction_id[29]),
        .I1(Instruction_id[27]),
        .I2(Instruction_id[26]),
        .I3(Instruction_id[31]),
        .I4(Instruction_id[28]),
        .O(MemWrite_id));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \q[2]_i_1__0 
       (.I0(\q[7]_i_2__0_n_0 ),
        .I1(\^Q [5]),
        .I2(\q[2]_i_2_n_0 ),
        .I3(\^Q [1]),
        .I4(\^Q [2]),
        .I5(\^Q [3]),
        .O(\q_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[2]_i_2 
       (.I0(Instruction_id[26]),
        .I1(Instruction_id[27]),
        .I2(Instruction_id[28]),
        .I3(Instruction_id[29]),
        .I4(Instruction_id[31]),
        .I5(\^Q [4]),
        .O(\q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_3 
       (.I0(\^Q [17]),
        .I1(\^Q [16]),
        .I2(\^Q [19]),
        .I3(\^Q [18]),
        .O(\q_reg[11]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_3__0 
       (.I0(\^Q [24]),
        .I1(\^Q [22]),
        .I2(\^Q [21]),
        .I3(\^Q [23]),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_4__0 
       (.I0(\^Q [16]),
        .I1(\q_reg[2]_2 [0]),
        .I2(\q_reg[2]_2 [1]),
        .I3(\^Q [17]),
        .I4(\q_reg[2]_2 [2]),
        .I5(\^Q [18]),
        .O(\q_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_5 
       (.I0(\^Q [21]),
        .I1(\q_reg[2]_2 [0]),
        .I2(\q_reg[2]_2 [2]),
        .I3(\^Q [23]),
        .I4(\q_reg[2]_2 [1]),
        .I5(\^Q [22]),
        .O(\q_reg[0]_2 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \q[3]_i_2 
       (.I0(\q[2]_i_2_n_0 ),
        .I1(\q[3]_i_3_n_0 ),
        .I2(\q[3]_i_4_n_0 ),
        .O(\q_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'hDFC5DFC5FF3FFC3F)) 
    \q[3]_i_3 
       (.I0(\q[3]_i_5__0_n_0 ),
        .I1(\^Q [2]),
        .I2(\^Q [5]),
        .I3(\^Q [3]),
        .I4(\^Q [0]),
        .I5(\^Q [1]),
        .O(\q[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04044000)) 
    \q[3]_i_4 
       (.I0(Instruction_id[31]),
        .I1(Instruction_id[28]),
        .I2(Instruction_id[29]),
        .I3(Instruction_id[27]),
        .I4(Instruction_id[26]),
        .O(\q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE0000FFFF)) 
    \q[3]_i_5__0 
       (.I0(\q[7]_i_5_n_0 ),
        .I1(\^Q [3]),
        .I2(\^Q [2]),
        .I3(\^Q [1]),
        .I4(\^Q [0]),
        .I5(\q[7]_i_4_n_0 ),
        .O(\q[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAFFAA)) 
    \q[4]_i_1__0 
       (.I0(\q[4]_i_2__0_n_0 ),
        .I1(Instruction_id[29]),
        .I2(Instruction_id[27]),
        .I3(Instruction_id[28]),
        .I4(Instruction_id[31]),
        .I5(Instruction_id[26]),
        .O(\q_reg[7]_1 [4]));
  LUT6 #(
    .INIT(64'h0100041010000000)) 
    \q[4]_i_2__0 
       (.I0(\q[2]_i_2_n_0 ),
        .I1(\^Q [3]),
        .I2(\^Q [0]),
        .I3(\^Q [5]),
        .I4(\^Q [2]),
        .I5(\^Q [1]),
        .O(\q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04440140)) 
    \q[5]_i_2 
       (.I0(Instruction_id[31]),
        .I1(Instruction_id[28]),
        .I2(Instruction_id[29]),
        .I3(Instruction_id[26]),
        .I4(Instruction_id[27]),
        .I5(\q[5]_i_3_n_0 ),
        .O(\q_reg[7]_1 [5]));
  LUT6 #(
    .INIT(64'h0000000071000000)) 
    \q[5]_i_3 
       (.I0(\^Q [2]),
        .I1(\^Q [3]),
        .I2(\^Q [0]),
        .I3(\^Q [5]),
        .I4(\^Q [1]),
        .I5(\q[2]_i_2_n_0 ),
        .O(\q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0030303300300032)) 
    \q[6]_i_1__0 
       (.I0(JR),
        .I1(Instruction_id[31]),
        .I2(Instruction_id[28]),
        .I3(Instruction_id[29]),
        .I4(Instruction_id[27]),
        .I5(Instruction_id[26]),
        .O(\q_reg[7]_1 [6]));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_1 
       (.I0(\q[7]_i_2__0_n_0 ),
        .I1(\q[7]_i_3__0_n_0 ),
        .O(\q_reg[7]_1 [7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_10 
       (.I0(\^Q [0]),
        .I1(\^Q [1]),
        .I2(\^Q [2]),
        .I3(\^Q [3]),
        .O(\q[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF2F)) 
    \q[7]_i_1__4 
       (.I0(\q_reg[7]_1 [6]),
        .I1(\q_reg[31]_0 ),
        .I2(locked),
        .I3(reset_IBUF),
        .I4(JR),
        .I5(J),
        .O(\q_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \q[7]_i_2__0 
       (.I0(\^Q [0]),
        .I1(\^Q [1]),
        .I2(\^Q [2]),
        .I3(\^Q [3]),
        .I4(\q[7]_i_4_n_0 ),
        .I5(\q[7]_i_5_n_0 ),
        .O(\q[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FF77FF755F77F55)) 
    \q[7]_i_3 
       (.I0(\q_reg[0]_4 ),
        .I1(\q[7]_i_4__0_n_0 ),
        .I2(\^Q [19]),
        .I3(\q_reg[14]_0 [3]),
        .I4(\^Q [24]),
        .I5(\q_reg[15]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0001414100010000)) 
    \q[7]_i_3__0 
       (.I0(\q[2]_i_2_n_0 ),
        .I1(\^Q [3]),
        .I2(\^Q [5]),
        .I3(\^Q [0]),
        .I4(\^Q [2]),
        .I5(\^Q [1]),
        .O(\q[7]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \q[7]_i_4 
       (.I0(\q[7]_i_6_n_0 ),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[11]_0 ),
        .I3(\q[7]_i_7_n_0 ),
        .I4(\q[7]_i_8_n_0 ),
        .O(\q[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \q[7]_i_4__0 
       (.I0(\q_reg[15]_1 ),
        .I1(\q_reg[0]_5 ),
        .I2(\q[7]_i_6__0_n_0 ),
        .O(\q[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_5 
       (.I0(\^Q [5]),
        .I1(\q[2]_i_2_n_0 ),
        .O(\q[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[7]_i_6 
       (.I0(Instruction_id[28]),
        .I1(Instruction_id[31]),
        .I2(Instruction_id[26]),
        .I3(Instruction_id[29]),
        .I4(Instruction_id[27]),
        .O(\q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[7]_i_6__0 
       (.I0(\^Q [16]),
        .I1(\q_reg[14]_0 [0]),
        .I2(\q_reg[14]_0 [2]),
        .I3(\^Q [18]),
        .I4(\q_reg[14]_0 [1]),
        .I5(\^Q [17]),
        .O(\q[7]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[7]_i_7 
       (.I0(\^Q [6]),
        .I1(\^Q [12]),
        .I2(\^Q [5]),
        .I3(\^Q [7]),
        .I4(\q[7]_i_9_n_0 ),
        .O(\q[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[7]_i_8 
       (.I0(\q[7]_i_10_n_0 ),
        .I1(\^Q [4]),
        .I2(\^Q [11]),
        .I3(\^Q [10]),
        .I4(\^Q [14]),
        .O(\q[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_9 
       (.I0(\^Q [13]),
        .I1(\^Q [9]),
        .I2(\^Q [15]),
        .I3(\^Q [8]),
        .O(\q[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [0]),
        .Q(\^Q [0]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [10]),
        .Q(\^Q [10]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [11]),
        .Q(\^Q [11]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [12]),
        .Q(\^Q [12]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [13]),
        .Q(\^Q [13]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [14]),
        .Q(\^Q [14]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [15]),
        .Q(\^Q [15]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [16]),
        .Q(\^Q [16]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [17]),
        .Q(\^Q [17]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [18]),
        .Q(\^Q [18]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [19]),
        .Q(\^Q [19]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [1]),
        .Q(\^Q [1]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [21]),
        .Q(\^Q [21]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [22]),
        .Q(\^Q [22]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [23]),
        .Q(\^Q [23]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [24]),
        .Q(\^Q [24]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [26]),
        .Q(Instruction_id[26]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [27]),
        .Q(Instruction_id[27]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [28]),
        .Q(Instruction_id[28]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [29]),
        .Q(Instruction_id[29]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [2]),
        .Q(\^Q [2]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [31]),
        .Q(Instruction_id[31]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [3]),
        .Q(\^Q [3]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [4]),
        .Q(\^Q [4]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [5]),
        .Q(\^Q [5]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [6]),
        .Q(\^Q [6]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [7]),
        .Q(\^Q [7]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [8]),
        .Q(\^Q [8]),
        .R(\q_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\bbstub_spo[31] [9]),
        .Q(\^Q [9]),
        .R(\q_reg[0]_3 ));
endmodule

(* ORIG_REF_NAME = "dffre" *) 
module dffre_3
   (\q_reg[5]_0 ,
    Q,
    \q_reg[5]_1 ,
    \q_reg[3]_0 ,
    SR,
    E,
    D,
    clk_out1);
  output [1:0]\q_reg[5]_0 ;
  output [5:0]Q;
  output \q_reg[5]_1 ;
  input [3:0]\q_reg[3]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input [5:0]D;
  input clk_out1;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire clk_out1;
  wire [3:0]\q_reg[3]_0 ;
  wire [1:0]\q_reg[5]_0 ;
  wire \q_reg[5]_1 ;

  LUT4 #(
    .INIT(16'h956A)) 
    \PC_in_reg[3]_i_2 
       (.I0(Q[1]),
        .I1(\q_reg[3]_0 [0]),
        .I2(Q[0]),
        .I3(\q_reg[3]_0 [1]),
        .O(\q_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'hA956956A)) 
    \PC_in_reg[5]_i_2 
       (.I0(Q[3]),
        .I1(\q_reg[3]_0 [2]),
        .I2(Q[2]),
        .I3(\q_reg[3]_0 [3]),
        .I4(\q_reg[5]_1 ),
        .O(\q_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'hE888)) 
    \PC_in_reg[7]_i_10 
       (.I0(Q[1]),
        .I1(\q_reg[3]_0 [1]),
        .I2(Q[0]),
        .I3(\q_reg[3]_0 [0]),
        .O(\q_reg[5]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffre" *) 
module dffre_4
   (D,
    Q,
    SR,
    \q_reg[0] ,
    \q_reg[5]_0 ,
    clk);
  output [5:0]D;
  output [5:0]Q;
  input [0:0]SR;
  input [0:0]\q_reg[0] ;
  input [5:0]\q_reg[5]_0 ;
  input clk;

  wire [5:0]D;
  wire [5:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\q_reg[0] ;
  wire [5:0]\q_reg[5]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q[2]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \q[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q[7]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(D[5]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk),
        .CE(\q_reg[0] ),
        .D(\q_reg[5]_0 [5]),
        .Q(Q[5]),
        .R(SR));
endmodule

module seg
   (Q,
    o_sel_OBUF,
    locked,
    E,
    D,
    clk_out1);
  output [6:0]Q;
  output [7:0]o_sel_OBUF;
  input locked;
  input [0:0]E;
  input [31:0]D;
  input clk_out1;

  wire [31:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire clk_out1;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [31:0]i_data_store;
  wire locked;
  wire \o_seg_r[0]_i_2_n_0 ;
  wire \o_seg_r[0]_i_3_n_0 ;
  wire \o_seg_r[0]_i_4_n_0 ;
  wire \o_seg_r[0]_i_5_n_0 ;
  wire \o_seg_r[0]_i_6_n_0 ;
  wire \o_seg_r[0]_i_7_n_0 ;
  wire \o_seg_r[0]_i_8_n_0 ;
  wire \o_seg_r[0]_i_9_n_0 ;
  wire \o_seg_r[1]_i_2_n_0 ;
  wire \o_seg_r[1]_i_3_n_0 ;
  wire \o_seg_r[1]_i_4_n_0 ;
  wire \o_seg_r[1]_i_5_n_0 ;
  wire \o_seg_r[1]_i_6_n_0 ;
  wire \o_seg_r[1]_i_7_n_0 ;
  wire \o_seg_r[1]_i_8_n_0 ;
  wire \o_seg_r[1]_i_9_n_0 ;
  wire \o_seg_r[2]_i_2_n_0 ;
  wire \o_seg_r[2]_i_3_n_0 ;
  wire \o_seg_r[2]_i_4_n_0 ;
  wire \o_seg_r[2]_i_5_n_0 ;
  wire \o_seg_r[2]_i_6_n_0 ;
  wire \o_seg_r[2]_i_7_n_0 ;
  wire \o_seg_r[2]_i_8_n_0 ;
  wire \o_seg_r[2]_i_9_n_0 ;
  wire \o_seg_r[3]_i_2_n_0 ;
  wire \o_seg_r[3]_i_3_n_0 ;
  wire \o_seg_r[3]_i_4_n_0 ;
  wire \o_seg_r[3]_i_5_n_0 ;
  wire \o_seg_r[3]_i_6_n_0 ;
  wire \o_seg_r[3]_i_7_n_0 ;
  wire \o_seg_r[3]_i_8_n_0 ;
  wire \o_seg_r[3]_i_9_n_0 ;
  wire \o_seg_r[4]_i_2_n_0 ;
  wire \o_seg_r[4]_i_3_n_0 ;
  wire \o_seg_r[4]_i_4_n_0 ;
  wire \o_seg_r[4]_i_5_n_0 ;
  wire \o_seg_r[4]_i_6_n_0 ;
  wire \o_seg_r[4]_i_7_n_0 ;
  wire \o_seg_r[4]_i_8_n_0 ;
  wire \o_seg_r[4]_i_9_n_0 ;
  wire \o_seg_r[5]_i_2_n_0 ;
  wire \o_seg_r[5]_i_3_n_0 ;
  wire \o_seg_r[5]_i_4_n_0 ;
  wire \o_seg_r[5]_i_5_n_0 ;
  wire \o_seg_r[5]_i_6_n_0 ;
  wire \o_seg_r[5]_i_7_n_0 ;
  wire \o_seg_r[5]_i_8_n_0 ;
  wire \o_seg_r[5]_i_9_n_0 ;
  wire \o_seg_r[6]_i_2_n_0 ;
  wire \o_seg_r[6]_i_3_n_0 ;
  wire \o_seg_r[6]_i_4_n_0 ;
  wire \o_seg_r[6]_i_5_n_0 ;
  wire \o_seg_r[6]_i_6_n_0 ;
  wire \o_seg_r[6]_i_7_n_0 ;
  wire \o_seg_r[6]_i_8_n_0 ;
  wire \o_seg_r[6]_i_9_n_0 ;
  wire [7:0]o_sel_OBUF;
  wire [1:0]p_0_in;
  wire [6:0]p_1_in;
  wire reset1;
  wire [2:0]seg7_addr;
  wire \seg7_addr[2]_i_1_n_0 ;
  wire seg7_clk;
  wire [2:0]\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ));
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[12]_i_1_O_UNCONNECTED [3],\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,seg7_clk,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(seg7_clk));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_data_store[31]_i_2 
       (.I0(locked),
        .O(reset1));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[0]),
        .Q(i_data_store[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[10]),
        .Q(i_data_store[10]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[11]),
        .Q(i_data_store[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[12]),
        .Q(i_data_store[12]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[13]),
        .Q(i_data_store[13]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[14]),
        .Q(i_data_store[14]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[15]),
        .Q(i_data_store[15]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[16]),
        .Q(i_data_store[16]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[17]),
        .Q(i_data_store[17]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[18]),
        .Q(i_data_store[18]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[19]),
        .Q(i_data_store[19]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[1]),
        .Q(i_data_store[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[20]),
        .Q(i_data_store[20]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[21]),
        .Q(i_data_store[21]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[22]),
        .Q(i_data_store[22]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[23]),
        .Q(i_data_store[23]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[24]),
        .Q(i_data_store[24]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[25]),
        .Q(i_data_store[25]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[26]),
        .Q(i_data_store[26]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[27]),
        .Q(i_data_store[27]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[28]),
        .Q(i_data_store[28]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[29]),
        .Q(i_data_store[29]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[2]),
        .Q(i_data_store[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[30]),
        .Q(i_data_store[30]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[31]),
        .Q(i_data_store[31]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[3]),
        .Q(i_data_store[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[4]),
        .Q(i_data_store[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[5]),
        .Q(i_data_store[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[6]),
        .Q(i_data_store[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[7]),
        .Q(i_data_store[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[8]),
        .Q(i_data_store[8]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .CLR(reset1),
        .D(D[9]),
        .Q(i_data_store[9]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[0]_i_1 
       (.I0(\o_seg_r[0]_i_2_n_0 ),
        .I1(\o_seg_r[0]_i_3_n_0 ),
        .I2(\o_seg_r[0]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[0]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h2812FFFF28120000)) 
    \o_seg_r[0]_i_2 
       (.I0(i_data_store[28]),
        .I1(i_data_store[29]),
        .I2(i_data_store[30]),
        .I3(i_data_store[31]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[0]_i_6_n_0 ),
        .O(\o_seg_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2812FFFF28120000)) 
    \o_seg_r[0]_i_3 
       (.I0(i_data_store[20]),
        .I1(i_data_store[21]),
        .I2(i_data_store[22]),
        .I3(i_data_store[23]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[0]_i_7_n_0 ),
        .O(\o_seg_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2812FFFF28120000)) 
    \o_seg_r[0]_i_4 
       (.I0(i_data_store[24]),
        .I1(i_data_store[25]),
        .I2(i_data_store[26]),
        .I3(i_data_store[27]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[0]_i_8_n_0 ),
        .O(\o_seg_r[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2812FFFF28120000)) 
    \o_seg_r[0]_i_5 
       (.I0(i_data_store[16]),
        .I1(i_data_store[17]),
        .I2(i_data_store[18]),
        .I3(i_data_store[19]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[0]_i_9_n_0 ),
        .O(\o_seg_r[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2812)) 
    \o_seg_r[0]_i_6 
       (.I0(i_data_store[12]),
        .I1(i_data_store[13]),
        .I2(i_data_store[14]),
        .I3(i_data_store[15]),
        .O(\o_seg_r[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2812)) 
    \o_seg_r[0]_i_7 
       (.I0(i_data_store[4]),
        .I1(i_data_store[5]),
        .I2(i_data_store[6]),
        .I3(i_data_store[7]),
        .O(\o_seg_r[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2812)) 
    \o_seg_r[0]_i_8 
       (.I0(i_data_store[8]),
        .I1(i_data_store[9]),
        .I2(i_data_store[10]),
        .I3(i_data_store[11]),
        .O(\o_seg_r[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2812)) 
    \o_seg_r[0]_i_9 
       (.I0(i_data_store[0]),
        .I1(i_data_store[1]),
        .I2(i_data_store[2]),
        .I3(i_data_store[3]),
        .O(\o_seg_r[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[1]_i_1 
       (.I0(\o_seg_r[1]_i_2_n_0 ),
        .I1(\o_seg_r[1]_i_3_n_0 ),
        .I2(\o_seg_r[1]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[1]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \o_seg_r[1]_i_2 
       (.I0(i_data_store[28]),
        .I1(i_data_store[30]),
        .I2(i_data_store[29]),
        .I3(i_data_store[31]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[1]_i_6_n_0 ),
        .O(\o_seg_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \o_seg_r[1]_i_3 
       (.I0(i_data_store[20]),
        .I1(i_data_store[22]),
        .I2(i_data_store[21]),
        .I3(i_data_store[23]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[1]_i_7_n_0 ),
        .O(\o_seg_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \o_seg_r[1]_i_4 
       (.I0(i_data_store[24]),
        .I1(i_data_store[26]),
        .I2(i_data_store[25]),
        .I3(i_data_store[27]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[1]_i_8_n_0 ),
        .O(\o_seg_r[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \o_seg_r[1]_i_5 
       (.I0(i_data_store[16]),
        .I1(i_data_store[18]),
        .I2(i_data_store[17]),
        .I3(i_data_store[19]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[1]_i_9_n_0 ),
        .O(\o_seg_r[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE448)) 
    \o_seg_r[1]_i_6 
       (.I0(i_data_store[12]),
        .I1(i_data_store[14]),
        .I2(i_data_store[13]),
        .I3(i_data_store[15]),
        .O(\o_seg_r[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE448)) 
    \o_seg_r[1]_i_7 
       (.I0(i_data_store[4]),
        .I1(i_data_store[6]),
        .I2(i_data_store[5]),
        .I3(i_data_store[7]),
        .O(\o_seg_r[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE448)) 
    \o_seg_r[1]_i_8 
       (.I0(i_data_store[8]),
        .I1(i_data_store[10]),
        .I2(i_data_store[9]),
        .I3(i_data_store[11]),
        .O(\o_seg_r[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE448)) 
    \o_seg_r[1]_i_9 
       (.I0(i_data_store[0]),
        .I1(i_data_store[2]),
        .I2(i_data_store[1]),
        .I3(i_data_store[3]),
        .O(\o_seg_r[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[2]_i_1 
       (.I0(\o_seg_r[2]_i_2_n_0 ),
        .I1(\o_seg_r[2]_i_3_n_0 ),
        .I2(\o_seg_r[2]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[2]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \o_seg_r[2]_i_2 
       (.I0(i_data_store[30]),
        .I1(i_data_store[28]),
        .I2(i_data_store[29]),
        .I3(i_data_store[31]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[2]_i_6_n_0 ),
        .O(\o_seg_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \o_seg_r[2]_i_3 
       (.I0(i_data_store[22]),
        .I1(i_data_store[20]),
        .I2(i_data_store[21]),
        .I3(i_data_store[23]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[2]_i_7_n_0 ),
        .O(\o_seg_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \o_seg_r[2]_i_4 
       (.I0(i_data_store[26]),
        .I1(i_data_store[24]),
        .I2(i_data_store[25]),
        .I3(i_data_store[27]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[2]_i_8_n_0 ),
        .O(\o_seg_r[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \o_seg_r[2]_i_5 
       (.I0(i_data_store[18]),
        .I1(i_data_store[16]),
        .I2(i_data_store[17]),
        .I3(i_data_store[19]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[2]_i_9_n_0 ),
        .O(\o_seg_r[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \o_seg_r[2]_i_6 
       (.I0(i_data_store[14]),
        .I1(i_data_store[12]),
        .I2(i_data_store[13]),
        .I3(i_data_store[15]),
        .O(\o_seg_r[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \o_seg_r[2]_i_7 
       (.I0(i_data_store[6]),
        .I1(i_data_store[4]),
        .I2(i_data_store[5]),
        .I3(i_data_store[7]),
        .O(\o_seg_r[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \o_seg_r[2]_i_8 
       (.I0(i_data_store[10]),
        .I1(i_data_store[8]),
        .I2(i_data_store[9]),
        .I3(i_data_store[11]),
        .O(\o_seg_r[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \o_seg_r[2]_i_9 
       (.I0(i_data_store[2]),
        .I1(i_data_store[0]),
        .I2(i_data_store[1]),
        .I3(i_data_store[3]),
        .O(\o_seg_r[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[3]_i_1 
       (.I0(\o_seg_r[3]_i_2_n_0 ),
        .I1(\o_seg_r[3]_i_3_n_0 ),
        .I2(\o_seg_r[3]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[3]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h8492FFFF84920000)) 
    \o_seg_r[3]_i_2 
       (.I0(i_data_store[28]),
        .I1(i_data_store[29]),
        .I2(i_data_store[30]),
        .I3(i_data_store[31]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[3]_i_6_n_0 ),
        .O(\o_seg_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8492FFFF84920000)) 
    \o_seg_r[3]_i_3 
       (.I0(i_data_store[20]),
        .I1(i_data_store[21]),
        .I2(i_data_store[22]),
        .I3(i_data_store[23]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[3]_i_7_n_0 ),
        .O(\o_seg_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8492FFFF84920000)) 
    \o_seg_r[3]_i_4 
       (.I0(i_data_store[24]),
        .I1(i_data_store[25]),
        .I2(i_data_store[26]),
        .I3(i_data_store[27]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[3]_i_8_n_0 ),
        .O(\o_seg_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8492FFFF84920000)) 
    \o_seg_r[3]_i_5 
       (.I0(i_data_store[16]),
        .I1(i_data_store[17]),
        .I2(i_data_store[18]),
        .I3(i_data_store[19]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[3]_i_9_n_0 ),
        .O(\o_seg_r[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8492)) 
    \o_seg_r[3]_i_6 
       (.I0(i_data_store[12]),
        .I1(i_data_store[13]),
        .I2(i_data_store[14]),
        .I3(i_data_store[15]),
        .O(\o_seg_r[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8492)) 
    \o_seg_r[3]_i_7 
       (.I0(i_data_store[4]),
        .I1(i_data_store[5]),
        .I2(i_data_store[6]),
        .I3(i_data_store[7]),
        .O(\o_seg_r[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8492)) 
    \o_seg_r[3]_i_8 
       (.I0(i_data_store[8]),
        .I1(i_data_store[9]),
        .I2(i_data_store[10]),
        .I3(i_data_store[11]),
        .O(\o_seg_r[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8492)) 
    \o_seg_r[3]_i_9 
       (.I0(i_data_store[0]),
        .I1(i_data_store[1]),
        .I2(i_data_store[2]),
        .I3(i_data_store[3]),
        .O(\o_seg_r[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[4]_i_1 
       (.I0(\o_seg_r[4]_i_2_n_0 ),
        .I1(\o_seg_r[4]_i_3_n_0 ),
        .I2(\o_seg_r[4]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[4]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \o_seg_r[4]_i_2 
       (.I0(i_data_store[31]),
        .I1(i_data_store[28]),
        .I2(i_data_store[30]),
        .I3(i_data_store[29]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[4]_i_6_n_0 ),
        .O(\o_seg_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \o_seg_r[4]_i_3 
       (.I0(i_data_store[23]),
        .I1(i_data_store[20]),
        .I2(i_data_store[22]),
        .I3(i_data_store[21]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[4]_i_7_n_0 ),
        .O(\o_seg_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \o_seg_r[4]_i_4 
       (.I0(i_data_store[27]),
        .I1(i_data_store[24]),
        .I2(i_data_store[26]),
        .I3(i_data_store[25]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[4]_i_8_n_0 ),
        .O(\o_seg_r[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \o_seg_r[4]_i_5 
       (.I0(i_data_store[19]),
        .I1(i_data_store[16]),
        .I2(i_data_store[18]),
        .I3(i_data_store[17]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[4]_i_9_n_0 ),
        .O(\o_seg_r[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h445C)) 
    \o_seg_r[4]_i_6 
       (.I0(i_data_store[15]),
        .I1(i_data_store[12]),
        .I2(i_data_store[14]),
        .I3(i_data_store[13]),
        .O(\o_seg_r[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h445C)) 
    \o_seg_r[4]_i_7 
       (.I0(i_data_store[7]),
        .I1(i_data_store[4]),
        .I2(i_data_store[6]),
        .I3(i_data_store[5]),
        .O(\o_seg_r[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h445C)) 
    \o_seg_r[4]_i_8 
       (.I0(i_data_store[11]),
        .I1(i_data_store[8]),
        .I2(i_data_store[10]),
        .I3(i_data_store[9]),
        .O(\o_seg_r[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h445C)) 
    \o_seg_r[4]_i_9 
       (.I0(i_data_store[3]),
        .I1(i_data_store[0]),
        .I2(i_data_store[2]),
        .I3(i_data_store[1]),
        .O(\o_seg_r[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[5]_i_1 
       (.I0(\o_seg_r[5]_i_2_n_0 ),
        .I1(\o_seg_r[5]_i_3_n_0 ),
        .I2(\o_seg_r[5]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[5]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h480EFFFF480E0000)) 
    \o_seg_r[5]_i_2 
       (.I0(i_data_store[29]),
        .I1(i_data_store[28]),
        .I2(i_data_store[31]),
        .I3(i_data_store[30]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[5]_i_6_n_0 ),
        .O(\o_seg_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h480EFFFF480E0000)) 
    \o_seg_r[5]_i_3 
       (.I0(i_data_store[21]),
        .I1(i_data_store[20]),
        .I2(i_data_store[23]),
        .I3(i_data_store[22]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[5]_i_7_n_0 ),
        .O(\o_seg_r[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h480EFFFF480E0000)) 
    \o_seg_r[5]_i_4 
       (.I0(i_data_store[25]),
        .I1(i_data_store[24]),
        .I2(i_data_store[27]),
        .I3(i_data_store[26]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[5]_i_8_n_0 ),
        .O(\o_seg_r[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h480EFFFF480E0000)) 
    \o_seg_r[5]_i_5 
       (.I0(i_data_store[17]),
        .I1(i_data_store[16]),
        .I2(i_data_store[19]),
        .I3(i_data_store[18]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[5]_i_9_n_0 ),
        .O(\o_seg_r[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h480E)) 
    \o_seg_r[5]_i_6 
       (.I0(i_data_store[13]),
        .I1(i_data_store[12]),
        .I2(i_data_store[15]),
        .I3(i_data_store[14]),
        .O(\o_seg_r[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h480E)) 
    \o_seg_r[5]_i_7 
       (.I0(i_data_store[5]),
        .I1(i_data_store[4]),
        .I2(i_data_store[7]),
        .I3(i_data_store[6]),
        .O(\o_seg_r[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h480E)) 
    \o_seg_r[5]_i_8 
       (.I0(i_data_store[9]),
        .I1(i_data_store[8]),
        .I2(i_data_store[11]),
        .I3(i_data_store[10]),
        .O(\o_seg_r[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h480E)) 
    \o_seg_r[5]_i_9 
       (.I0(i_data_store[1]),
        .I1(i_data_store[0]),
        .I2(i_data_store[3]),
        .I3(i_data_store[2]),
        .O(\o_seg_r[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \o_seg_r[6]_i_1 
       (.I0(\o_seg_r[6]_i_2_n_0 ),
        .I1(\o_seg_r[6]_i_3_n_0 ),
        .I2(\o_seg_r[6]_i_4_n_0 ),
        .I3(seg7_addr[1]),
        .I4(\o_seg_r[6]_i_5_n_0 ),
        .I5(seg7_addr[0]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0285FFFF02850000)) 
    \o_seg_r[6]_i_2 
       (.I0(i_data_store[30]),
        .I1(i_data_store[28]),
        .I2(i_data_store[29]),
        .I3(i_data_store[31]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[6]_i_6_n_0 ),
        .O(\o_seg_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0285FFFF02850000)) 
    \o_seg_r[6]_i_3 
       (.I0(i_data_store[22]),
        .I1(i_data_store[20]),
        .I2(i_data_store[21]),
        .I3(i_data_store[23]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[6]_i_7_n_0 ),
        .O(\o_seg_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0285FFFF02850000)) 
    \o_seg_r[6]_i_4 
       (.I0(i_data_store[26]),
        .I1(i_data_store[24]),
        .I2(i_data_store[25]),
        .I3(i_data_store[27]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[6]_i_8_n_0 ),
        .O(\o_seg_r[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0285FFFF02850000)) 
    \o_seg_r[6]_i_5 
       (.I0(i_data_store[18]),
        .I1(i_data_store[16]),
        .I2(i_data_store[17]),
        .I3(i_data_store[19]),
        .I4(seg7_addr[2]),
        .I5(\o_seg_r[6]_i_9_n_0 ),
        .O(\o_seg_r[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0285)) 
    \o_seg_r[6]_i_6 
       (.I0(i_data_store[14]),
        .I1(i_data_store[12]),
        .I2(i_data_store[13]),
        .I3(i_data_store[15]),
        .O(\o_seg_r[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0285)) 
    \o_seg_r[6]_i_7 
       (.I0(i_data_store[6]),
        .I1(i_data_store[4]),
        .I2(i_data_store[5]),
        .I3(i_data_store[7]),
        .O(\o_seg_r[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0285)) 
    \o_seg_r[6]_i_8 
       (.I0(i_data_store[10]),
        .I1(i_data_store[8]),
        .I2(i_data_store[9]),
        .I3(i_data_store[11]),
        .O(\o_seg_r[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0285)) 
    \o_seg_r[6]_i_9 
       (.I0(i_data_store[2]),
        .I1(i_data_store[0]),
        .I2(i_data_store[1]),
        .I3(i_data_store[3]),
        .O(\o_seg_r[6]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[0]),
        .PRE(reset1),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[1]),
        .PRE(reset1),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[2]),
        .PRE(reset1),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[3]),
        .PRE(reset1),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[4]),
        .PRE(reset1),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[5]),
        .PRE(reset1),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in[6]),
        .PRE(reset1),
        .Q(Q[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_sel_OBUF[0]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[1]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[2]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[3]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[4]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[5]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[6]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \o_sel_OBUF[7]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg7_addr[0]_i_1 
       (.I0(seg7_addr[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \seg7_addr[1]_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \seg7_addr[2]_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(\seg7_addr[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[0] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(reset1),
        .D(p_0_in[0]),
        .Q(seg7_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[1] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(reset1),
        .D(p_0_in[1]),
        .Q(seg7_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[2] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(reset1),
        .D(\seg7_addr[2]_i_1_n_0 ),
        .Q(seg7_addr[2]));
endmodule

(* C_ADDR_WIDTH = "6" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "64" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "dataRAM.mif" *) (* C_MEM_TYPE = "1" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module dataRAM_dist_mem_gen_v8_0_10
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [5:0]a;
  input [31:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  dataRAM_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module dataRAM_dist_mem_gen_v8_0_10_synth
   (spo,
    clk,
    d,
    we,
    a);
  output [31:0]spo;
  input clk;
  input [31:0]d;
  input we;
  input [5:0]a;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  dataRAM_spram \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module dataRAM_spram
   (spo,
    clk,
    d,
    we,
    a);
  output [31:0]spo;
  input clk;
  input [31:0]d;
  input we;
  input [5:0]a;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_UNIQ_BASE_ ram_reg_0_63_0_0
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[0]),
        .O(spo[0]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD12 ram_reg_0_63_10_10
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[10]),
        .O(spo[10]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD13 ram_reg_0_63_11_11
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[11]),
        .O(spo[11]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD14 ram_reg_0_63_12_12
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[12]),
        .O(spo[12]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD15 ram_reg_0_63_13_13
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[13]),
        .O(spo[13]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD16 ram_reg_0_63_14_14
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[14]),
        .O(spo[14]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD17 ram_reg_0_63_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .O(spo[15]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD18 ram_reg_0_63_16_16
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[16]),
        .O(spo[16]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD19 ram_reg_0_63_17_17
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[17]),
        .O(spo[17]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD20 ram_reg_0_63_18_18
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[18]),
        .O(spo[18]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD21 ram_reg_0_63_19_19
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[19]),
        .O(spo[19]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD22 ram_reg_0_63_1_1
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[1]),
        .O(spo[1]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD23 ram_reg_0_63_20_20
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[20]),
        .O(spo[20]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD24 ram_reg_0_63_21_21
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[21]),
        .O(spo[21]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD25 ram_reg_0_63_22_22
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[22]),
        .O(spo[22]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD26 ram_reg_0_63_23_23
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[23]),
        .O(spo[23]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD27 ram_reg_0_63_24_24
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[24]),
        .O(spo[24]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD28 ram_reg_0_63_25_25
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[25]),
        .O(spo[25]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD29 ram_reg_0_63_26_26
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[26]),
        .O(spo[26]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD30 ram_reg_0_63_27_27
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[27]),
        .O(spo[27]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD31 ram_reg_0_63_28_28
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[28]),
        .O(spo[28]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD32 ram_reg_0_63_29_29
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[29]),
        .O(spo[29]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD33 ram_reg_0_63_2_2
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[2]),
        .O(spo[2]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD34 ram_reg_0_63_30_30
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[30]),
        .O(spo[30]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD35 ram_reg_0_63_31_31
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[31]),
        .O(spo[31]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD36 ram_reg_0_63_3_3
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[3]),
        .O(spo[3]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD37 ram_reg_0_63_4_4
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[4]),
        .O(spo[4]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD38 ram_reg_0_63_5_5
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[5]),
        .O(spo[5]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD39 ram_reg_0_63_6_6
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[6]),
        .O(spo[6]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD40 ram_reg_0_63_7_7
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[7]),
        .O(spo[7]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD41 ram_reg_0_63_8_8
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[8]),
        .O(spo[8]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD42 ram_reg_0_63_9_9
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[9]),
        .O(spo[9]),
        .WCLK(clk),
        .WE(we));
endmodule

(* C_ADDR_WIDTH = "6" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "64" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "instructionROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module instructionROM_dist_mem_gen_v8_0_10
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [5:0]a;
  input [31:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [5:0]a;
  wire [31:0]\^spo ;

  assign spo[31] = \^spo [31];
  assign spo[29:28] = \^spo [29:28];
  assign spo[27] = \^spo [31];
  assign spo[26] = \^spo [26];
  assign spo[24:21] = \^spo [24:21];
  assign spo[20] = \<const0> ;
  assign spo[19:16] = \^spo [19:16];
  assign spo[15] = \^spo [28];
  assign spo[14:12] = \^spo [14:12];
  assign spo[11] = \^spo [13];
  assign spo[10] = \^spo [28];
  assign spo[9] = \^spo [28];
  assign spo[8] = \^spo [28];
  assign spo[7] = \^spo [28];
  assign spo[6] = \^spo [28];
  assign spo[5:0] = \^spo [5:0];
  GND GND
       (.G(\<const0> ));
  instructionROM_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [29:28],\^spo [26],\^spo [24:21],\^spo [19:16],\^spo [14:12],\^spo [5:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module instructionROM_dist_mem_gen_v8_0_10_synth
   (spo,
    a);
  output [20:0]spo;
  input [5:0]a;

  wire [5:0]a;
  wire [20:0]spo;

  instructionROM_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module instructionROM_rom
   (spo,
    a);
  output [20:0]spo;
  input [5:0]a;

  wire [5:0]a;
  wire [20:0]spo;

  LUT6 #(
    .INIT(64'h0000000026075305)) 
    \spo[0]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0122002000000000)) 
    \spo[11]_INST_0 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h00210018002A0000)) 
    \spo[12]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h00230018002A0000)) 
    \spo[14]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h000000003B16C919)) 
    \spo[16]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h0000082800000132)) 
    \spo[17]_INST_0 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[4]),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h00000000327FF6E4)) 
    \spo[18]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(spo[11]));
  LUT4 #(
    .INIT(16'h007F)) 
    \spo[19]_INST_0 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0020220201210310)) 
    \spo[1]_INST_0 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0002008200650040)) 
    \spo[21]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h00010030002A0000)) 
    \spo[22]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0000090000004084)) 
    \spo[23]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[3]),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h001D003800BC00FC)) 
    \spo[24]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h0300000C0A000800)) 
    \spo[26]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h0100000408000800)) 
    \spo[27]_INST_0 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h000000003613F777)) 
    \spo[29]_INST_0 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \spo[2]_INST_0 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(spo[2]));
  LUT5 #(
    .INIT(32'h10020000)) 
    \spo[3]_INST_0 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h0002080000020900)) 
    \spo[4]_INST_0 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h000A002E000400B0)) 
    \spo[5]_INST_0 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0120002000000000)) 
    \spo[6]_INST_0 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[18]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
