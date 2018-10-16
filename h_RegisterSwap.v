`timescale 1ns / 1ps

module h_SwapRegisters(output r1,output r2);
reg [3:0] R1=4'b1000;
reg [3:0] R2=4'b0100;

initial
R1<=R2;
initial
R2<=R1;
endmodule
