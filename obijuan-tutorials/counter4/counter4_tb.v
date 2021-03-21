module counter4_tb();

reg clk = 0;
wire [3:0] data; 

reg [3:0] counter_check = 0;

counter4 #(.N(1))
  C1(
      .CLK_IN(clk),
      .data(data)
  );

always #1 clk = ~clk;

always @(data) begin
    if (counter_check != data)
        $display("Error! Expected: %d, Read: %d", counter_check, data);

    counter_check <= counter_check + 1;
end

initial begin
    $dumpfile("counter4_tb.vcd");
    $dumpvars(0, counter4_tb);

    # 0.5 if (data != 0)
              $display("ERROR! Counter is NOT 0!");
          else
              $display("Counter initialised OK");

    # 99 $display("Simulation Complete");
    # 100 $finish;
end

endmodule
