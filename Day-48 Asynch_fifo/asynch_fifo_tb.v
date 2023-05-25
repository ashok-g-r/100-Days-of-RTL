module tb;
parameter WIDTH=8;
parameter DEPTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);
reg wr_clk_i,rd_clk_i,rst_i,wr_en_i,rd_en_i;
reg [WIDTH-1:0]wdata_i;
wire [WIDTH-1:0]rdata_o;
wire full_o,empty_o,error_o;
integer i;
//reg [ADDR_WIDTH-1:0]wr_ptr,rd_ptr;//intermediate connections
//reg wr_toggle_f,rd_togle_f;
asynch_fifo dut(wr_clk_i,rd_clk_i,rst_i,wdata_i,rdata_o,wr_en_i,rd_en_i,full_o,empty_o,error_o);
always begin
	wr_clk_i=0;
	#5;
	wr_clk_i=1;
	#5;
end
always begin
	rd_clk_i=0;
	#7;
	rd_clk_i=1;
	#7;
end
initial begin
	rst_i=1;
	wr_en_i=0;
	rd_en_i=0;
	wdata_i=0;
	#20;
	rst_i=0;
	for(i=0;i<DEPTH;i=i+1)begin
		@(posedge wr_clk_i)
		wdata_i=$random;
		wr_en_i=1;
	end
		@(posedge wr_clk_i)
		wdata_i=0;
		wr_en_i=0;
	for(i=0;i<DEPTH;i=i+1)begin
		@(posedge rd_clk_i)
		rd_en_i=1;
	end
		@(posedge rd_clk_i)
		rd_en_i=0;
end
initial begin
	#500;
	$finish;
end
endmodule