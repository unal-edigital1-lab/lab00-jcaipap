module sum1bcc_primitive (A, B, Ci,Cout,S); //Se define el módulo con las 3 entradas y las 2 sálidas 

	//Se definen las entradas y salidas
  input  A;
  input  B;
  input  Ci; // Entradas
  output Cout;
  output S; //Sálidas

  //Se definen los cables que conectarán el sumador

  wire a_ab; 
  wire x_ab;
  wire cout_t;
  
  //Se definen los operadores lógicos

  and(a_ab,A,B);
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);
endmodule //Se finaliza el módulo
