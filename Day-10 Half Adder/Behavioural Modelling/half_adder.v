`timescale 1ns / 1ps

//Implementaion of HALF ADDER by using Behavioural Modelling
module half_adder(
    input a,
    input b,
    output reg sum,carry
    );
    always@(*)
    begin
   sum=a^b;
   carry=a&b;
  end
endmodule