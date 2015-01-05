`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:17:41 10/26/2013
// Design Name:   SHREG_4bit
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 04/SHREG_4bit/SHREG_4bit_test.v
// Project Name:  SHREG_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHREG_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHREG_4bit_test;

	// Inputs
	reg CLK;
	reg CLR;
	reg D;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	SHREG_4bit uut (
		.CLK(CLK), 
		.CLR(CLR), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		CLR = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
    
    // Reset the flip-flop
    CLR <= 1;
    #50;
    CLR <= 0;
    #50;
    
		// Add stimulus here
    D <= 1;
    
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    
    #100;
    CLR <= 1;
    #50;
    CLR <= 0;
    #50;

	end
      
endmodule

