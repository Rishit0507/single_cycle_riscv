module instruction_memory(read_address, instruction_out);

input [31:0] read_address;
output reg [31:0] instruction_out;
reg[31:0] I_mem[63:0]; // 64 memory locations and each location of 32 bit

assign instruction_out <= I_mem[read_address[31:2]]; // PC is byte addressed, each instruction = 4 bytes

endmodule