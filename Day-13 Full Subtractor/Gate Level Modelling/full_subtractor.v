`timescale 1ns / 1ps

//Implementaion of FULL SUBTRACTOR by using Gate Level Modelling
module full_subtractor(
    input a,
    input b,
    input cin,
    output Diff,Barrow,
     wire c1,c2,c3
    );
    
 xor x1(Diff,a,b,cin);
    xnor x2(c1,a,b);
    and a1(c2,c1,cin);
    and a2(c3,~a,b);
    or(Barrow,c2,c3);
endmodule


