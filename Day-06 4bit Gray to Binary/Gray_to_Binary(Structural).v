`timescale 1ns / 1ps

//Implementaion of 4bit Gray to Binary by using Structural Modelling
module Gray_to_Binary(
    input [3:0] g,       //Input declaration
    output [3:0] b       //output declaration
    );
 xor A1(b[0],b[1],g[0]); 
 xor A2(b[1],b[2],g[1]); 
 xor A3(b[2],b[3],g[2]);
 buf A4(b[3],g[3]);
endmodule