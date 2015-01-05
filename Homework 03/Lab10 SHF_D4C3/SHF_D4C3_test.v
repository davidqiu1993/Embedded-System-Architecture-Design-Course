`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:18:58 10/24/2013
// Design Name:   SHF_D4C3
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 03/SHF_D4C3/SHF_D4C3_test.v
// Project Name:  SHF_D4C3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHF_D4C3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHF_D4C3_test;

	// Inputs
	reg [3:0] d;
	reg [2:0] s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	SHF_D4C3 uut (
		.d(d), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		s = 3'b 111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #100
    d = d+1;
  end
  
  always@(negedge d[3]) begin
    s = s+1;
  end
      
endmodule

