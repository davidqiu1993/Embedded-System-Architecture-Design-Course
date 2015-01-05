`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:05 10/10/2013
// Design Name:   COMP_2BIT
// Module Name:   D:/Comparator_2bit/COMP_2BIT_test.v
// Project Name:  Comparator_2bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: COMP_2BIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module COMP_2BIT_test;

	// Inputs
	reg [1:0] b;
	reg [1:0] a;

	// Outputs
	wire a_eq_b;
	wire a_gt_b;
	wire a_lt_b;

	// Instantiate the Unit Under Test (UUT)
	COMP_2BIT uut (
		.b(b), 
		.a(a), 
		.a_eq_b(a_eq_b), 
		.a_gt_b(a_gt_b), 
		.a_lt_b(a_lt_b)
	);

	initial begin
		// Initialize Inputs
		b = 2'b 00;
		a = 2'b 11;

		// Wait 100 ns for global reset to finish
		#100;
		
	end
	
	always begin
		#100 b = b + 1;
	end
	
	always @(negedge b[1]) begin
		a = a + 1;
	end
   
endmodule
