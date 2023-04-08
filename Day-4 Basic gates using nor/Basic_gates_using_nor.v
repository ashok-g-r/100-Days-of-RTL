`timescale 1ns / 1ps

//Implementaion of Basic gates using NOR gate
module Basic_gates_using_nor(
    input a,
    input b,
    output [0:7]y, 
    wire w1,w2  
    );
    nor(y[0],a,a);         //Not gate for input a
    nor(y[1],b,b);         //Not gate for input b
    nor(y[2],a,b);         //Nor gate
    nor(y[3],y[0],y[1]);   //And gate
    nor(y[4],y[2],y[2]);   //Or gate
    nor(y[5],y[3],y[3]);   // Nand gate
    nor(w1,a,y[2]);
    nor(w2,b,y[2]);
    nor(y[6],w1,w2);       //Ex-nor gate
    nor(y[7],y[6],y[6]);   //Ex-or gate
    endmodule