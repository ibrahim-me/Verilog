module fulladd(input a ,b ,cin,output sum , cout);
 	
	wire w0, w1, w2;
 	xor x1(sum, a, b, cin);
 	and a1(w0, a, b);
 	and a2(w1, b, cin);
 	and a3(w2, cin, a);
 	or o1(cout,w0, w1, w2);
endmodule 