`timescale 1ns / 1ps

//Implementaion of HALF SUBTRACTOR by using Behavioural Modelling
module half_subtractor(
    input a,
    input b,
    output reg Diff,Barrow
    );
    always@(*)
  begin
   Diff=a^b;
   Barrow=~a&b;
  end
endmodule