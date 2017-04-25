module seven_seg_decoder(in,A,B,C,D,E,F,G,enable);
	input [3:0] in;
	input enable;
	output A,B,C,D,E,F,G;
	reg [6:0] DISPLAY;
	always @(in[3] or in[2] or in[1] or in[0])
	begin 
		if(enable == 1'b1)
		begin
			case ({in[3],in[2],in[1],in[0]}) 
				4'b0000: DISPLAY = 7'b0000001;
				4'b0001: DISPLAY = 7'b1001111;
				4'b0010: DISPLAY = 7'b0010010;
				4'b0011: DISPLAY = 7'b0000110;
				4'b0100: DISPLAY = 7'b1001100;
				4'b0101: DISPLAY = 7'b0100100;
				4'b0110: DISPLAY = 7'b0100000;
				4'b0111: DISPLAY = 7'b0001111;
				4'b1000: DISPLAY = 7'b0000000;
				4'b1001: DISPLAY = 7'b0000100;
				4'b1010: DISPLAY = 7'b0001000;
				4'b1011: DISPLAY = 7'b1100000;
				4'b1100: DISPLAY = 7'b0110001;
				4'b1101: DISPLAY = 7'b1000010;
				4'b1110: DISPLAY = 7'b0110000;
				4'b1111: DISPLAY = 7'b0111000;
			endcase
		end
		else
		begin 
			DISPLAY = 7'b1111111;
		end
	end 
	assign {A,B,C,D,E,F,G} = DISPLAY;

endmodule
		