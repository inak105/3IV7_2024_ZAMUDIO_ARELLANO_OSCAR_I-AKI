Algoritmo binarios
	Definir num, cociente Como Entero;
	definir binario como texto;
	
	//el binario lo tengo que concatenar
	binario = "";
	Escribir "Ingresa el n�mero que desee convertir";
	Leer num;
	
	Si num>=  0  Entonces
		Mientras num > 0 Hacer
			residuo = num%2;
			//Empezar a armar el binario
			nuevobnario <- ConvertirATexto(residuo );
			//concatenar los elementos de texto
			binario = nuevobnario + binario;
			
			num= Trunc(num/2);
		Fin Mientras
		
		//si el n�mero es 0
		Si binario = "" Entonces
			binario="0";
		Fin Si
		Escribir "El n�mero binario es: ", binario;
	FinSi
	
	
	
FinAlgoritmo
