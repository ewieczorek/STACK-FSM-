module stack2(pushdata, popdata, popmathdata, prevdata, nextdata, self, push, pop, popmath, popswap, prevnext, count1, count0, out);
	input [3:0] pushdata;
	input [3:0] popdata;
	input [3:0] popmathdata;
	input [3:0] prevdata;
	input [3:0] nextdata;
	input [3:0] self;
	input push, pop, popmath, popswap, prevnext;
	output reg [3:0] out;
	
	always @(push or Pop or popmath or swap)
	begin 
		case ({A,B,C,D,prevnext}) 
			5'b00000: out = self;
			5'b00001: out = self;
			5'b00010: out = prevdata;
			5'b00011: out = nextdata;
			5'b00100: out = popmathdata;
			5'b00101: out = popmathdata;
			5'b00110: out = self;
			5'b00111: out = self;
			5'b01000: out = {0,0,0,0};
			5'b01001: out = {0,0,0,0};
			5'b01010: out = self;
			5'b01011: out = self;
			5'b01100: out = self;
			5'b01101: out = self;
			5'b01110: out = self;
			5'b01111: out = self;
			5'b10000: out = pushdata;
			5'b10001: out = pushdata;
			5'b10010: out = self;
			5'b10011: out = self;
			5'b10100: out = self;
			5'b10101: out = self;
			5'b10110: out = self;
			5'b10111: out = self;
			5'b11000: out = self;
			5'b11001: out = self;
			5'b11010: out = self;
			5'b11011: out = self;
			5'b11100: out = self;
			5'b11101: out = self;
			5'b11110: out = self;
			5'b11111: out = self;
		endcase
	end 
	
endmodule
