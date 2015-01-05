`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:20 11/14/2013 
// Design Name: 
// Module Name:    TC_Parade 
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
module TC_Parade(
  input wire CLK,
  input wire RESET,
  input wire P, R,
  input wire T_A, T_B,
  output wire[2:0] L_A,
  output wire[2:0] L_B
);

  // Inner FSM variables
  reg mode;       // Parade mode
  reg[1:0] state; // Light state
  
  // Initialization
  initial begin
    // Init: parade mode begins with false
    mode = 1'b0;
    
    // Init: light state begins with S0
    state = 2'b00;
  end
  
  // Lights display logic
  assign L_A[2] = (state == 2'b00);   // A:Green
  assign L_A[1] = (state == 2'b01);   // A:Yellow
  assign L_A[0] = (state[1] == 1'b1); // A:Red
  assign L_B[2] = (state == 2'b10);   // B:Green
  assign L_B[1] = (state == 2'b11);   // B:Yellow
  assign L_B[0] = (state[1] == 1'b0); // B:Red
  
  // Runtime features
  always@(posedge CLK) begin
    // Parade mode FSM
    if(state[1] & !state[0] & ((P&!mode)|(R&mode))) mode = !mode;
    
    // Lights FSM
    if( !(( !state[1]&!state[0]&T_A ) | ( state[1]&!state[0]&(mode|T_B) )) ) state = state + 2'b01;
  end

endmodule
