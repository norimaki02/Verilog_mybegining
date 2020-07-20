`include "immgen.v"
module testbench();
reg [31:0]inst;
wire [63:0]imm;
immgen testimm(inst,imm);
initial
begin
	$dumpfile("immgen_test.vcd");
	$dumpvars(0, testimm);
	$monitor("%h, %h ",inst,imm);
	inst = 5; inst[6:2] = 5'b00000;#10;
	inst = 7; inst[6:2] = 5'b01000;#10;
	inst = 9; inst[6:2] = 5'b11000;#10;
	$finish;
end
endmodule