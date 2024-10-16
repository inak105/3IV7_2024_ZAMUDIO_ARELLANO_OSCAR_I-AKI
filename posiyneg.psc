Algoritmo posiyneg
	Definir num, positivos, negativos, cantidad, i Como Entero;
    positivos <- 0;
    negativos <- 0;
    
    Escribir "¿Cuántos números deseas ingresar?:";
    Leer cantidad;
    
    Para i <- 1 Hasta cantidad Con Paso 1 Hacer
        Escribir "Introduce el número ", i, ":";
        Leer num;
        
        Si num > 0 Entonces
            positivos <- positivos + 1;
        SiNo
            Si num < 0 Entonces
                negativos <- negativos + 1;
            FinSi
        FinSi
    FinPara
    
    Escribir "Cantidad de números positivos: ", positivos;
    Escribir "Cantidad de números negativos: ", negativos;
FinAlgoritmo
