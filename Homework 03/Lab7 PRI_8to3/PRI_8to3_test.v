`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:21:27 10/23/2013
// Design Name:   PRI_8to3
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 03/PRI_8to3/PRI_8to3_test.v
// Project Name:  PRI_8to3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PRI_8to3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PRI_8to3_test;

	// Inputs
	reg [7:0] x;

	// Outputs
	wire [2:0] y;
	wire Valid;

	// Instantiate the Unit Under Test (UUT)
	PRI_8to3 uut (
		.x(x), 
		.y(y), 
		.Valid(Valid)
	);

	initial begin
		// Initialize Inputs
		x = 8'b 11111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    x = x-1; // 100 * 2^8 = 12800
  end
      
endmodule

