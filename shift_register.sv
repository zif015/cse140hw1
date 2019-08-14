// Right shift register with arithmetic or logical shift modes
// CSE140L   Lab 1
module right_shift_register #(parameter width = 16)(
  input             clk,
  input             enable,		 // 0: do not shift; 1: enable shift
  input [width-1:0] in,          // data input to be shifted
  input             mode,        // arithmetic (0) or logical (1) shift
  output logic [width-1:0] out); // output = shifted or original input

	
	always @(posedge clk) 	begin
// fill in the guts	-- holds or shifts by 1 bit position
//    enable   mode      out  
//      0       0        hold
//		0       1	     hold
//		1       1	     logical right shift
//		1		0	     arithmetic right shift
	if(enable)
		begin
			if (mode)
				out <= in >> 1;
			else
				out <= in >>> 1;
		end
	else
		out <= out;
   end

endmodule
