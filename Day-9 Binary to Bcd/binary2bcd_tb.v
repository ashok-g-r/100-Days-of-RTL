`timescale 1ns / 1ps

module binary2bcd_tb(); 
    reg [7:0] binary; 
    wire [11:0] bcd; 
    integer i; 
      
    binary2bcd b2b(.binary(binary), .bcd(bcd)); 
     
    initial 
    $monitor(" binary = %b, bcd = %b %b %b ", binary , bcd[11:8],bcd[7:4],bcd[3:0]); 
     
    initial 
    begin 
      for(i=0; i<256; i=i+1) 
     begin 
            binary = i; 
            #3;    
     end 
    end 
   endmodule