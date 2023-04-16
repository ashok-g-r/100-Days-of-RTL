`timescale 1ns / 1ps

//Implementaion of HALF SUBTRACTOR by using Data Flow Modelling
module half_subtractor(
    input a,
    input b,
    output Diff,Barrow
    );
  assign Diff=a^b;
  assign Barrow=~a&b;
endmodule