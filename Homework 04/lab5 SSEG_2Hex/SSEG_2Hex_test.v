`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:40:38 10/31/2013
// Design Name:   SSEG_2Hex
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 04/SSEG_2Hex/SSEG_2Hex_test.v
// Project Name:  SSEG_2Hex
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SSEG_2Hex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SSEG_2Hex_test;

	// Inputs
	reg [3:0] HexA;
	reg [3:0] HexB;
	reg CLK;

	// Outputs
	wire [6:0] SEG;
	wire dp;
	wire [3:0] AN;

	// Instantiate the Unit Under Test (UUT)
	SSEG_2Hex uut (
		.HexA(HexA), 
		.HexB(HexB), 
		.CLK(CLK), 
		.SEG(SEG), 
		.dp(dp), 
		.AN(AN)
	);

	initial begin
		// Initialize Inputs
		HexA = 2;
		HexB = 10;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    CLK = !CLK;
  end
  
endmodule

