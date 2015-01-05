`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:18:15 10/16/2013
// Design Name:   MUX_4bit_2to1
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 02/MUX_4bit_2to1/MUX_4bit_2to1_test.v
// Project Name:  MUX_4bit_2to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_4bit_2to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_4bit_2to1_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	MUX_4bit_2to1 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		#100
		s <= 0;
		a <= 4'b 0000;
		b <= 4'b 0000;
		
		#200
		a <= 4'b 0000;
		b <= 4'b 1111;
		
		#200
		a <= 4'b 1111;
		b <= 4'b 0000;
		
		#200
		a <= 4'b 1111;
		b <= 4'b 1111;
		
		
		#200
		s <= 1;
		a <= 4'b 0000;
		b <= 4'b 0000;
		
		#200
		a <= 4'b 1111;
		b <= 4'b 0000;
		
		#200
		a <= 4'b 0000;
		b <= 4'b 1111;
		
		#200
		a <= 4'b 1111;
		b <= 4'b 1111;

	end
      
endmodule

