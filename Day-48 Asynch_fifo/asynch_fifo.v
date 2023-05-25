module asynch_fifo(wr_clk_i,rd_clk_i,rst_i,wdata_i,rdata_o,wr_en_i,rd_en_i,full_o,empty_o,error_o);
parameter WIDTH=8;
parameter DEPTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);
input wr_clk_i,rd_clk_i,rst_i,wr_en_i,rd_en_i;
input [WIDTH-1:0]wdata_i;
output reg [WIDTH-1:0]rdata_o;
output reg full_o,empty_o,error_o;
reg [ADDR_WIDTH-1:0]wr_ptr,rd_ptr;//intermediate connections
reg [ADDR_WIDTH-1:0]wr_ptr_rd_clk,rd_ptr_wr_clk;//intermediate connections
reg wr_toggle_f,rd_toggle_f;//intermediate connections
reg wr_toggle_f_rd_clk,rd_toggle_f_wr_clk;//intermediate connections
reg [WIDTH-1:0]mem[DEPTH-1:0];//fifo declaration
integer i;
always @(posedge wr_clk_i)begin
	if(rst_i==1)begin
		rdata_o=0;
		full_o=0;
		empty_o=1;
		error_o=0;
		wr_ptr=0;
		rd_ptr=0;
		wr_toggle_f=0;
		rd_toggle_f=0;
		wr_ptr_rd_clk=0;
		rd_ptr_wr_clk=0;
		wr_toggle_f_rd_clk=0;
		rd_toggle_f_wr_clk=0;
		for(i=0;i<DEPTH;i=i+1)begin
			mem[i]=0;
		end
	end
	else begin
		if(wr_en_i==1)begin
			if(full_o==0)begin
				error_o=0;
				mem[wr_ptr]=wdata_i;//write the wdata to the locations of the memory
				if(wr_ptr==DEPTH-1)begin
					wr_ptr=0;
					wr_toggle_f=~wr_toggle_f;
				end
				else begin
					wr_ptr=wr_ptr+1;
				end
			end
			else begin
				error_o=1;
			end
		end
	end
end
always @(posedge rd_clk_i)begin
	if(rst_i==0)begin
		if(rd_en_i==1)begin
			if(empty_o==0)begin
				error_o=0;
				rdata_o=mem[rd_ptr];//write the wdata to the locations of the memory
				if(rd_ptr==DEPTH-1)begin
					rd_ptr=0;
					rd_toggle_f=~rd_toggle_f;
				end
				else begin
					rd_ptr=rd_ptr+1;
				end
			end
			else begin
				error_o=1;
			end
		end
	end
end
always@(posedge wr_clk_i)begin
	rd_ptr_wr_clk<=rd_ptr;
	rd_toggle_f_wr_clk<=rd_toggle_f;
end
always@(posedge rd_clk_i)begin
	wr_ptr_rd_clk<=wr_ptr;
	wr_toggle_f_rd_clk<=wr_toggle_f;
end
always@(*)begin
	empty_o=0;
	full_o=0;
	if(wr_ptr_rd_clk==rd_ptr_wr_clk && wr_toggle_f_rd_clk==rd_toggle_f_wr_clk)begin
		empty_o=1;
	end
	if(wr_ptr_rd_clk==rd_ptr_wr_clk && wr_toggle_f_rd_clk!=rd_toggle_f_wr_clk)begin
		full_o=1;
	end
end
endmodule