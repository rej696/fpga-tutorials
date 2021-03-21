module init_tb();

reg clk = 0;
wire ini; 

init #(.N(2))
  INIT (
      .CLK_IN(clk),
      .INI(ini)
  );

always #2 clk = ~clk;

initial begin
    $dumpfile("init_tb.vcd");
    $dumpvars(0, init_tb);

    # 20 $display("Simulation Complete");
    $finish;
end

endmodule
