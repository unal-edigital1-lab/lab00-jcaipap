module sum4bcc(Ai,Bi,Co_in,Si_in);//Sentencia del módulo sumador de 4 bits

	parameter nb=4;
	//Instanciamiento de entradas y sálidas
	input [nb-1 :0] Ai;
  input [nb-1 :0] Bi;
  output Co;
  output [nb-1 :0] Si_in;
  
	wire Co_in;
	wire [nb-1 :0] Si;
	
	assign Si_in=~Si;
	assign Co_in=~Co;
  
  wire c1,c2,c3; //Conexiones de carry
  
  //Instanciamiento de los módulos internos
  sum1bcc s0 (.A(Ai[0]), .B(Bi[0]), .Ci(0),  .Cout(c1) ,.S(Si[0]));
  sum1bcc s1 (.A(Ai[1]), .B(Bi[1]), .Ci(c1), .Cout(c2) ,.S(Si[1]));
  sum1bcc s2 (.A(Ai[2]), .B(Bi[2]), .Ci(c2), .Cout(c3) ,.S(Si[2]));
  sum1bcc s3 (.A(Ai[3]), .B(Bi[3]), .Ci(c3), .Cout(Co) ,.S(Si[3]));


endmodule