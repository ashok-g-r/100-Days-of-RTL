`timescale 1ns / 1ps

module Binary_to_Gray_tb;

       // Inputs
       reg [3:0]b;
       // Outputs
       wire [3:0]g;
       
       // Instantiate the Unit Under Test (UUT)
       Binary_to_Gray uut (b,g);
       initial begin
       // Initialize Inputs
       b=4'b0000;
       // Wait 100 ns for global reset to finish
       #1   b=4'b0001;
       #1   b=4'b0010;
       #1   b=4'b0011;
       #1   b=4'b0100;
       #1   b=4'b0101;
       #1   b=4'b0110;
       #1   b=4'b0111;
       #1   b=4'b1000;
       #1   b=4'b1001;
       #1   b=4'b1010;
       #1   b=4'b1011;
       #1   b=4'b1100;
       #1   b=4'b1101;
       #1   b=4'b1110;
       #1   b=4'b1111;
       end
endmodule