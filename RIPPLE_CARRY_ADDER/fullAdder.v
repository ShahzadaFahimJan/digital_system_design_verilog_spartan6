
module fulladder(S, Cout, A, B, Cin);
	output S, Cout;
	input A, B, Cin;
	wire c1, c2, s1;
	halfadder HA1(s1, c1, A, B);
	halfadder HA2(S, c2, s1, Cin);
	or o1(Cout, c1, c2);
endmodule
