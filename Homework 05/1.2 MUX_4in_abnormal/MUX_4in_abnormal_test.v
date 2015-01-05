`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:44:47 10/31/2013
// Design Name:   MUX_4input_abnormal
// Module Name:   C:/Users/B403/MUX_4input_abnormal/MUX_4input_abnormal_test.v
// Project Name:  MUX_4input_abnormal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_4input_abnormal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_4input_abnormal_test;

	// Inputs
	reg [1:0] S;
	reg [3:0] D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	MUX_4input_abnormal uut (
		.S(S), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		D = 0;

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

