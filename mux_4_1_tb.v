module test;
	reg [3:0]i;
	reg [1:0]s;
	wire out; 
	mux_4_1 uut(s, i, out);
	initial begin
		i[0]=0;

		$monitor($time," %b, %b, %b",s, i, out);
		#5 s=2'b00; i=4'b1010;
		#5 s=2'b01; 
		#5 s=2'b10;
		#5 s=2'b11;
	end

endmodule 