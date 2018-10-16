`timescale 1ns / 1ps

module a_halfAdder(A,B,s,c);
input A,B;
output s,c;
xor(s,A,B);
and(c,A,B);

endmodule
