module init(
    input wire clk_in,
    output ini_out
);

reg ini_out = 0;

always @(posedge(clk_in))
    ini_out <= 1;

endmodule
