module piso_tb;
reg clock,load;
reg  [3:0] pin;
wire  sout;

piso dut(.clock(clock), .pin(pin), .sout(sout), .load(load));

initial
begin
$monitor("pin = %b, sout = %b, load = %b",pin,sout,load);
end

initial
begin
clock = 0;
forever #5 clock=~clock;
end
initial begin
pin = 4'b1010;
load = 1'b1;
#10;
load = 1'b0;
#50;
load = 1'b1;
pin = 4'b0101;
#10;
load = 1'b0;
#150 $finish;
end
endmodule 