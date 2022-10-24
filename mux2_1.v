//2:1 mux using bufif0 adn bufif1
// delay 
//			|min		|typ		|max
// rise		|	1		|	2		|  3
// fall 	|	3		|	4		|  5
// turnoff	|	5		|	6		|  7


module mux2_1(input i0,i1,s output out);
	bufif1 #(1:2:3 , 3:4:5, 5:6:7) b1(out, i1, s);	
	bufif0 #(1:2:3 , 3:4:5, 5:6:7) b1(out, i0, s);
endmodule 