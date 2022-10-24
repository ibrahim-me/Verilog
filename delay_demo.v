module delay_demo(input a, b, c , output out);
	
	wire e; 
	and #(5) a1(e,a,b);
	or #(4) o1(out,e,c);
endmodule 


module test;
	reg a,b,c;
	wire out;
	delay_demo d1(a,b,c,out);

	initial begin
		$dumpfile("test.vcd"); 
		$dumpvars(0, test);
		$monitor($time," a=%d, b=%d , c=%d ,out=%d",a,b,c,out);
		#10 a=1'b1; b=1'b1; c=1'b1;
		#10 a=1'b1; b=1'b0; c=1'b0;
		#20 $finish;
	end
endmodule
