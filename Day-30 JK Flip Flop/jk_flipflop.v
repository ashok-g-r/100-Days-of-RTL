module jk_flipflop(j,k,clk,reset,Q,Q_bar);
input j,k,clk,reset;
output reg Q,Q_bar;

    always@(posedge clk)
          begin
            if({reset})
            {Q,Q_bar}<={1'b0,1'b1};

            else
                begin
                case({j,k})
                2'b00:{Q,Q_bar}<={Q,Q_bar};
                2'b01:{Q,Q_bar}<={1'b0,1'b1};
                2'b10:{Q,Q_bar}<={1'b1,1'b0};
                2'b11:{Q,Q_bar}<={~Q,Q};
                default:begin end
                endcase
         end          
end
endmodule