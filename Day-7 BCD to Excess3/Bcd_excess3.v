`timescale 1ns / 1ps


//Implementaion of BCD to Excess3 by using DataFlow Modelling
module Bcd_excess3(b,e);
input [3:0] b;
output [3:0] e;
assign e[3]=b[3]|b[2]&b[1]|b[2]&b[0];
assign e[2]=~b[2]&b[1]|~b[2]&b[0]|b[2]&~b[1]&~b[0];
assign e[1]=b[1]&b[0]|~b[1]&~b[0];
assign e[0]=~b[0];
endmodule