`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:37 11/14/2013 
// Design Name: 
// Module Name:    TC_Mealy 
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
module TC_Mealy(
  input wire CLK,
  input wire R,
  input wire T_A, T_B,
  output reg[2:0] L_A,
  output reg[2:0] L_B
);

  reg[1:0] state;  // Current state of the FSM
  
  // Initialization
  initial begin
    // Init: state begins with S0
    state <= 2'b00;
    
    // Init: traffic light
    L_A = 3'b100; // A = Green
    L_B = 3'b001; // B = Red
  end
  
  // Runtime features
  always@(posedge CLK, posedge R) begin
    if(R) begin
      state = 2'b00; // S = 0
      L_A = 3'b100;  // A = Green
      L_B = 3'b001;  // B = Red
    end
    else begin
      case(state)
        // S0
        2'b00: begin
          if(!T_A) begin
            state = 2'b01;
            L_A = 3'b010;
            L_B = 3'b001;
          end
        end
        
        // S1
        2'b01: begin
          state = 2'b10;
          L_A = 3'b001;
          L_B = 3'b100;
        end
        
        // S2
        2'b10: begin
          if(!T_B) begin
            state = 2'b11;
            L_A = 3'b001;
            L_B = 3'b010;
          end
        end
        
        // S3
        2'b11: begin
          state = 2'b00;
          L_A = 3'b100;
          L_B = 3'b001;
        end
      endcase
    end
  end

endmodule
