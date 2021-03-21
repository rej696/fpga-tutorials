module mpres_tb();

parameter N0 = 1;
parameter N1 = 1;
parameter N2 = 2;
parameter N3 = 3;
parameter N4 = 4;

reg clk = 0;

wire pin_1, pin_2, pin_3, pin_4;

mpres
  #(
      .N0(N0),
      .N1(N1),
      .N2(N2),
      .N3(N3),
      .N4(N4)
  )
  dut(
      .CLK_IN(clk),
      .PIN_1(pin_1),
      .PIN_2(pin_2),
      .PIN_3(pin_3),
      .PIN_4(pin_4)
  );

always #1 clk = ~clk;

initial begin
    $dumpfile("mpres_tb.vcd");
    $dumpvars(0, mpres_tb);

    # 99 $display("Simulation Complete");
    # 100 $finish;
end

endmodule
