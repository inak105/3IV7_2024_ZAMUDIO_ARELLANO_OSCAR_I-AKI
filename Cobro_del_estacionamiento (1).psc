Algoritmo Cobro_del_estacionamiento
	Definir horaentrada, mintoentrada, horasalida, minutosalida Como real
	Definir totalHoras, totalMinutos, minutostotales Como real
	definir total Como real
//entradadedaos
	Escribir "Ingrese la hora de entrada (formato 24 h)"
	leer horaentrada
	Escribir "Ingrese el minuto de entrada (formato de 0 a 59)"
	leer mintoentrada
	Escribir "Ingrese la hora de salida (formato 24 h)"
	leer horasalida
	Escribir "Ingrese el minuto de entrada (formato de 0 a 59)"
	leer minutosalida
	//proces
	//calculae el tiempo total en minutos
	totalHoras=horasalida-horaentrada
	totalMinutos=minutosalida-mintoentrada
	//si los minutos de salida son menores a los de entrada hay que ajustar la hora y minutos de salida
	Si totalMinutos < 0 Entonces
		totalMinutos=totalMinutos+60
		//totalMinutos+=60
		totalHoras=totalHoras - 1
	Fin Si
	//Convertir a miinutos
	totalMinutos=(totalHoras*60)+totalMinutos
	//calcular el cobro
	total = 0
	//calcular el cobro por la hora completa
	Si totalMinutos >= 60 Entonces
		total=total + (totalMinutos/60)*15
	Fin Si	
	//calcular el cobro de cada fraccion
	minutosrestantes = totalMinutos%60
	Si minutosrestantes > 0 Entonces
		fracc15 = minutosrestantes
		//vobrar cada fraccion
		total=total+fracc15*6
	Fin Si
	//mostrar resultado
	Escribir "El total a pagar es de ", total, "$"
	
FinAlgoritmo
