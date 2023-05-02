module BCD_7SEG(bcd,seg);
     input [3:0] bcd;
     output [6:0] seg;
     reg [6:0] seg;
    always @(bcd)
    begin
        case (bcd)
                   0: seg = 7'b1111110;   //when bcd = 0
                   1: seg = 7'b0110000;   //when bcd = 1
                   2: seg = 7'b1101101;   //when bcd = 2
                   3: seg = 7'b1111001;   //when bcd = 3
                   4: seg = 7'b0110011;   //when bcd = 4
                   5: seg = 7'b1011011;   //when bcd = 5
                   6: seg = 7'b1011111;   //when bcd = 6
                   7: seg = 7'b1110000;   //when bcd = 7
                   8: seg = 7'b1111111;   //when bcd = 8
                   9: seg = 7'b1111011;   //when bcd = 9
                   default: seg=7'b0000000;
        endcase
    end
endmodule