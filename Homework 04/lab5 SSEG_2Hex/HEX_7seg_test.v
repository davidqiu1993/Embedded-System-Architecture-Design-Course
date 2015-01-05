`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   HEX_7seg
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 04/SSEG_2Hex/HEX_7seg_test.v
// Project Name:  SSEG_2Hex
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HEX_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HEX_7seg_test;

	// Inputs
	reg [3:0] X;

	// Outputs
	wire [6:0] SEG;

	// Instantiate the Unit Under Test (UUT)
	HEX_7seg uut (
		.X(X), 
		.SEG(SEG)
	);

	initial begin
		// Initialize Inputs
		X = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    X = X+1;
  end
  
endmodule

