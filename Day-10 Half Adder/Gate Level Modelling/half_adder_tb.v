`timescale 1ns / 1ps

module half_adder_tb;
// Inputs
reg a;
reg b;
// Outputs
 wire sum,carry;
// Instantiate the Unit Under Test (UUT)
half_adder uut (a,b,sum,carry);

initial begin
 $monitor("a=%b b=%b -> SUM=%b CARRY=%b",a,b,sum,carry);
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
