`timescale 1ns / 1ps

//Behavioral Modelling
module Basic_gates(
    input a,
    input b,
    output reg[0:6]y  //for Behavioral Modelling the output is declared with reg
    );
    always @ (a or b)
    begin
    y[0]=~a;        //Not gate
    y[1]=a&b;       //And gate
    y[2]=a|b;       //Or gate
    y[3]=~(a &b);   //Nand gate    
    y[4]=~(a|b);    //Nor gate
    y[5]=a^b;       //Ex-or gate
    y[6]=~(a^b);    //Ex-nor gate
    end
    endmodule