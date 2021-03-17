// look in pins.pcf for all the pin names on the TinyFPGA BX board
module fport (output [3:0] data);

    // Module output is a 4 wire bus
    wire [3:0] data;
        // Output the value through the 4 bit bus
        assign data = 4'b1001;
endmodule
