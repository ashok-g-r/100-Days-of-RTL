`timescale 1ns / 1ps

//Implementaion of HALF SUBTRACTOR by using Gate Level Modelling
module half_subtractor(
    input a,
    input b,
    output Diff,Barrow
    ); 
   xor(Diff,a,b);
   and(Barrow,~a&b);
endmodule