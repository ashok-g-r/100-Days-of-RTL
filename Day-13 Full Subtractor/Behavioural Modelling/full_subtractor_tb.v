module full_subtractor_tb;
// Inputs
reg a;
reg b;
reg cin;
// Outputs
 wire Diff,Barrow;
// Instantiate the Unit Under Test (UUT)
full_subtractor uut (a,b,cin,Diff,Barrow);
initial begin
 $monitor("a=%b b=%b cin=%b -> Diff=%b Barrow=%b",a,b,cin,Diff,Barrow);
// Initialize Inputs
a = 0; b = 0; cin=0;
// Wait 100 ns for global reset to finish
#1
a = 0;b = 0; cin=1;
#1           
a = 0;b = 1; cin=0;
#1           
a = 0;b = 1; cin=1;
#1           
a = 1;b = 0; cin=0;
#1           
a = 1;b = 0; cin=1;
#1          
a = 1;b = 1; cin=0;
#1          
a = 1;b = 1; cin=1;
end         
endmodule