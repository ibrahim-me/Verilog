module rippleadd_tb;
	reg [3:0]a,b;
	reg cin;
	wire cout; wire [3:0]sum;
	rippleadd uut(cin,a,b,cout,sum);
	initial begin
		a=4'h0; b=4'h0; cin=4'h0;
		$dumpfile("rippleadd_tb.vcd"); 
		$dumpvars(0, rippleadd_tb);
		$monitor($time, " a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout );

		#5 a=4'b0; b=4'b0; cin=4'b0;
		#5 a=4'ha; b=4'ha; cin=4'b0;
		#5 a=4'hf; b=4'hf; cin=4'b0;
		#5 a=4'hf; b=4'h2; cin=4'b0;
	end


endmodule 