Algoritmo Censo_Zamudio_Oscar_3iv7
	// Definir variables
    Definir NumeroPersonas, AñoAConsultar, AñoNacimiento, AñoFallecimiento, PersonaViva, Edad, EdadJoven, EdadVieja, i Como Entero;
	
    // Limpiar variables
    NumeroPersonas <- 0;
    PersonaViva <- 0;
    EdadJoven <- 9999;
    EdadVieja <- 0;
	
    // Pedir el número de personas
    Escribir "Ingresa el número de personas de la lista";
    Leer NumeroPersonas;
	
    // Inicialización de variables
    EdadJoven <- 9999;
    EdadVieja <- 0;
	
    // Obtener el año de consulta
    Escribir "¿Qué año deseas consultar?";
    Leer AñoAConsultar;
	
    // Iterar sobre cada persona
    Para i <- 1 Hasta NumeroPersonas Con Paso 1 Hacer
        Escribir "Ingresa el año de nacimiento de la persona número ", i;
        Leer AñoNacimiento;
		
        Escribir "Ingresa el año de fallecimiento de la persona número (si no ha fallecido, ingresa 0): ", i;
        Leer AñoFallecimiento;
		
        Si AñoFallecimiento = 0 Entonces
            // Si la persona sigue viva
            Si AñoNacimiento <= AñoAConsultar Entonces
                PersonaViva <- PersonaViva + 1;
            FinSi
        Sino
            // Si la persona ha fallecido
            Si AñoNacimiento <= AñoAConsultar Y AñoFallecimiento >= AñoAConsultar Entonces
                PersonaViva <- PersonaViva + 1;
            FinSi
        FinSi
		
        // Calcular la edad de la persona en el año consultado
        Si AñoFallecimiento = 0 O AñoFallecimiento >= AñoAConsultar Entonces
            Edad <- AñoAConsultar - AñoNacimiento;
            // Verificar si es la persona más joven
            Si Edad < EdadJoven Entonces
                EdadJoven <- Edad;
            FinSi
            // Verificar si es la persona más longeva
            Si Edad > EdadVieja Entonces
                EdadVieja <- Edad;
            FinSi
        FinSi
    FinPara
	
    // Mostrar resultados
    Si PersonaViva > 0 Entonces
        Escribir "En el año ", AñoAConsultar, " había ", PersonaViva, " personas con vida.";
        Escribir "La persona más joven tenía ", EdadJoven, " años.";
        Escribir "La persona más longeva tenía ", EdadVieja, " años.";
    Sino
        Escribir "No había personas vivas en el año ", AñoAConsultar;
    FinSi
FinAlgoritmo
