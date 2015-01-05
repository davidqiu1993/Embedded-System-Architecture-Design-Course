`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:18 10/23/2013
// Design Name:   CONV_BIN_BCD
// Module Name:   CONV_BIN_BCD_test
// Project Name:  CONV_BIN_BCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONV_BIN_BCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CONV_BIN_BCD_test;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire [4:0] p;

	// Instantiate the Unit Under Test (UUT)
	CONV_BIN_BCD uut (
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    b <= b+1;
  end
      
endmodule

