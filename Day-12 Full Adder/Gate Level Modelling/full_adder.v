`timescale 1ns / 1ps

//Implementaion of FULL ADDER by using Gate Level Modelling
module full_adder(
    input a,
    input b,
    input c,
    output  sum,carry,
    wire c1,c2,c3
    );
xor x1(sum,a,b,c);
xor x2(c1,a,b);
and a1(c2,c1,c);
and a2(c3,a,b);
or(carry,c2,c3); 
endmodule






