`timescale 1ns / 1ps

module i_4bitMultiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
    );
    
    wire FA1input1,FA1input2,FA2input1,FA2input2,
        FA3input1,FA4input1,FA4input2,FA5input1,
        FA6input1,FA7input1,FA8input1,FA9input1,
        FA10input1,FA11input1,FA12input1,
        
        w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17;   
        
    and(FA1input1,A[0],B[1]);
    and(FA1input2,A[1],B[0]);
    
     and(FA2input1,A[2],B[0]);
     and(FA2input2,A[1],B[1]);
     and(FA3input1,A[0],B[2]);
     
     and(FA4input1,A[3],B[2]);
     and(FA4input2,A[2],B[1]);
     and(FA5input1,A[1],B[2]);
     and(FA6input1,A[0],B[3]);
     
     and(FA7input1,A[3],B[1]);
     and(FA8input1,A[2],B[2]);
     and(FA9input1,A[1],B[3]);
     
     and(FA10input1,A[3],B[2]);
     and(FA11input1,A[2],B[3]);
     
     and(FA12input1,A[3],B[3]);
    
     
             
    
    and(P[0],A[0],B[0]);
    b_fullAdder one(.A(FA1input1),.B(FA1input2),.Cin(1'b0),.Cout(w1),.Sum(P[1]));
    b_fullAdder two(.A(FA2input1),.B(FA2input2),.Cin(w1),.Cout(w2),.Sum(w3));
    b_fullAdder three(.A(FA3input1),.B(w3),.Cin(1'b0),.Cout(w4),.Sum(P[2]));
    b_fullAdder four(.A(FA4input1),.B(FA4input2),.Cin(w2),.Cout(w5),.Sum(w6));
    b_fullAdder five(.A(w6),.B(FA5input1),.Cin(w4),.Cout(w7),.Sum(w8));
    b_fullAdder six(.A(w8),.B(FA6input1),.Cin(1'b0),.Cout(w9),.Sum(P[3]));
    b_fullAdder seven(.A(FA7input1),.B(1'b0),.Cin(w5),.Cout(w10),.Sum(w11));
    b_fullAdder eight(.A(w11),.B(FA8input1),.Cin(w7),.Cout(w12),.Sum(w13));
    b_fullAdder nine(.A(w13),.B(FA9input1),.Cin(w9),.Cout(w14),.Sum(P[4]));
    b_fullAdder ten(.A(w10),.B(FA10input1),.Cin(w12),.Cout(w15),.Sum(w16));
    b_fullAdder eleven(.A(w16),.B(FA11input1),.Cin(w13),.Cout(w17),.Sum(P[5]));
    b_fullAdder twelve(.A(w15),.B(FA12input1),.Cin(w17),.Cout(P[7]),.Sum(P[6]));
 
endmodule
