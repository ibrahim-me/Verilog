module assign_delay(input in0, in1 , output out);
	
	assign #10 out = in0 & in1;


	//or we can do 
	//wire #10 out ;
	//assign out= in0 & in1;

	//we can also do 
	//wire #10 out = in0 & in1;

endmodule 

module test;
	reg in0, in1;
	wire out;
	assign_delay delay(in0, in1, out); 
	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0,test);
		in0=0; in1=0; 
		$monitor($time ," out = %b, in0 = %b, in1 = %b",out, in0, in1);
		#10 in0 = 1'b1; in1 = 1'b1;
		#10 in0 = 1'b0;
		#5  in0 = 1'b0; in1 = 1'b1;  
		#5  in0 = 1'b1;
		#10 in0 = 1'b0; in1 = 1'b0;
		#15 in0 = 1'b1; in1 = 1'b1;
		#5  in0 = 1'b0;

	end
endmodule