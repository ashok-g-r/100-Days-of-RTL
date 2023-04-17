`timescale 1ns / 1ps

//Implementaion of FULL SUBTRACTOR by using Behavioural Modelling
module full_subtractor(
    input a,
    input b,
    input cin,
    output reg Diff,Barrow
    );
    always@(*)
    begin
 Diff=a^b^cin;
 Barrow=(~(a^b))&cin|~a&b;
end
endmodule