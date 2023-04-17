`timescale 1ns / 1ps

//Implementaion of FULL ADDER by using Behavioral Modelling
module full_adder(
    input a,
    input b,
    input c,
    output reg sum,carry
    );
    always@(*)
    begin
sum=a^b^c;
   carry=(a^b)&c|a&b;
   end
endmodule

