`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:56 11/13/2013 
// Design Name: 
// Module Name:    run 
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
module run(
  input wire CLK_100M,
  input wire R,
  input wire T_A, T_B,
  output wire[2:0] L_A,
  output wire[2:0] L_B
);

  reg[31:0] count; // Count of the clock pulse from 100M clock
  reg CLK;         // Inner clock of tick per 5 seconds
  
  // Instance
  TC_Moore tc(
    .CLK(CLK),
    .R(R),
    .T_A(T_A), .T_B(T_B),
    .L_A(L_A), .L_B(L_B)
  );
  
  // Initialization
  initial begin
    // Init: clock pulse count begins with 0
    count <= 0;
    
    // Init: inner clock begins with low level
    CLK <= 1'b0;
  end
  
  // Clock transformation
  always@(CLK_100M) begin
    count = count + 1;
    if(count == 500000000) CLK = !CLK;
  end

endmodule
