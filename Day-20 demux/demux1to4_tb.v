module demux1to4_tb;
        reg I;
        reg [1:0] S;
        wire [0:3] Y;
        
        demux1to4 DUT (.in(I),.sel(S),.y(Y));
        
            initial begin
            
            I = 1;
            S = 2'b00;
            #100;
            S = 2'b01;
            #100;
            S = 2'b10;
            #100;
            S = 2'b11;
            #100;
            I = 0;
            
            end     
endmodule