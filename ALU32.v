//Jose Luis Chavez Gomez
//26/02/2025

module ALU (
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [2:0] ALU_Sel,
    output reg [31:0] R,
    output reg Zero_Flag
);

    always @(*) begin
        case (ALU_Sel)
            3'b000: R = A + B;        // Suma
            3'b001: R = A - B;        // Resta
            3'b010: R = A & B;        // AND
            3'b011: R = A | B;        // OR
            3'b100: R = (A < B) ? 32'd1 : 32'd0; // Comparación A < B
            default: R = 32'd0;       // Por defecto, resultado en 0
        endcase
        
        Zero_Flag = (R == 32'd0) ? 1'b1 : 1'b0;
    end
    
endmodule