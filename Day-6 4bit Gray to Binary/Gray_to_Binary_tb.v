`timescale 1ns / 1ps

module Gray_to_Binary_tb;

       // Inputs
       reg [3:0]g;
       // Outputs
       wire [3:0]b;
       
       // Instantiate the Unit Under Test (UUT)
       Gray_to_Binary uut(g,b);
       initial begin
       // Initialize Inputs
       g=4'b0000;
       // Wait 100 ns for global reset to finish
       #1   g=4'b0001;
       #1   g=4'b0010;
       #1   g=4'b0011;
       #1   g=4'b0100;
       #1   g=4'b0101;
       #1   g=4'b0110;
       #1   g=4'b0111;
       #1   g=4'b1000;
       #1   g=4'b1001;
       #1   g=4'b1010;
       #1   g=4'b1011;
       #1   g=4'b1100;
       #1   g=4'b1101;
       #1   g=4'b1110;
       #1   g=4'b1111;
       end
endmodule
