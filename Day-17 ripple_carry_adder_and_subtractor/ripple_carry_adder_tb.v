module ripple_carry_adder_tb;
// Inputs
reg [3:0] a,b;
reg c;
// Outputs
 wire [3:0]sum;
 wire carry_out;
// Instantiate the Unit Under Test (UUT)
ripple_carry_adder uut (a,b,c,sum,carry_out);

initial begin
 $monitor("a=%d b=%d c=%d -> SUM=%d CARRY_OUT=%b",a,b,c,sum,carry_out);
// Initialize Inputs
c=0;
a =4'b0000; b =4'b0001;
// Wait 100 ns for global reset to finish
#10
a =4'b0011; b =4'b0010;
#10
c=1;
a =4'b1000; b =4'b0001;
#10 
a =4'b1010; b =4'b1000;
end
endmodule