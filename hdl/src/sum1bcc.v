module sum1bcc (A, B, Ci,Cout,S);// Se define el modulo para el sumador.

	
	//Se definen las respectivas entradas y salidas
  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;

  //Se describen las asignaciones
  reg [1:0] st;//Se asigna un array de registros binarios, es decir, dos posiciones
  assign S = st[0];//Se asigna la primera posición a la variable de salida S
  assign Cout = st[1]; //Se asigna la segunda posición a la variable de salida del carry Cout

  //Se describen los procesos
  always @ ( * ) begin //Se inicia el bloque always con todos los parametros del modulo
  	st  = 	A+B+Ci; //Se genera la asignación de la suma de las entradas al array de registros
  end
  
endmodule

