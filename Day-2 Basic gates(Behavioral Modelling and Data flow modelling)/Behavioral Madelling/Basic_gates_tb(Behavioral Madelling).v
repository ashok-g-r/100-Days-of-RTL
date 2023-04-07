`timescale 1ns / 1ps

module Basic_gates_tb;
// Inputs
reg a;
reg b;
// Outputs
 wire [0:6]y;
// Instantiate the Unit Under Test (UUT)
Basic_gates uut (a,b,y);
initial begin
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