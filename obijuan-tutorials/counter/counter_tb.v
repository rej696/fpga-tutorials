module counter_tb();

reg clk = 0;

wire [3:0] data;
// wire pin2;
// wire pin3;
// wire pin4;
wire usbpul;
//wire counter_wire[3:0];
reg [25:0] counter_check = 1;
//assign counter_wire = counter_check[25:22];

counter C1(
    .CLK(clk),
    .PIN_1(data[3]),
    .PIN_2(data[2]),
    .PIN_3(data[1]),
    .PIN_4(data[0]),
    .USBPU(usbpu)
);

always #1 clk = ~clk;

always @(negedge clk) begin
    if (counter_check[25:22] != data)
        $display("Error! Expected: %d. Read: %d", counter_check, data);

    counter_check <= counter_check + 1;
end

initial begin
    $dumpfile("counter_tb.vcd");
    $dumpvars(0, counter_tb);

    # 0.5 if (data != 0)
              $display("Error! Counter is not 0!");
          else
              $display("Counter initialised. OK");
    
    # 99 $display("END of simulation");
    # 100 $finish;
end
endmodule
