Subproceso CalcularPerimetro(lados, longitud)
    Devolver lados * longitud
FinSubproceso

Subproceso CalcularAreaHexagono(longitud)
    Devolver (3 * Raiz(3) / 2) * (longitud ^ 2)
FinSubproceso

Subproceso CalcularAreaOctagono(longitud)
    Devolver 2 * (1 + Raiz(2)) * (longitud ^ 2)
FinSubproceso

Subproceso CalcularAreaCuadrado(longitud)
    Devolver longitud * longitud
FinSubproceso

Subproceso CalcularAreaDecagono(longitud)
    Devolver (5 * Raiz(5 + 2 * Raiz(5))) * (longitud ^ 2) / 4
FinSubproceso

Subproceso CalcularAreaPentagono(longitud)
    Devolver (Raiz(5 * (5 + 2 * Raiz(5))) / 4) * (longitud ^ 2)
FinSubproceso

Subproceso CalcularAreaTrianguloEquilatero(longitud)
    Devolver (Raiz(3) / 4) * (longitud ^ 2)
FinSubproceso
Algoritmo sin_titulo
	Definir lados, longitud, perimetro, area Como Real
    Definir figura Como Entero
	
    Escribir "Seleccione una figura:"
    Escribir "1. Hex�gono (6 lados)"
    Escribir "2. Oct�gono (8 lados)"
    Escribir "3. Cuadrado (4 lados)"
    Escribir "4. Dec�gono (10 lados)"
    Escribir "5. Pent�gono (5 lados)"
    Escribir "6. Tri�ngulo Equil�tero (3 lados)"
    Leer figura
	
    Escribir "Ingrese la longitud del lado:"
    Leer longitud
	
    // Calcular seg�n la figura seleccionada
    Segun figura
        Caso 1: // Hex�gono
            perimetro <- CalcularPerimetro(6, longitud)
            area <- CalcularAreaHexagono(longitud)
            Escribir "Per�metro del hex�gono: ", perimetro
            Escribir "�rea del hex�gono: ", area
			
        Caso 2: // Oct�gono
            perimetro <- CalcularPerimetro(8, longitud)
            area <- CalcularAreaOctagono(longitud)
            Escribir "Per�metro del oct�gono: ", perimetro
            Escribir "�rea del oct�gono: ", area
			
        Caso 3: // Cuadrado
            perimetro <- CalcularPerimetro(4, longitud)
            area <- CalcularAreaCuadrado(longitud)
            Escribir "Per�metro del cuadrado: ", perimetro
            Escribir "�rea del cuadrado: ", area
			
        Caso 4: // Dec�gono
            perimetro <- CalcularPerimetro(10, longitud)
            area <- CalcularAreaDecagono(longitud)
            Escribir "Per�metro del dec�gono: ", perimetro
            Escribir "�rea del dec�gono: ", area
			
        Caso 5: // Pent�gono
            perimetro <- CalcularPerimetro(5, longitud)
            area <- CalcularAreaPentagono(longitud)
            Escribir "Per�metro del pent�gono: ", perimetro
            Escribir "�rea del pent�gono: ", area
			
        Caso 6: // Tri�ngulo Equil�tero
            perimetro <- CalcularPerimetro(3, longitud)
            area <- CalcularAreaTrianguloEquilatero(longitud)
            Escribir "Per�metro del tri�ngulo equil�tero: ", perimetro
            Escribir "�rea del tri�ngulo equil�tero: ", area
			
        De Otro Modo:
            Escribir "Opci�n inv�lida"
    FinSegun
FinAlgoritmo
