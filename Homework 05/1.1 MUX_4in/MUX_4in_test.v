`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:27:19 10/31/2013
// Design Name:   MUX_4input
// Module Name:   C:/Users/B403/MUX_4input/MUX_4input_test.v
// Project Name:  MUX_4input
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_4input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_4input_test;

	// Inputs
	reg [1:0] S;
	reg [3:0] D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	MUX_4input uut (
		.S(S), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		S = 2'b 00;
		D = 4'b 1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	
	always begin
	  #100
	  S = S+1;
	end
	
	always@(negedge S[1]) begin
	  D = D+1;
	end
   
endmodule

