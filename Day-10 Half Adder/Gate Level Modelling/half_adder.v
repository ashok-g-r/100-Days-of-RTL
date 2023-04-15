`timescale 1ns / 1ps

//Implementaion of HALF ADDER by using Gate Level Modelling
module half_adder(
    input a,
    input b,
    output sum,carry
    );
    xor(sum,a,b);
    and(carry,a,b);
endmodule
