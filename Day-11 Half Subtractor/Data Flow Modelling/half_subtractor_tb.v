`timescale 1ns / 1ps

module half_subtractor_tb;
// Inputs
reg a;
reg b;
// Outputs
 wire Diff,Barrow;
// Instantiate the Unit Under Test (UUT)
half_subtractor uut (a,b,Diff,Barrow);

initial begin
 $monitor("a=%b b=%b -> DIFFERENCE=%b BARROW=%b",a,b,Diff,Barrow);
// Initialize Inputs
a = 0; b = 0;
// Wait 100 ns for global reset to finish
#1
a = 0;b = 1;
#1
a = 1;b = 0;
#1
a = 1;b = 1;
end
endmodule
