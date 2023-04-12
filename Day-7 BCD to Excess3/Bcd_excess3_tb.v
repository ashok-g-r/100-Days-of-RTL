`timescale 1ns / 1ps

module Bcd_excess3_tb;
// Inputs
reg [3:0] b;
// Outputs
wire [3:0] e;
// Instantiate the Unit Under Test (UUT)
Bcd_excess3 uut (
.b(b),
.e(e)
);
initial begin
// Initialize Inputs
b=3'b0000;
#1;
b=4'b0001;
#1;
b=4'b0010;
#1;
b=4'b0011;
#1;
b=4'b0100;
#1;
b=4'b0101;
#1;
b=4'b0110;
#1;
b=4'b0111;
#1;
b=4'b1000;
#1;
b=4'b1001;
end
endmodule