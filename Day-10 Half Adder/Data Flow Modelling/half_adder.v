`timescale 1ns / 1ps

//Implementaion of HALF ADDER by using Data Flow Modelling
module half_adder(
    input a,
    input b,
    output sum,carry
    );
  assign sum=a^b;
  assign carry=a&b;
endmodule