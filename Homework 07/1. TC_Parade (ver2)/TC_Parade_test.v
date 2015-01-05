`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:13 11/20/2013
// Design Name:   TC_Parade
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 07/TC_Parade/TC_Parade_test.v
// Project Name:  TC_Parade
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TC_Parade
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: P=1, R=1
// 
////////////////////////////////////////////////////////////////////////////////

module TC_Parade_test;

	// Inputs
	reg CLK;
	reg RESET;
	reg P;
	reg R;
	reg T_A;
	reg T_B;

	// Outputs
	wire [2:0] L_A;
	wire [2:0] L_B;

	// Instantiate the Unit Under Test (UUT)
	TC_Parade uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.P(P), 
		.R(R), 
		.T_A(T_A), 
		.T_B(T_B), 
		.L_A(L_A), 
		.L_B(L_B)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;
		P = 1;
		R = 1;
		T_A = 0;
		T_B = 0;
    

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

  always begin
    #50 CLK = !CLK;
  end

endmodule

