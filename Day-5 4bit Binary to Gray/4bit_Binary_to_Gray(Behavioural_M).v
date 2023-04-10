`timescale 1ns / 1ps

//Implementaion of 4bit Binary to Gray by using Behavioural Modelling
module Binary_to_Gray(
    input [3:0] b,       //Input declaration
    output reg[3:0] g       //output declaration
    );
 always@(b)
 begin
 g[0]=b[1]^b[0];   
 g[1]=b[2]^b[1];
 g[2]=b[3]^b[2];
 g[3]=b[3];
 end
endmodule