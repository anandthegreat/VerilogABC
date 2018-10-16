`timescale 1ns / 1ps

module b_fullAdder(A, B,Cin,Cout,Sum);
input A,B,Cin;
output Cout,Sum;
wire sumHA1,carryHA1,carryHA2;
a_halfAdder h1(.A(A),.B(B),.s(sumHA1),.c(carryHA1));
a_halfAdder h2(.A(sumHA1),.B(Cin),.s(Sum),.c(carryHA2));
or(Cout,carryHA1,carryHA2); 

endmodule