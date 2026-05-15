`timescale 1ns/1ps

module pc_plus4_tb;

reg  [31:0] frompc;
wire [31:0] nextpc;

pc_plus4 dut(
    .frompc(frompc),
    .nextpc(nextpc)
);

initial begin

    $dumpfile("pc_plus4.vcd");
    $dumpvars(0, pc_plus4_tb);

    frompc = 32'h00000000;
    #10;

    frompc = 32'h00000004;
    #10;

    frompc = 32'h00000008;
    #10;

    $finish;
end

endmodule