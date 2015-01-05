`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:23:47 11/06/2013
// Design Name:   S2P_4bit
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 05/S2P_4bit/S2P_4bit_test.v
// Project Name:  S2P_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S2P_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module S2P_4bit_test;

	// Inputs
	reg CLK;
	reg CLR;
	reg D;

	// Outputs
	wire DR;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	S2P_4bit uut (
		.CLK(CLK), 
		.CLR(CLR), 
		.D(D), 
		.DR(DR), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		CLR = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
		// Add stimulus here
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=0; CLK=1; #50; CLK=0;
    
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    
    #50 D=0; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=1; CLK=1; #50; CLK=0;
    #50 D=0; CLK=1; #50; CLK=0;
	end
      
endmodule

