`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:17:32 10/16/2013
// Design Name:   DEC_3to8
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 02/DEC_3to8/DEC_3to8_test.v
// Project Name:  DEC_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEC_3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEC_3to8_test;

	// Inputs
	reg [2:0] a;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	DEC_3to8 uut (
		.a(a), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#200
		a = a+1;
	end
      
endmodule

