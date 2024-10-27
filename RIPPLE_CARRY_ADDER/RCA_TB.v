
module stim_RCCCAAA();
	reg [0:3] A, B;
	reg Cin;
	wire [0:3] S;
	wire Cout;
	 rippleAdder r(S, Cout, A, B, Cin);
	initial begin
		$display("   A       B    Cin    S    Cout");
		$monitor("%b %b   %b   %b  %b", A, B, Cin, S, Cout);
		 A = 0000; B = 1001; Cin = 0;
		#10 A = 1001; B = 1001; Cin = 0;
	end
endmodule
