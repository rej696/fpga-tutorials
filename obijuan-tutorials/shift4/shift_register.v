module shift_register (
    input wire clk_in,
    input wire load_shift,
    input wire serin,
    input wire [3:0] din,
    output reg [3:0] dout
);

parameter value = 1;

always @(posedge(clk_in)) begin
    if (load_shift == 0)
        dout <= value;
    else
        dout <= {din[2:0], serin};
end
endmodule
