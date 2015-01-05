`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:14 11/13/2013 
// Design Name: 
// Module Name:    TC_Moore 
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
module TC_Moore(
  input wire CLK,
  input wire R,
  input wire T_A, T_B,
  output wire[2:0] L_A,
  output wire[2:0] L_B
);

  reg[1:0] state;  // Current state of the FSM
  
  // Initialization
  initial begin
    // Init: state begins with S0
    state <= 2'b00;
  end
  
  // Traffic light display
  assign L_A[2] = (state == 2'b00);   // A:Green
  assign L_A[1] = (state == 2'b01);   // A:Yellow
  assign L_A[0] = (state[1] == 1'b1); // A:Red
  assign L_B[2] = (state == 2'b10);   // B:Green
  assign L_B[1] = (state == 2'b11);   // B:Yellow
  assign L_B[0] = (state[1] == 1'b0); // B:Red
  
  // Runtime features
  always@(posedge CLK, posedge R) begin
    if(R) state = 2'b00;
    else begin
      case(state)
        2'b00:   if(!T_A) state = 2'b01;
        2'b10:   if(!T_B) state = 2'b11;
        default: state = state + 2'b01;
      endcase
    end
  end

endmodule
