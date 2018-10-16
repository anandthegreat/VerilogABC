`timescale 1ns / 1ps
module g_circularShiftRight(input [3:0] A,out,input load,clock);
    reg [3:0] a;
    reg temp;
    always @(posedge clock)
    begin
    if(load) 
    a <=A;
    else
     begin 
     temp=a[0];
     a[0]<=a[1];
     a[1]<=a[2];
     a[2]<=a[3];
     a[3]=temp;
     end
end
 assign out = a;
endmodule
