// Code your design here
module Subtractor_8bit(
    input  [7:0] a, b,
    output [7:0] diff,
    output borrow
);

    wire [8:0] sub;

    // Perform subtraction using 2’s complement: a - b = a + (~b + 1)
    assign sub = {1'b0, a} + {1'b0, (~b + 1'b1)};
    assign diff = sub[7:0];
    assign borrow = ~sub[8]; // borrow detection

endmodule
