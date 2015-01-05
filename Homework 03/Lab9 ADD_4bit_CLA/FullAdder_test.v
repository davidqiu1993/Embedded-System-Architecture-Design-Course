`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:47:29 10/25/2013
// Design Name:   FullAdder
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 03/ADD_4bit_CLA/FullAdder_test.v
// Project Name:  ADD_4bit_CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullAdder_test;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire S;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    #100
    A <= 0;
    B <= 0;
    Cin <= 0;
    
    #100
    A <= 1;
    B <= 0;
    Cin <= 0;
    
    #100
    A <= 0;
    B <= 1;
    Cin <= 0;
    
    #100
    A <= 1;
    B <= 1;
    Cin <= 0;
    
    #100
    A <= 0;
    B <= 0;
    Cin <= 1;
    
    #100
    A <= 1;
    B <= 0;
    Cin <= 1;
    
    #100
    A <= 0;
    B <= 1;
    Cin <= 1;
    
    #100
    A <= 1;
    B <= 1;
    Cin <= 1;

	end
      
endmodule

