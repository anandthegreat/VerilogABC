`timescale 1ns / 1ps

module c_4bitAdder(
    input [3:0] X,
    input [3:0] Y,
    input Cin,
    output [3:0] S,
    output Cout
    );
    
    wire C1,C2,C3;
    wire [3:0] xo;
    
    xor(xo[0],Cin,Y[0]);
    xor(xo[1],Cin,Y[1]);
    xor(xo[2],Cin,Y[2]);
    xor(xo[3],Cin,Y[3]);
    
    b_fullAdder A(.A(X[0]),.B(xo[0]),.Cin(Cin),.Cout(C1),.Sum(S[0]));
    b_fullAdder B(.A(X[1]),.B(xo[1]),.Cin(C1),.Cout(C2),.Sum(S[1]));
    b_fullAdder C(.A(X[2]),.B(xo[2]),.Cin(C2),.Cout(C3),.Sum(S[2]));
    b_fullAdder D(.A(X[2]),.B(xo[2]),.Cin(C3),.Cout(Cout),.Sum(S[3]));
endmodule