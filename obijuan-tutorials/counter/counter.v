// look in pins.pcf for all the pin names on the TinyFPGA BX board
module counter (
    input CLK,    // 16MHz clock
    output PIN_1,
    output PIN_2,
    output PIN_3,
    output PIN_4,
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
    assign USBPU = 0;

    wire CLK;
    wire PIN_1;
    wire PIN_2;
    wire PIN_3;
    wire PIN_4;

    // Output is 26-bit bus, initialised
    reg [25:0] data = 0;
    
    assign PIN_1 = data[25];
    assign PIN_2 = data[24];
    assign PIN_3 = data[23];
    assign PIN_4 = data[22];

    // sensitive to rising edge
    always @(posedge CLK) begin
        // Increment data register
        data <= data + 1;
    end
endmodule
