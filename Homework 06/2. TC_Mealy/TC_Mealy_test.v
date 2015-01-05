`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:48 11/14/2013
// Design Name:   TC_Mealy
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 06/TC_Mealy/TC_Mealy_test.v
// Project Name:  TC_Mealy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TC_Mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TC_Mealy_test;

	// Inputs
	reg CLK;
	reg R;
	reg T_A;
	reg T_B;

	// Outputs
	wire [2:0] L_A;
	wire [2:0] L_B;

  // Temperate variables
  reg[3:0] round;

	// Instantiate the Unit Under Test (UUT)
	TC_Mealy uut (
		.CLK(CLK), 
		.R(R), 
		.T_A(T_A), 
		.T_B(T_B), 
		.L_A(L_A), 
		.L_B(L_B)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		R = 0;
		T_A = 0;
		T_B = 0;
    round = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

  always begin
    #50 CLK = !CLK;
  end
  
  always@(negedge CLK) begin
    case(round)
      1: begin
        T_A = 0;
        T_B = 1;
      end
      5: begin
        T_A = 1;
        T_B = 0;
      end
      8: begin
        T_A = 0;
        T_B = 0;
      end
    endcase
    round = round + 1;
  end

endmodule

