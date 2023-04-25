module demux1to8(in,sel,d0,d1,d2,d3,d4,d5,d6,d7);
input in;
input [2:0] sel;
output reg d0,d1,d2,d3,d4,d5,d6,d7;
always@(*)
begin
case(sel)
 3'b000:begin
        d0=in;
        d1=0;
        d2=0;
        d3=0;
        d4=0;
        d5=0;
        d6=0;
        d7=0;
        end
 3'b001:begin
        d0=0;
        d1=in;
        d2=0;
        d3=0;
        d4=0;
        d5=0;
        d6=0;
        d7=0;
        end
 3'b010:begin
        d0=0;
        d1=0;
        d2=in;
        d3=0;
        d4=0;
        d5=0;
        d6=0;
        d7=0;
        end  
 3'b011:begin
        d0=0;
        d1=0;
        d2=0;
        d3=in;
        d4=0;
        d5=0;
        d6=0;
        d7=0;
        end  
 3'b100:begin
        d0=0;
        d1=0;
        d2=0;
        d3=0;
        d4=in;
        d5=0;
        d6=0;
        d7=0;
        end  
 3'b101:begin
        d0=0;
        d1=0;
        d2=0;
        d3=0;
        d4=0;
        d5=in;
        d6=0;
        d7=0;
        end  
 3'b110:begin
        d0=0;
        d1=0;
        d2=0;
        d3=0;
        d4=0;
        d5=0;
        d6=in;
        d7=0;
        end  
 3'b111:begin
        d0=0;
        d1=0;
        d2=0;
        d3=0;
        d4=0;
        d5=0;
        d6=0;
        d7=in;
        end  
endcase
end
endmodule