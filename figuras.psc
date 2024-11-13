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
    Escribir "1. Hexágono (6 lados)"
    Escribir "2. Octágono (8 lados)"
    Escribir "3. Cuadrado (4 lados)"
    Escribir "4. Decágono (10 lados)"
    Escribir "5. Pentágono (5 lados)"
    Escribir "6. Triángulo Equilátero (3 lados)"
    Leer figura
	
    Escribir "Ingrese la longitud del lado:"
    Leer longitud
	
    // Calcular según la figura seleccionada
    Segun figura
        Caso 1: // Hexágono
            perimetro <- CalcularPerimetro(6, longitud)
            area <- CalcularAreaHexagono(longitud)
            Escribir "Perímetro del hexágono: ", perimetro
            Escribir "Área del hexágono: ", area
			
        Caso 2: // Octágono
            perimetro <- CalcularPerimetro(8, longitud)
            area <- CalcularAreaOctagono(longitud)
            Escribir "Perímetro del octágono: ", perimetro
            Escribir "Área del octágono: ", area
			
        Caso 3: // Cuadrado
            perimetro <- CalcularPerimetro(4, longitud)
            area <- CalcularAreaCuadrado(longitud)
            Escribir "Perímetro del cuadrado: ", perimetro
            Escribir "Área del cuadrado: ", area
			
        Caso 4: // Decágono
            perimetro <- CalcularPerimetro(10, longitud)
            area <- CalcularAreaDecagono(longitud)
            Escribir "Perímetro del decágono: ", perimetro
            Escribir "Área del decágono: ", area
			
        Caso 5: // Pentágono
            perimetro <- CalcularPerimetro(5, longitud)
            area <- CalcularAreaPentagono(longitud)
            Escribir "Perímetro del pentágono: ", perimetro
            Escribir "Área del pentágono: ", area
			
        Caso 6: // Triángulo Equilátero
            perimetro <- CalcularPerimetro(3, longitud)
            area <- CalcularAreaTrianguloEquilatero(longitud)
            Escribir "Perímetro del triángulo equilátero: ", perimetro
            Escribir "Área del triángulo equilátero: ", area
			
        De Otro Modo:
            Escribir "Opción inválida"
    FinSegun
FinAlgoritmo
