// look in pins.pcf for all the pin names on the TinyFPGA BX board
module inv (
    input PIN_1,
    output LED,   // User/boot LED next to power LED
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
    assign USBPU = 0;

    ////////
    // make a simple blink circuit
    ////////
    
    wire PIN_1;
    wire LED;

    assign LED = ~PIN_1;
endmodule
