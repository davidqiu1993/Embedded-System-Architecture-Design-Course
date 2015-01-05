`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:11:03 11/28/2013 
// Design Name: 
// Module Name:    Timer 
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
module Timer(
  input wire CLK_100M,
  input wire RST,
  input wire START, STOP, INC,
  output wire[7:0] SEG,
  output reg[3:0] AN,
  output wire RUN
);

  reg         running;
  reg         incresing;
  reg[20:0]   cclk;
  reg[15:0]   digits;
  reg[3:0]    digit;
  
  
  // Display static connection
  HEX_7seg hs1(digit, SEG[7:1]);
  assign SEG[0] = 1;
  assign RUN = running;
  
  
  // Initialization
  initial begin
    running   = 0;
    incresing = 0;
    cclk      = 0;
    digits    = 0;
    digit     = 0;
    AN        = 4'b1111;
  end
  
  
  // State transitions
  always@(posedge CLK_100M) begin
    if(START)    running = 1;
    if(STOP|RST) running = 0;
    if(INC&!incresing) begin
      incresing <= 1;
      running   <= 1;
    end
    if(!INC&incresing) begin
      incresing <= 0;
      running   <= 0;
    end
  end
  
  
  // Time diviser
  always@(posedge CLK_100M) begin
    // Add up count of clock
    cclk = cclk + 1;
    
    // Check count
    if(cclk[16:0] == 100000) begin
      cclk[16:0] = 0;
      cclk[20:17] = cclk[20:17] + 1;
    end
  end
  
  
  // Display
  always@(posedge cclk[19], negedge cclk[19]) begin
    AN = 4'b1111;
    case(cclk[20:19])
      0: begin
        digit = digits[3:0];
        AN[0] = 0;
      end
      1: begin
        digit = digits[7:4];
        AN[1] = 0;
      end
      2: begin
        digit = digits[11:8];
        AN[2] = 0;
      end
      3: begin
        digit = digits[15:12];
        AN[3] = 0;
      end
    endcase
  end
  
  
  // Time counter
  always@(posedge cclk[16]) begin
    if(running) begin
      digits = digits + 1;
      if(digits[1]&digits[3])   digits[7:0]   = digits[7:0]  + 8'h06;
      if(digits[5]&digits[7])   digits[11:4]  = digits[11:4] + 8'h06;
      if(digits[9]&digits[11])  digits[15:8]  = digits[15:8] + 8'h06;
      if(digits[13]&digits[15]) digits[15:12] = 4'h0;
    end
    else if(RST) digits = 0;
  end

endmodule
