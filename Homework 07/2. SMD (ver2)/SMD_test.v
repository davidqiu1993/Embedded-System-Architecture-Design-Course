`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:52:45 11/21/2013
// Design Name:   SMD
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 07/SMD/SMD_test.v
// Project Name:  SMD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SMD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SMD_test;

	// Inputs
	reg nickel;
	reg dime;
	reg quarter;

	// Outputs
  wire [2:0] state;
	wire [3:0] ret;

	// Instantiate the Unit Under Test (UUT)
	SMD uut (
		.nickel(nickel), 
		.dime(dime), 
		.quarter(quarter), 
    .state(state), 
		.ret(ret)
	);

	initial begin
		// Initialize Inputs
		nickel = 0;
		dime = 0;
		quarter = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    // nickel * 5
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    
    // nickel * 4 + dime * 1
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 nickel <= 1; #50 nickel <= 0;
    #50 dime <= 1; #50 dime <= 0;
    
    // nickel * 1 + dime * 1 + quarter * 1
    #50 nickel <= 1; #50 nickel <= 0;
    #50 dime <= 1; #50 dime <= 0;
    #50 quarter <= 1; #50 quarter <= 0;
    
    // dime * 2 + quarter * 1
    #50 dime <= 1; #50 dime <= 0;
    #50 dime <= 1; #50 dime <= 0;
    #50 quarter <= 1; #50 quarter <= 0;

	end

endmodule

