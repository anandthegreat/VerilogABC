`timescale 1ns / 1ps
module f_circularShiftLeft(input [3:0] A,input clock,input load,input [3:0] out);
reg [3:0] a;
reg temp;
always @(posedge clock)
   begin
   if(load) a <=A;
   else
        begin 
        temp = a[3];
        a[3]<=a[2];
        a[2]<=a[1];
        a[1]<=a[0];
        a[0]<=temp;
        end
        end
        assign out = a;
endmodule
