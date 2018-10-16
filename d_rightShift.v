`timescale 1ns / 1ps

module d_rightShift(input [3:0] A);
reg [3:0] temp;
always @(*)
begin
   temp=temp>>1; 
end
assign A=temp;

endmodule