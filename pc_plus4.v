module pc_plus4(frompc,nextpc);
input [31:0] frompc;
output [31:0] nextpc;

assign nextpc = frompc + 32'd4;
endmodule
