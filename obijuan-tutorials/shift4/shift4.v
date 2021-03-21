module shift4 (
    input wire CLK_IN,
    output wire [3:0] data
);

parameter NP = 23;
parameter initial_value = 5;
wire clk_pres;
wire load_shift;
wire serin;

// prescaler
prescaler #(.N(NP)) PRES_1 (
    .clk_in(CLK_IN),
    .clk_out(clk_pres)
);

// initialiser
init INIT_1 (
    .clk_in(clk_pres),
    .ini_out(load_shift)
);

// shift register
shift_register #(.value(initial_value)) SHIFT_1 (
    .clk_in(clk_pres),
    .load_shift(load_shift),
    .serin(serin),
    .din(data),
    .dout(data)
);

// connect data output to serial input
assign serin = data[3];

endmodule
