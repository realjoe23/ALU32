module AluB(
    input [31:0] A,B,
    input [2:0] Sel,
    input CLK,
    output reg [31:0] R,
    output reg Zflag
);

always @(posedge CLK)
    if (CLK) begin
        case (Sel)
            3'b000: R <= A + B;
            3'b001: R <= A & B;
            3'b010: R <= A | B;
            3'b011: R <= A * B;
            3'b100: R <= A - B;
            3'b101: R <= (A < B) ? 32'd1 : 32'd0;
            default: R <= 32'd0;
        endcase
    Zflag <= (R == 0) ? 1 : 0;
end
endmodule



