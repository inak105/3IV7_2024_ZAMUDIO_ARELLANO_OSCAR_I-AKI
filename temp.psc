Algoritmo temp
	definir s, f Como Entero;
	Definir fa Como Real;
	Mientras s<>5 Hacer
		Escribir  "1 - Unidad GRADOS FAHRENHEIT";
		Escribir  "2 - Unidad GRADOS CELSIUS";
		Escribir  "3 - Unidad KELVINE ";
		Escribir  "4 - Unidad RANKINE";
		Escribir  "5 - Salir";
		leer s;
		Si s>5 Entonces
			Escribir "Ingrese un valor valido";
		SiNo
			Si s<=0 Entonces
				Escribir "Ingrese un valor valido";
			SiNo
				Segun s Hacer
					Caso 1:
						
						Mientras f<>4 Hacer
							Escribir  "1 - Convertir a GRADOS CELSIUS";
							Escribir  "2 - Convertir a KELVINE ";
							Escribir  "3 - Convertir a RANKINE";
							Escribir  "4 - Salir";
							leer f;
							Segun f Hacer
								caso 1:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=-17.2222*fa;
									Escribir "la conversion es: ", fa, " grados celsius";
								Caso 2:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=255.9278*fa;
									Escribir "la conversion es: ", fa, " grados kelvine";
								caso 3:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=460.67*fa;
									Escribir "la conversion es: ", fa, " rankie";
								De Otro Modo:
									Escribir "saliendo del algoritmo";
							Fin Segun
						Fin Mientras
					Caso 2:
						Mientras f<>4 Hacer
							Escribir  "1 - Convertir a GRADOS FAHRENHEIT";
							Escribir  "2 - Convertir a KELVINE ";
							Escribir  "3 - Convertir a RANKINE";
							Escribir  "4 - Salir";
							leer f;
							Segun f Hacer
								caso 1:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=33.8*fa;
									Escribir "la conversion es: ", fa, " grados FAHRENHEIT";
								Caso 2:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=274.15*fa;
									Escribir "la conversion es: ", fa, " grados kelvine";
								caso 3:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=493.47*fa;
									Escribir "la conversion es: ", fa, " rankie";
								De Otro Modo:
									Escribir "saliendo del algoritmo";
							Fin Segun
						Fin Mientras
					Caso 3:
						Mientras f<>4 Hacer
							Escribir  "1 - Convertir a GRADOS FAHRENHEIT";
							Escribir  "2 - Convertir a GRADOS CELSIUS ";
							Escribir  "3 - Convertir a RANKINE";
							Escribir  "4 - Salir";
							leer f;
							Segun f Hacer
								caso 1:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=-457.87*fa;
									Escribir "la conversion es: ", fa, " grados FAHRENHEIT";
								Caso 2:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=-272.15*fa;
									Escribir "la conversion es: ", fa, " grados celsius";
								caso 3:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=1.8*fa;
									Escribir "la conversion es: ", fa, " rankie";
								De Otro Modo:
									Escribir "saliendo del algoritmo";
							Fin Segun
						Fin Mientras
					Caso 4: 
						Mientras f<>4 Hacer
							Escribir  "1 - Convertir a GRADOS FAHRENHEIT";
							Escribir  "2 - Convertir a GRADOS CELSIUS ";
							Escribir  "3 - Convertir a KELVINE";
							Escribir  "4 - Salir";
							leer f;
							Segun f Hacer
								caso 1:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=-458.67*fa;
									Escribir "la conversion es: ", fa, " grados FAHRENHEIT";
								Caso 2:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=-272.594*fa;
									Escribir "la conversion es: ", fa, " grados celsius";
								caso 3:
									Escribir"Ingrese la cantidad a convertir";
									leer fa;
									fa=0.555556*fa;
									Escribir "la conversion es: ", fa, " KELVINE";
								De Otro Modo:
									Escribir "saliendo del algoritmo";
							Fin Segun
						Fin Mientras
				Fin Segun
			Fin Si
		Fin Si
	Fin Mientras
FinAlgoritmo
