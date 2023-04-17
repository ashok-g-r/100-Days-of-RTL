`timescale 1ns / 1ps

//Implementaion of FULL ADDER by using Data Flow Modelling
module full_adder(
    input a,
    input b,
    input c,
    output sum,carry
    );
  assign sum=a^b^c;
  assign carry=(a^b)&c|a&b;
endmodule
