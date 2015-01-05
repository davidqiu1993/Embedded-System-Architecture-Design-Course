`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:20:55 10/16/2013
// Design Name:   DEC_7seg
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 02/DEC_7seg/DEC_7seg_test.v
// Project Name:  DEC_7seg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEC_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEC_7seg_test;

	// Inputs
	reg [3:0] X;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	DEC_7seg uut (
		.X(X), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		X = 0;

		// Wait 100 ns for global reset to finish
		#100;

	end
   
	always begin
		#200
		X = X + 1;
	end
	
endmodule

