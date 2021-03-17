module inv_tb();

reg din;

wire dout;

inv NOT1 (
    .PIN_1 (din),
    .LED (dout)
);

initial begin
    $dumpfile("inv_tb.vcd");
    $dumpvars(0, inv_tb);

    # 5 din = 0;

    # 5 if (dout != 1)
            $display("--->Error! Input: 1, Output: %d", dout);

    # 5 din = 1;
    # 5 if (dout != 0)
            $display("--->Error! Input: 0, Output: %d", dout);

    # 5 $display("Simulation Complete");
    # 10 $finish;
end
endmodule
