Algoritmo posiyneg
	Definir num, positivos, negativos, cantidad, i Como Entero;
    positivos <- 0;
    negativos <- 0;
    
    Escribir "�Cu�ntos n�meros deseas ingresar?:";
    Leer cantidad;
    
    Para i <- 1 Hasta cantidad Con Paso 1 Hacer
        Escribir "Introduce el n�mero ", i, ":";
        Leer num;
        
        Si num > 0 Entonces
            positivos <- positivos + 1;
        SiNo
            Si num < 0 Entonces
                negativos <- negativos + 1;
            FinSi
        FinSi
    FinPara
    
    Escribir "Cantidad de n�meros positivos: ", positivos;
    Escribir "Cantidad de n�meros negativos: ", negativos;
FinAlgoritmo
