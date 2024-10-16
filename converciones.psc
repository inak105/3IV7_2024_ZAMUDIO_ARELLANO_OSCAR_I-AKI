Algoritmo converciones

	Definir convercion, cant, s Como Entero;
		Escribir  "1 - Convertir a pulgadas";
		Escribir  "2 - Convertir a yardas";
		Escribir  "3 - Convertir a centimetros";
		Escribir  "4 - Convertir a metros";
		Escribir  "5 - Salir";
		
		Leer s;
		Si s>5 Entonces
			Escribir "Ingrese un valor valido"
		SiNo
			Si s<=0 Entonces
				Escribir "Ingrese un valor valido"
			SiNo
				Segun s Hacer
					Caso 1:
						Escribir "Ingresa la cantidad a convertir en pies";
						Leer cant;
						convercion=cant*12
						Escribir cant, " es equivalente a ", convercion, " pulgadas"
						
					Caso 2:
						Escribir "Ingresa la cantidad a convertir en pies";
						Leer cant;
						convercion=cant*0.333333
						Escribir cant, " es equivalente a ", convercion, " yardas"
						
					Caso 3:
						Escribir "Ingresa la cantidad a convertir en pies";
						Leer cant;
						convercion=cant*30.48
						Escribir cant, " es equivalente a ", convercion, " centimetros"
					Caso 4: 
						Escribir "Ingresa la cantidad a convertir en pies";
						Leer cant;
						convercion=cant*0.3048
						Escribir cant, " es equivalente a ", convercion, "metros"
				Fin Segun
			Fin Si
		Fin Si
	
	
	
	
FinAlgoritmo

