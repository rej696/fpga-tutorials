module init(
    input wire CLK_IN,
    output INI
);


// Unoptimised
// wire din;
// wire INI;
// 
// reg dout = 0;
// 
// always @(posedge(CLK_IN)) begin
//     dout <= din;
// end
// 
// assign din = 1;
// 
// assign INI = dout;

parameter N = 22;

wire clk_out;

prescaler #(.N(N)) PRES (
    .clk_in(CLK_IN),
    .clk_out(clk_out)
);

// Optimised
reg INI = 0;

always @(posedge(clk_out))
    INI <= 1;

endmodule
