module demux1_4(input s0,s1, d, output [3:0]out);
	wire w1,w2,w3,w4,s0n,s1n;
	not n1(s0n,s0);
	not n2(s1n,s1);


	and a1(out[0],d,s0n,s1n);
	and a2(out[1],d,s0n,s1);
	and a3(out[2],d,s0,s1n);
	and a4(out[3],d,s0,s1);

endmodule

module test;
	reg s0,s1,d;
	wire [3:0] out;

	demux1_4 uut(s0,s1,d,out);

	initial begin
		$monitor($time," %b, %b, %b, %b",s0, s1, d, out);

		#5 s0=0; s1=0; d=1;
		#5 s1=1; 
		#5 s0=1;
		#5 s1=0;
	end

endmodule