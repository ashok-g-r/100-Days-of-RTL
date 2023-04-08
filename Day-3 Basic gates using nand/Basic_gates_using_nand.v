`timescale 1ns / 1ps

//Implementaion of Basic gates using NAND gate
module Basic_gates_using_nand(
    input a,
    input b,
    output [0:7]y, 
    wire w1,w2  
    );
    nand(y[0],a,a);         //Not gate for input a
    nand(y[1],b,b);         //Not gate for input b
    nand(y[2],a,b);         //Nand gate
    nand(y[3],y[2],y[2]);   //And gate
    nand(y[4],y[0],y[1]);   //Or gate
    nand(y[5],y[4],y[4]);   // Nor gate
    nand(w1,a,y[2]);
    nand(w2,b,y[2]);
    nand(y[6],w1,w2);       //Ex-or gate
    nand(y[7],y[6],y[6]);   //Ex-nor gate
    endmodule