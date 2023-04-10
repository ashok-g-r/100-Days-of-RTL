`timescale 1ns / 1ps

//Implementaion of 4bit Gray to Binary by using Data Flow Modelling
module Gray_to_Binary(
    input [3:0] g,       //Input declaration
    output [3:0] b       //output declaration
    );
assign b[0]=b[1]^g[0];
assign b[1]=b[2]^g[1];
assign b[2]=b[3]^g[2];
assign b[3]=g[3];
endmodule