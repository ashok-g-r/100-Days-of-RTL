`timescale 1ns / 1ps


//Implementaion of BCD to Binary by using DataFlow Modelling
module bcd_to_binary(
    input [7:0] bcd,
    output [3:0] binary
    );
             assign binary[0]=bcd[0];//z=d 
             assign binary[1]=bcd[1]^bcd[4];//y=c^h 
             assign binary[2]=bcd[2]|(bcd[4]&bcd[1]);//x=b+hc 
             assign binary[3]=bcd[3]|bcd[4];//w=a+h 
     endmodule //bcd_to_binary 