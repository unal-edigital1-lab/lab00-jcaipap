module sum4bcc_TB;

  //Entradas de simulación
  reg [3:0] xi;
  reg [3:0] yi;

  //Sálidas de simulación
  wire co;
  wire [3:0] zi;

  //Instaciamiento del módulo sumador de 4 bits
  sum4bcc uut (.Ai(xi),.Bi(yi),.Co(co),.Si(zi));

  
  //Instanciamiento del ciclo de simulación
  initial begin
    xi=0;//Valor inicial de la variable
    for (yi = 0; yi < 16; yi = yi + 1) begin /*Ciclo for, con yi inicializado en cero, hasta yi menor que 16, y
	 el avance es sumando 1 a yi cada que se ejecuta el ciclo*/
	 
      if (yi==0)//Ciclo if para el recorrido 
        xi=xi+1;
      #5 $display("el valor de %d + %d = %d", xi,yi,zi) ; /*Se hace una pausa de 5 segundos por cada ciclo, y se 
		presenta en el display los valores de forma décimal*/
		
    end
  end  
  
  //Instanciamiento del caso de prueba
	initial begin: TEST_CASE
     $dumpfile("sum4b_TB.vcd"); //Archivo dummy del caso de prueba
     $dumpvars(-1, uut); //Variables dummy del caso de prueba
     #(1200) $finish; //Finalización del caso de prueba en 2000 unidades de tiempo
   end  

endmodule