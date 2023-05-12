module bcd_counter(input clk, reset, output reg [3:0] q);
reg [3:0] t;
always @ (posedge clk) begin
  if (reset) 
  begin
    t <= 4'b0000;
    q <= 4'b0000;
  end
  else 
  begin
    t <= t + 1;
    if (t == 4'b1001) 
    begin
      t <= 4'b0000;
    end
    q <= t;
  end
end
endmodule
