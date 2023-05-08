module ring_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	parameter WIDTH=4;

	// Outputs
	wire [WIDTH-1:0] count;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		$monitor ("T=%0t out=%b", $time, count);
 #50 reset=1;

		// Wait 100 ns for global reset to finish
	end
	initial
	#300 $finish;
endmodule