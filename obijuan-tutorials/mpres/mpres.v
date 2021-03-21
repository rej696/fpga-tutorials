module mpres(
   input CLK_IN,
   output PIN_1,
   output PIN_2,
   output PIN_3,
   output PIN_4
);

wire CLK_IN;
wire PIN_1;
wire PIN_2;
wire PIN_3;
wire PIN_4;

parameter N0 = 21;
parameter N1 = 1;
parameter N2 = 2;
parameter N3 = 1;
parameter N4 = 2;

wire clk_base;

prescaler #(.N(N0)) Pres0(
    .clk_in(CLK_IN),
    .clk_out(clk_base)
);

prescaler #(.N(N1)) Pres1(
    .clk_in(clk_base),
    .clk_out(PIN_1)
);

prescaler #(.N(N2)) Pres2(
    .clk_in(clk_base),
    .clk_out(PIN_2)
);

prescaler #(.N(N3)) Pres3(
    .clk_in(clk_base),
    .clk_out(PIN_3)
);

prescaler #(.N(N4)) Pres4(
    .clk_in(clk_base),
    .clk_out(PIN_4)
);

endmodule
