`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:04:48 10/25/2013 
// Design Name: 
// Module Name:    ADD_4bit_CLA 
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
module ADD_4bit_CLA(
  input wire[3:0] A,
  input wire[3:0] B,
  input wire Cin,
  output wire[3:0] S,
  output wire Cout
);
  
  FullAdder fa1(.A(A[0]), .B(B[0]), 
                .Cin(Cin), 
                .S(S[0]));
  
  FullAdder fa2(.A(A[1]), .B(B[1]), 
                .Cin( A[0]&B[0] | Cin&A[0] | Cin&B[0] ), 
                .S(S[1]));
  
  FullAdder fa3(.A(A[2]), .B(B[2]), 
                .Cin( A[1]&B[1] | (A[1]|B[1])&(A[0]&B[0] | Cin&A[0] | Cin&B[0]) ), 
                .S(S[2]));
  
  FullAdder fa4(.A(A[3]), .B(B[3]), 
                .Cin( A[2]&B[2] | (A[2]|B[2])&(A[1]&B[1] | (A[1]|B[1])&(A[0]&B[0] | Cin&A[0] | Cin&B[0])) ), 
                .S(S[3]));
  
  assign Cout = A[3]&B[3] | (A[3]|B[3])&(A[2]&B[2] | (A[2]|B[2])&(A[1]&B[1] | (A[1]|B[1])&(A[0]&B[0] | Cin&A[0] | Cin&B[0])));

endmodule
