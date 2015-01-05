`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:22 10/23/2013 
// Design Name: 
// Module Name:    ADD_4bit 
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
module ADD_4bit(
  input wire[3:0] A,
  input wire[3:0] B,
  input wire Cin,
  output wire[3:0] S,
  output wire Cout);

  wire C1, C2, C3;
  FullAdder fa1(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(C1));
  FullAdder fa2(.A(A[1]), .B(B[1]), .Cin(C1), .S(S[1]), .Cout(C2));
  FullAdder fa3(.A(A[2]), .B(B[2]), .Cin(C2), .S(S[2]), .Cout(C3));
  FullAdder fa4(.A(A[3]), .B(B[3]), .Cin(C3), .S(S[3]), .Cout(Cout));

endmodule
