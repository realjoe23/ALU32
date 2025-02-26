//Test Bench de ALU de 32 bits con bloqueo
`timescale 1ns/1ns

//Declaración de los cables
//Definicion del modulo
module ALU_CB_TB();

reg [31:0] A_TB;
reg [31:0] B_TB;
reg [2:0]  selector_TB;

//Salidas instancia
wire [31:0] R_TB_INST;
wire Zf_TB;

//Instancias.
Multiplexor MUL_32(.A(A_TB), .B(B_TB), .selector(selector_TB), .R(R_TB_INST), .Zf(Zf_TB));

//Banco de pruebas.
initial begin
	//Suma.
	selector_TB=3'b000;
	A_TB=32'd100;
	B_TB=32'd100;
	#100;
	//And
	selector_TB=3'b001;
	A_TB=32'd152;
	B_TB=32'd150;
	#100;
	//OR
	selector_TB=3'b010;
	A_TB=32'd120;
	B_TB=32'd452;
	#100;
	//Multiplicacion
	selector_TB=3'b011;
	A_TB=32'd80;
	B_TB=32'd120;
	#100;
	//Resta
	selector_TB=3'b100;
	A_TB=32'd123;
	B_TB=32'd69;
	#100;
	//Ternario
	selector_TB=3'b101;
	A_TB=32'd450;
	B_TB=32'd120;
	#100;
	end
endmodule
