module fport_tb;

wire [3:0] DATA;

fport fp1 (
    .data (DATA)
);

initial begin
    $dumpfile("fport_tb.vcd");
    $dumpvars(0, fport_tb);

    # 10 if (DATA != 4'b1001)
             $display("---->Error!");
         else
             $display("Component OK");
    # 10 $finish;
end
endmodule
