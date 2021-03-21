module blink4(
    input wire CLK_IN,
    output wire [3:0] data
);

parameter N = 22;

wire clk_base;

// register data
reg [3:0] dout = 0;

// wire to the register
wire [3:0] din;

// Instance of the prescaler
prescaler #(.N(N)) pres1 (
    .clk_in(CLK_IN),
    .clk_out(clk_base)
);

// register implementation
always @(posedge(clk_base)) begin
    dout <= din;
end

// not gate from register output to register input to blink leds
assign din = ~dout;

// output data from register to LEDs
assign data = dout;

endmodule
