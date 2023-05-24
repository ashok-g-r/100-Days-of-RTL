module fsm_patren_detector(in,reset,clk,out);
input in,clk,reset;
output reg out;
reg [2:0]current_state,next_state;  
localparam S0=3'b000,
            S1=3'b001,
            S2=3'b010,
            S3=3'b100;
 always @(current_state or in)
 begin
 case (current_state)
 S0: if(in==1'b0)
     begin
     next_state=S1;
     out=1'b0;
     end
     else next_state =current_state;
 S1:if(in==1'b1)
     begin
      next_state =S2;
      out=1'b0;
      end
      else
     begin
    next_state = current_state;
     out=1'b0;
     end
 S2: if(in==1'b0)
     begin
     next_state=S3;
     out=1'b0;
     end
     else
     begin
     next_state =S0;
     out=1'b0;
     end
 S3: if(in==1'b1)
     begin
     next_state=S2;
     out=1'b1;
     end
     else
     begin
     next_state=S1;
    out=1'b0;
     end
     default:next_state=S0;
     endcase
     end
always@(posedge clk)
begin
if(reset)
current_state<=S0;
else
current_state<=next_state;
end
endmodule