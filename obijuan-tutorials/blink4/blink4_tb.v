module blink4_tb();

reg clk = 0;
wire [3:0] data; 

blink4 #(.N(1))
  TOP (
      .CLK_IN(clk),
      .data(data)
  );

always #1 clk = ~clk;

initial begin
    $dumpfile("blink4_tb.vcd");
    $dumpvars(0, blink4_tb);

    # 99 $display("Simulation Complete");
    # 100 $finish;
end

endmodule
