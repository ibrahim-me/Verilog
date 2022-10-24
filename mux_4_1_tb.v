module test;
	reg [3:0]i;
	reg [1:0]s;
	wire out; 
	mux_4_1 uut(s, i, out);
	initial begin
		i[0]=0;
		$dumpfile("mux_4_1_tb.vcd"); 
		$dumpvars(0, mux_4_1_tb);
		$display("hello %b",i[0]);
	end

endmodule 