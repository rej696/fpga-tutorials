// look in pins.pcf for all the pin names on the TinyFPGA BX board
module prescaler (
    input CLK_IN,    // 16MHz clock
    output CLK_OUT
);
    wire CLK_IN;
    wire CLK_OUT;

    // Number of bits of the prescaler (default)
    parameter N = 22;

    // Output is N-bit bus, initialised
    reg [N-1:0] count = 0;
    
    assign CLK_OUT = count[N-1];

    // sensitive to rising edge
    always @(posedge CLK_IN) begin
        // Increment data register
        count <= count + 1;
    end
endmodule
