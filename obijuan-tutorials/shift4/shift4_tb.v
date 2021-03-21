module shift4_tb();

reg clk = 0;
wire [3:0] data; 

shift4 #(
    .NP(1),
    .initial_value(4)
) SHIFT4_1 (
    .CLK_IN(clk),
    .data(data)
);

always #1 clk = ~clk;

initial begin
    $dumpfile("shift4_tb.vcd");
    $dumpvars(0, shift4_tb);

    # 99 $display("Simulation Complete");
    # 100 $finish;
end

endmodule
