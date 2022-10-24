
module test();


	reg x, y;
	initial begin
		$display("hello world");
		$dumpfile("test.vcd"); 
		$dumpvars(0, test);
	end
	initial begin
		#0 x=0;
		#0 y=0;
		#10 x=1'b1;
	end 

	initial begin
		x=1;
		y=1;
		#20 $finish;
	end

	

endmodule 