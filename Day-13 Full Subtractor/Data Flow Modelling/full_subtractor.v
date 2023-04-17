`timescale 1ns / 1ps

//Implementaion of FULL SUBTRACTOR by using Data Flow Modelling
module full_subtractor(
    input a,
    input b,
    input cin,
    output  Diff,Barrow
    );
assign Diff=a^b^cin;
assign Barrow=(~(a^b))&cin|~a&b;
endmodule


