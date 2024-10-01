Algoritmo Cobro_del_estacionamiento

    Definir horaEntrada, minutoEntrada, segundoEntrada, horaSalida, minutoSalida, segundoSalida Como Entero;
    Definir totalHoras, totalMinutos, totalSegundos, tiempoTotalSegundos, tiempoTotalMinutos, cobroTotal, horasCompletas, minutosAdicionales Como Real;
    Escribir "Ingrese la hora de entrada (en formato 24 horas):";
    Leer horaEntrada;
    Escribir "Ingrese los minutos de entrada:";
    Leer minutoEntrada;
    Escribir "Ingrese los segundos de entrada:";
    Leer segundoEntrada;
	
    Escribir "Ingrese la hora de salida (en formato 24 horas):";
    Leer horaSalida;
    Escribir "Ingrese los minutos de salida:";
    Leer minutoSalida;
    Escribir "Ingrese los segundos de salida:";
    Leer segundoSalida;
	
    totalHoras = (horaSalida - horaEntrada) * 3600;
    totalMinutos = (minutoSalida - minutoEntrada) * 60;
    totalSegundos = segundoSalida - segundoEntrada;
    tiempoTotalSegundos = totalHoras + totalMinutos + totalSegundos;
	
    Si tiempoTotalSegundos < 0 Entonces
        tiempoTotalSegundos = (24 * 3600) + tiempoTotalSegundos;
    FinSi
	
    tiempoTotalMinutos = tiempoTotalSegundos / 60;
	
    Si tiempoTotalMinutos < 15 Entonces
        cobroTotal = 0;
        Escribir "El tiempo total estacionado fue de ", Trunc(tiempoTotalMinutos), " minutos.";
        Escribir "El cobro total es de: $", cobroTotal;
    Sino
        horasCompletas = Trunc(tiempoTotalMinutos / 60);
        minutosAdicionales = tiempoTotalMinutos % 60;
		
        cobroTotal = horasCompletas * 15;
		
        Si minutosAdicionales > 0 Entonces
            Si minutosAdicionales <= 15 Entonces
                cobroTotal = cobroTotal + 6;
                Si minutosAdicionales <= 30 Entonces
                    cobroTotal = cobroTotal + 12;
                SiNo
                    Si minutosAdicionales <= 45 Entonces
                        cobroTotal = cobroTotal + 18;
                    SiNo
                        cobroTotal = cobroTotal + 24;
                    FinSi
                FinSi
            FinSi
        FinSi

        Escribir "El tiempo total estacionado fue de ", Trunc(tiempoTotalMinutos), " minutos.";
        Escribir "El cobro total es de: $", cobroTotal;
    FinSi
	
	
FinAlgoritmo
