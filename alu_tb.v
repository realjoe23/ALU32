
//Yahir Efren Borboa Quintero 26/02/2025
//ALU32_TB sin bloqueo

module tb_ALU;   

reg [31:0] A, B;  
reg [2:0] ALU_Sel;  
wire [31:0] R;    
wire Zero_Flag;  

ALU uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .R(R),
    .Zero_Flag(Zero_Flag)
);

initial begin
    
    A = 32'd10; B = 32'd5; ALU_Sel = 3'b000;
    #10; 

    A = 32'd20; B = 32'd15; ALU_Sel = 3'b001;
    #10;

    A = 32'd12; B = 32'd7; ALU_Sel = 3'b010;
    #10;

    A = 32'd6; B = 32'd3; ALU_Sel = 3'b011;
    #10;

    A = 32'd4; B = 32'd6; ALU_Sel = 3'b100;
    #10;
	
    A = 32'd7; B = 32'd3; ALU_Sel = 3'b111;
    #10;
	
end

endmodule
