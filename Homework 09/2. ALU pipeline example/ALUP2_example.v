`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:20:49 12/12/2013 
// Design Name: 
// Module Name:    ALU with 2-Stage Pipeline
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
module ALUP2(
  input  wire       CLK,  // Clock trigger signal
  input  wire[15:0] IN1,  // Input 1
  input  wire[15:0] IN2,  // Input 2
  input  wire       ICF,  // Input Carry Flag
  output reg [15:0] OUT,  // Output
  output reg        OCF,  // Output Carry Flag
  output reg        OZF,  // Output Zero Flag
  output reg        ONF   // Output Negative Flag
);
  
  // STAGE 1: Registers
  reg [7:0] OUT_s1 = 0;
  reg       OCF_s1 = 0;
  reg [7:0] IN1_s1 = 0;
  reg [7:0] IN2_s1 = 0;
  
  
  // Clock trigger
  always @(posedge CLK) begin
    // STAGE 1: Running
    //   - Process lower bits
    {OCF_s1,OUT_s1} <= IN1[7:0] + IN2[7:0] + ICF;
    //   - Push higher bits
    IN1_s1          <= IN1[15:8];
    IN2_s1          <= IN2[15:8];
    
    // STAGE 2: Running
    //   - Process
    {OCF,OUT[15:8]} <= IN1_s1 + IN2_s1 + OCF_s1;
    OUT[7:0]        <= OUT_s1;
    ONF             <= (OUT[15]==1'b1);
    OZF             <= (OUT==16'b0);
  end
  
endmodule
