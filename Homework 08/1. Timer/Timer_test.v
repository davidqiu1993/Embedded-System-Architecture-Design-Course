`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:20:30 12/04/2013
// Design Name:   Timer
// Module Name:   C:/Users/David/Documents/Xilinx Projects/Lab 08/Timer/Timer_test.v
// Project Name:  Timer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Timer_test;

	// Inputs
	reg CLK_100M;
	reg RST;
	reg START;
	reg STOP;
	reg INC;

	// Outputs
	wire [7:0] SEG;
	wire [3:0] AN;
	wire RUN;
  
  // Temperate
  reg[31:0] cclk;

	// Instantiate the Unit Under Test (UUT)
	Timer uut (
		.CLK_100M(CLK_100M), 
		.RST(RST), 
		.START(START), 
		.STOP(STOP), 
		.INC(INC), 
		.SEG(SEG), 
		.AN(AN), 
		.RUN(RUN)
	);

	initial begin
		// Initialize Inputs
		CLK_100M = 0;
		RST = 0;
		START = 0;
		STOP = 0;
		INC = 0;
    cclk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always begin
    #1;
    CLK_100M <= !CLK_100M;
    cclk <= cclk + 1;
  end
  
  always@(posedge cclk[0], negedge cclk[0]) begin
    // click START
    if(cclk == 110)   START = 1;
    if(cclk == 112)   START = 0;
    // click STOP
    if(cclk == 200)  STOP = 1;
    if(cclk == 202)  STOP = 0;
    // press INC
    if(cclk == 300)  INC = 1;
    if(cclk == 400)  INC = 0;
    // click START
    if(cclk == 500)   START = 1;
    if(cclk == 502)   START = 0;
    // click RST
    if(cclk == 600)  RST = 1;
    if(cclk == 602)  RST = 0;
  end
  
endmodule

