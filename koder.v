module koder;
	parameter d = 12;
	reg [4:1]a = 4'd5;
	reg [3:0]b = 4'b1000 ;
	reg [87:0]some_string = "hello world"; 
	integer arr [3:0];
	initial begin 
	fork 
		a = 1;
		$monitor($time," from monitor %d %d",a,b);
		a = #1 1;
		b = #5 2;
		a = #3 3;
		$display($time," from display %d",a);

	join
	end
endmodule