/* ********************************************************************************************* */
/* * Simple (very very) simple button debouncer                                                * */
/* * Authors: André Bannwart Perina                                                            * */
/* * BASED ON http://web.mit.edu/6.111/www/f2005/code/jtag2mem_6111/debounce.v.html but with   * */
/* * nice comments.                                                                            * */
/* ********************************************************************************************* */
/* * Copyright (c) 2017 André B. Perina                                                        * */
/* *               2005 Costas Calamvokis                                                      * */
/* *                                                                                           * */
/* * Permission is hereby granted, free of charge, to any person obtaining a copy of this      * */
/* * software and associated documentation files (the "Software"), to deal in the Software     * */
/* * without restriction, including without limitation the rights to use, copy, modify,        * */
/* * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to        * */
/* * permit persons to whom the Software is furnished to do so, subject to the following       * */
/* * conditions:                                                                               * */
/* *                                                                                           * */
/* * The above copyright notice and this permission notice shall be included in all copies     * */
/* * or substantial portions of the Software.                                                  * */
/* *                                                                                           * */
/* * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,       * */
/* * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR  * */
/* * PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE * */
/* * FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR      * */
/* * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER    * */
/* * DEALINGS IN THE SOFTWARE.                                                                 * */
/* ********************************************************************************************* */

module debouncer(
		clk_fpga,
		rst_debouncer,
		input_key,
		out_key
	);

	/* Input clock (50 MHz is a good choice) */
	input clk_fpga;
	/* Reset input (active low, may be bounced, or we will face infinite debouncing recursion */
	input rst_debouncer;
	/* Noisy input (may be active high or low) */
	input input_key;
	/* Clean output (may be active high or low) */
	output reg out_key;

	/* Number of bits for the counter */
	parameter DELAY_BITS = 16;

	/* Counter register with DELAY_BITS bits */
	reg [DELAY_BITS-1:0] counter;
	/* Intermediate register: it holds the input value every time it changes */
	reg intermediate;

	/* At every rising edge of clock */
	always @(posedge clk_fpga or negedge rst_debouncer) begin
		/* Reset logic */
		if(!rst_debouncer) begin
			intermediate <= input_key;
			out_key <= input_key;
			counter <= 0;
		end
		/* A state change was detected on input. The counter resets to 0 and this change is saved on the intermediate register */
		else if(input_key != intermediate) begin
			intermediate <= input_key;
			counter <= 0;
		end
		/* The input state has not changed for a long time. It's time to update the output with the intermediate value! */
		else if({DELAY_BITS{1'b1}} == counter) begin
			out_key <= intermediate;
		end
		/* No change on input and the counter hasn't reached its maximum: roll the counter */
		else begin
			counter <= counter + 1;
		end
	end

endmodule
