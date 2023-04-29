module priorityencoder_8to3_tb;
  reg [7:0]i;
  reg en;
  wire [2:0]y;
  // instantiate the model: creating 
  // instance for block diagram 
 priorityencoder_8to3 dut(en,i,y);
  initial
    begin
      // monitor is used to display the information. 
      $monitor("en=%b i=%b y=%b",en,i,y);
      // since en and i are input values, 
      // provide values to en and i. 
      en=1; i=128;#5
      en=1; i=64;#5
      en=1; i=32;#5
      en=1; i=16;#5
      en=1; i=8;#5
      en=1; i=4;#5
      en=1; i=2;#5
      en=1; i=0;#5
      en=0;i=8'bx;#5
      $finish;
    end
endmodule