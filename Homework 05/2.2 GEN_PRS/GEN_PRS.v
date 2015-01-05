`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:10 11/07/2013 
// Design Name: 
// Module Name:    GEN_PRS 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module GEN_PRS( input wire CLK, output reg[7:0] partial_prs );

  initial begin
    partial_prs <= 0;
  end
  
  always@(posedge CLK) begin
    partial_prs[0] <= partial_prs[2] ~^ partial_prs[3];
    partial_prs[1] <= partial_prs[0];
    partial_prs[2] <= partial_prs[1];
    partial_prs[3] <= partial_prs[2];
    partial_prs[4] <= partial_prs[3];
    partial_prs[5] <= partial_prs[4];
    partial_prs[6] <= partial_prs[5];
    partial_prs[7] <= partial_prs[6];
  end

endmodule
