`timescale 1ns / 1ps

 module bcd_to_binary_tb; 
 reg [7:0] bcd_code; 
 wire [3:0] binary_code;   
 bcd_to_binary uut(
 .bcd(bcd_code),
 .binary(binary_code)
 ); 
  
  initial begin 
  $monitor ("bcd code=%b %b, binary code=%b",bcd_code[7:4],bcd_code[3:0],binary_code); 
     bcd_code=8'b0; 
  #5  bcd_code=8'b1; 
  #5  bcd_code=8'b10; 
  #5  bcd_code=8'b11; 
  #5  bcd_code=8'b100; 
  #5  bcd_code=8'b101; 
  #5  bcd_code=8'b110; 
  #5  bcd_code=8'b111; 
  #5  bcd_code=8'b1000; 
  #5  bcd_code=8'b1001; 
  #5  bcd_code=8'b10000; 
  #5  bcd_code=8'b10001; 
  #5  bcd_code=8'b10010; 
  #5  bcd_code=8'b10011; 
  #5  bcd_code=8'b10100; 
  #5  bcd_code=8'b10101; 
          $finish; 
  end  
  endmodule //bcd_to_binary_tb 
   
  /*Output: 
  bcd code=0000 0000, binary code=0000 
  bcd code=0000 0001, binary code=0001 
  bcd code=0000 0010, binary code=0010 
  bcd code=0000 0011, binary code=0011 
  bcd code=0000 0100, binary code=0100 
  bcd code=0000 0101, binary code=0101 
  bcd code=0000 0110, binary code=0110 
  bcd code=0000 0111, binary code=0111 
  bcd code=0000 1000, binary code=1000 
  bcd code=0000 1001, binary code=1001 
  bcd code=0001 0000, binary code=1010 
  bcd code=0001 0001, binary code=1011 
  bcd code=0001 0010, binary code=1100 
  bcd code=0001 0011, binary code=1101 
  bcd code=0001 0100, binary code=1110 
  bcd code=0001 0101, binary code=1111 
  */