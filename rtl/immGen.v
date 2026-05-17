module immGen(opcode, instruction, immext);

input [6:0] opcode; // 7 bits of different instructions like R, lw, sw , branch
input [31:0] instruction;
output [31:0] immext; 

always @(*)
begin 
    case(opcode)
        7'b0000011 : immext = {{20{instruction[31]}}, instruction[31:20]}; // I-type instruction 31-20
        // make 20 copies of MSB, 20 copies of 0 if MSB=0 or 20 copies of 1 if MSB= 1

        7'b0100011 : immext = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}; //S-type instruction 31-25, 11-7
        7'b1100011 : immext = {{20{instruction[31]}}, instruction[31], instruction[30:25]}
