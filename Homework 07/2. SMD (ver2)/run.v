`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:36 11/27/2013 
// Design Name: 
// Module Name:    run 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module run(
  input wire CLK,
  input wire nickel, dime, quarter,
  output wire[7:0] SEG,
  output reg[3:0] AN,
  output wire[3:0] ret
);

  reg[19:0] cclk;
  reg[7:0] digits;
  reg[3:0]  digit;
  wire[2:0] state;
  reg       dp;
  
  
  // Static assignments
  SMD dpr(cclk[5], nickel, dime, quarter, state, ret);
  HEX_7seg dec(digit, SEG[7:1]);
  assign SEG[0] = dp;
  
  
  // Initialization
  initial begin
    cclk   = 0;
    digits = 0;
    digit  = 0;
    dp     = 1'b1;
  end
  
  
  // State decoding
  always@(*) begin
    case(state)
      0:        digits = 8'h00;
      1:        digits = 8'h05;
      2:        digits = 8'h10;
      3:        digits = 8'h15;
      default:  digits = 8'h20;
    endcase
  end
  
  
  // Display
  always@(posedge CLK) cclk = cclk + 1;
  always@(posedge cclk[18], negedge cclk[18]) begin
    AN = 4'b1111;
    dp = 1'b1;
    if(!cclk[19]) begin
      if(cclk[18]) begin
        digit = digits[3:0];
        AN[0] = 1'b0;
      end
      else begin
        digit = digits[7:4];
        AN[1] = 1'b0;
      end
    end
    else begin
      digit = 4'h0;
      AN[2] = 1'b0;
      dp    = 1'b0;
    end
  end

endmodule
