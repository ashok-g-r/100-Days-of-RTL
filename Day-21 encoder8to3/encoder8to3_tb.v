module encoder8to3_tb;
// Inputs
reg en;
reg [7:0]in;
// Outputs
wire v;
wire [2:0] y;
// Instantiate the Unit Under Test (UUT)
encoder8to3 uut(en,in,y,v);
 initial begin
 in = 8'b00000000;
 en = 1'b0;
 #10 en =1'b1; in = 8'b00000001;
 #10 in = 8'b00000010;
 #10 in = 8'b00000100;
 #10 in = 8'b00001000;
 #10 in = 8'b00010000;
 #10 in = 8'b00100000;
 #10 in = 8'b01000000;
 #10 in = 8'b10000000;
 end
endmodule