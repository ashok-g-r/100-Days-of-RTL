`timescale 1ns / 1ps

//Implementaion of 4bit Binary to Gray by using Data Flow Modelling
module Binary_to_Gray(
    input [3:0] b,       //Input declaration
    output [3:0] g       //output declaration
    );
assign g[0]=b[1]^b[0];   
assign g[1]=b[2]^b[1];
assign g[2]=b[3]^b[2];
assign g[3]=b[3];
endmodule