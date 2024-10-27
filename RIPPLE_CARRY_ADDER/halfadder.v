module halfadder(S, C, A, B);
	output S, C;
	input A, B;
	sum s1(S, A, B);
	carry c1(C, A, B);
endmodule

