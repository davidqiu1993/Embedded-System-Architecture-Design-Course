`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:00:21 10/26/2013
// Design Name:   DFF
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 04/SHREG_4bit/DFF_test.v
// Project Name:  SHREG_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DFF_test;

	// Inputs
	reg CLK;
	reg CLR;
	reg EN;
	reg D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.CLK(CLK), 
		.CLR(CLR), 
		.EN(EN), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		CLR = 0;
		EN = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
		
    // Reset the flip-flop
    CLR = 1;
    #50
    CLR = 0;
    #50;
    
    // Add stimulus here
    EN <= 1;
    
    D <= 1;
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    D <= 0;
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    
    EN <= 0;
    
    D <= 1;
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    D <= 0;
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    
    
    EN <= 1;
    D <= 1;
    CLK <= 1;
    #50;
    CLK <= 0;
    #50;
    CLR <= 1;
    #50;
    CLR <= 0;
    #50;
    
	end
      
endmodule

