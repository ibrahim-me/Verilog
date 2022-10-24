module mux_4_1 (s ,i, out);
	input [3:0]i;
	input [1:0]s;
	output out;
	wire w0, w1, w2 ,w3, s1n , s0n;
	not n1(s0n,s[0]);
	not n2(s1n,s[1]);
	and a1(w0, s0n, s1n, i[0]);
	and a2(w1, s[0], s1n, i[1]);
	and a3(w2, s0n, s[1], i[2]);
	and a4(w3, s[0], s[1], i[3]);
	or o1(out, w0, w1, w2, w3);
endmodule 