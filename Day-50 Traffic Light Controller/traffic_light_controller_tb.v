module traffic_light_controller_tb;
        reg rst,clk;
        reg pass;
        wire red;
        wire yellow;
        wire green;
        wire [1:0]state;

        traffic_light_controller uut0 (         
                .reset(rst),
                .clk(clk),
                .pass(pass),
                .red(red),
                .yellow(yellow),
                .green(green),
                .state(state)
                        ); 

                always #5 clk = ~clk;

                initial 
                begin
                clk=1;
                rst=1;
                pass=0;
                #30;
                rst=0;
                #5
                pass=1;
                #10;
                pass=0;
                #30;

                #150 $finish;
                end
 
endmodule