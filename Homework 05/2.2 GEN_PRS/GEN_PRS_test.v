`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:17:18 11/07/2013
// Design Name:   GEN_PRS
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 05/GEN_PRS/GEN_PRS_test.v
// Project Name:  GEN_PRS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GEN_PRS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GEN_PRS_test;

	// Inputs
	reg CLK;

	// Outputs
	wire [7:0] partial_prs;

	// Instantiate the Unit Under Test (UUT)
	GEN_PRS uut (
		.CLK(CLK), 
		.partial_prs(partial_prs)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #50 CLK <= 0;
    #50 CLK <= 1;
  end

endmodule

