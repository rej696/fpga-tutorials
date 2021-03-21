module counter4(
    input CLK_IN,
    output [3:0] data
);

wire CLK_IN;

reg [3:0] data = 0;

parameter N = 22;

wire clk_pres;

prescaler #(.N(N)) pres1 (
    .clk_in(CLK_IN),
    .clk_out(clk_pres)
);

always @(posedge(clk_pres)) begin
    data <= data + 1;
end

endmodule
