
module rippleAdder(S, Cout, A, B, Cin);
	output [3:0] S;
	output Cout;
	input Cin;
	input [3:0] A, B;
	wire C1, C2, C3;
	fulladder FA0(S[0], C1, A[0], B[0], Cin);
	fulladder FA1(S[1], C2, A[1], B[1], C1);
	fulladder FA2(S[2], C3, A[2], B[2], C2);
	fulladder FA3(S[3], Cout, A[3], B[3], C3);
endmodule
