// look in pins.pcf for all the pin names on the TinyFPGA BX board
module prescaler (
    input clk_in,    // 16MHz clock
    output clk_out
);
    wire clk_in;
    wire clk_out;

    // Number of bits of the prescaler (default)
    parameter N = 25;

    // Output is N-bit bus, initialised
    reg [N-1:0] count = 0;
    
    assign clk_out = count[N-1];

    // sensitive to rising edge
    always @(posedge clk_in) begin
        // Increment data register
        count <= count + 1;
    end
endmodule
