`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:48:31 10/25/2013
// Design Name:   ADD_4bit_CLA
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 03/ADD_4bit_CLA/ADD_4bit_CLA_test.v
// Project Name:  ADD_4bit_CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADD_4bit_CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADD_4bit_CLA_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ADD_4bit_CLA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 4'b 1111;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    A = A+1;
  end
  
  always@(negedge A[3]) begin
    B = B+1;
  end
  
  always@(negedge B[3]) begin
    Cin = Cin+1;
  end
      
endmodule

