`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:52 12/25/2013
// Design Name:   ALUP2
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Project/DCUP/ALUP2_example_test01.v
// Project Name:  DCUP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUP2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUP2_example_test01;

	// Inputs
	reg CLK;
	reg [15:0] IN1;
	reg [15:0] IN2;
	reg ICF;

	// Outputs
	wire [15:0] OUT;
	wire OCF;
	wire OZF;
	wire ONF;

	// Instantiate the Unit Under Test (UUT)
	ALUP2 uut (
		.CLK(CLK), 
		.IN1(IN1), 
		.IN2(IN2), 
		.ICF(ICF), 
		.OUT(OUT), 
		.OCF(OCF), 
		.OZF(OZF), 
		.ONF(ONF)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		IN1 = 0;
		IN2 = 0;
		ICF = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
    // Display settings
    $display("Pipeline ALU example testing");
    $display("IN1 :IN2 :ICF ::OUT :OCF :OZF :ONF ");
    $monitor("%h:%h:%b   ::%h:%b   :%b   :%b   ", uut.IN1, uut.IN2, uut.ICF, uut.OUT, uut.OCF, uut.OZF, uut.ONF);
    
		// Add stimulus here
    IN1 <= 16'h01FF;
    IN2 <= 16'h0102;
    
    #100;
    CLK <= 1'b1;
    
    #100;
    CLK <= 1'b0;
    
    IN1 <= 16'h1F05;
    IN2 <= 16'h0100;
    
    #100;
    CLK <= 1'b1;
    
    #100;
    CLK <= 1'b0;
    
    IN1 <= 16'h0000;
    IN2 <= 16'h0000;
    
    #100;
    CLK <= 1'b1;
    
    #100;
    CLK <= 1'b0;
    
    
    #100;
    CLK <= 1'b1;
    
    #100;
    CLK <= 1'b0;

	end
      
endmodule

