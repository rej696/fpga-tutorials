module top_tb;

wire LED;

top SB1 (
    .LED (LED),
    .USBPU (USBPU)
);

initial begin

    $dumpfile("top_tb.vcd");
    $dumpvars(0, top_tb);

    # 10 if (LED != 1)
             $display("---->!ERROR! Output is not 1");
         else
             $display("Component ok!");

    # 10 $finish;
end
endmodule


