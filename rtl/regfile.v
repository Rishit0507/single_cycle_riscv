module regfile(clk, reset, regwrite, r1, r2, rd, write_data, read_data1, read_data2)

input clk, reset, regwrite;
input [4:0] rs1, rs2, rd;
input [31:0] write_data;
output [31:0] read_data1, read_data2;
integer k;

reg [31:0] registers[31:0];

always @(posedge clk or posedge reset)
begin
    if(reset)
        begin 
            for (k=0; k<32; k=k+1)begin
                registers[k] <= 32'b00;
            end
        end
    else if(regwrite)begin
        registers[rd] <= write_data;
    end
end

assign read_data1 = registers[rs1];
assign read_data2 = registers[rs2];
endmodule
 
