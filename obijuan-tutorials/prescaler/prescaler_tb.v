module prescaler_tb();

parameter N = 2;

reg clk = 0;

wire clk_out;

reg [N-1:0] counter_check = 0;

prescaler #(.N(N)) Pres1(
    .CLK_IN(clk),
    .CLK_OUT(clk_out)
);

always #1 clk = ~clk;

always @(negedge clk) begin
    counter_check <= counter_check + 1;
    
    if (counter_check[N-1] != clk_out) begin
        $display("Error! Expected: %d. Read: %d", counter_check[N-1], clk_out);
    end
end

initial begin
    $dumpfile("prescaler_tb.vcd");
    $dumpvars(0, prescaler_tb);

    # 99 $display("END of simulation");
    # 100 $finish;
end
endmodule
