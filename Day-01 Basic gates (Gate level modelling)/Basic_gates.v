`timescale 1ns / 1ps

//Gate Level Modelling
module Basic_gates(
    input a,
    input b,
    output [0:6]y
    );
  not(y[0],a);           //Not gate
    and(y[1], a,b);      //And gate
    or(y[2],a,b);        //Or gate
    nand(y[3],a,b);      //Nand gate
    nor(y[4],a,b);       //Nor gate
    xor(y[5],a,b);       //Ex-or gate
    xnor(y[6],a,b);      //Ex-nor gate
endmodule