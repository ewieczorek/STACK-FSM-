module Lab6Step0(X,Y,Cin,Cout,S);
input Cin, X, Y;
output Cout, S;

assign S = (~X&~Y&Cin)|(~X&Y&~Cin)|(X&~Y&~Cin)|(X&Y&Cin);

assign Cout = (Y&Cin)|(X&Y)|(X&Cin);

endmodule