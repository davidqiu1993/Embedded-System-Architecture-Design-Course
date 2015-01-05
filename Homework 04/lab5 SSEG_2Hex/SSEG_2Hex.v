`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    SSEG_2Hex 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//    SEG[6:0] = {g,f,e,d,c,b,a};
//    AN="+"; ACT="-";
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SSEG_2Hex(
  input wire[3:0] HexA,
  input wire[3:0] HexB,
  input wire CLK,
  output wire[6:0] SEG,
  output wire dp,
  output wire[3:0] AN );

  assign AN[1] = 1;
  assign AN[0] = 1;
  assign dp = 1;
  
  HEX_7seg hs( (CLK)?(HexA):(HexB), SEG );
  assign AN[3] = !CLK;
  assign AN[2] = CLK;

endmodule
