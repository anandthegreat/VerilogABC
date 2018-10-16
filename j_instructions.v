`timescale 1ns / 1ps


module j_instructions(input [3:0] r1,input [3:0] r2,input [1:0] switch,output reg [7:0] r3);
wire [3:0] add;
wire addcarry=0;
wire noUse;
wire [3:0] sub;
wire [7:0] mul;


c_4bitAdder adder(.X(r1),.Y(r2),.Cin(1'b0),.S(add),.Cout(addcarry));
c_4bitAdder subtractor(.X(r1),.Y(r2),.Cin(1'b1),.S(sub),.Cout(noUse));
i_4bitMultiplier multiplier(.A(r1),.B(r2),.P(mul));

always@(*)
begin
    case(switch)
        2'b00: begin
                r3=add;
               end
        2'b01: begin
               r3=sub;
               end
        2'b10: begin
               r3=mul;
               end
               
    endcase
end



endmodule


