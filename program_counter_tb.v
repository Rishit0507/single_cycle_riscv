`timescale 1ns/1ps

module program_counter_tb;

reg clk;
reg reset;
reg [31:0] PC_in;
wire [31:0] PC_out;

program_counter dut ( 
    .clk(clk),
    .reset(reset),
    .PC_in(PC_in),
    .PC_out(PC_out)
);

always #5 clk =~ clk;

initial begin
        $dumpfile("pc.vcd");
        $dumpvars(0, program_counter_tb);

        clk = 0;
        reset = 1;
        PC_in = 0;

        #10;
        reset = 0;
        PC_in = 32'h00000004;
        #10;
        PC_in = 32'h00000008;
        #10;
        PC_in = 32'h0000000C;
        #10

        $finish;
end
endmodule