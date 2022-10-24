module rippleadd(input cin ,input [3:0]a,b, output cout, output [3:0]sum);
	wire c1, c2, c3;
	fulladd f1(a[0],b[0],cin,sum[0],c1);
	fulladd f2(a[1],b[1],c1,sum[1],c2);
	fulladd f3(a[2],b[2],c2,sum[2],c3);
	fulladd f4(a[3],b[3],c3,sum[3],cout);
endmodule