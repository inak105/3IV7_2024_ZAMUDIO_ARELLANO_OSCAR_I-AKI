Algoritmo Censo_Zamudio_Oscar_3iv7
	// Definir variables
    Definir NumeroPersonas, A�oAConsultar, A�oNacimiento, A�oFallecimiento, PersonaViva, Edad, EdadJoven, EdadVieja, i Como Entero;
	
    // Limpiar variables
    NumeroPersonas <- 0;
    PersonaViva <- 0;
    EdadJoven <- 9999;
    EdadVieja <- 0;
	
    // Pedir el n�mero de personas
    Escribir "Ingresa el n�mero de personas de la lista";
    Leer NumeroPersonas;
	
    // Inicializaci�n de variables
    EdadJoven <- 9999;
    EdadVieja <- 0;
	
    // Obtener el a�o de consulta
    Escribir "�Qu� a�o deseas consultar?";
    Leer A�oAConsultar;
	
    // Iterar sobre cada persona
    Para i <- 1 Hasta NumeroPersonas Con Paso 1 Hacer
        Escribir "Ingresa el a�o de nacimiento de la persona n�mero ", i;
        Leer A�oNacimiento;
		
        Escribir "Ingresa el a�o de fallecimiento de la persona n�mero (si no ha fallecido, ingresa 0): ", i;
        Leer A�oFallecimiento;
		
        Si A�oFallecimiento = 0 Entonces
            // Si la persona sigue viva
            Si A�oNacimiento <= A�oAConsultar Entonces
                PersonaViva <- PersonaViva + 1;
            FinSi
        Sino
            // Si la persona ha fallecido
            Si A�oNacimiento <= A�oAConsultar Y A�oFallecimiento >= A�oAConsultar Entonces
                PersonaViva <- PersonaViva + 1;
            FinSi
        FinSi
		
        // Calcular la edad de la persona en el a�o consultado
        Si A�oFallecimiento = 0 O A�oFallecimiento >= A�oAConsultar Entonces
            Edad <- A�oAConsultar - A�oNacimiento;
            // Verificar si es la persona m�s joven
            Si Edad < EdadJoven Entonces
                EdadJoven <- Edad;
            FinSi
            // Verificar si es la persona m�s longeva
            Si Edad > EdadVieja Entonces
                EdadVieja <- Edad;
            FinSi
        FinSi
    FinPara
	
    // Mostrar resultados
    Si PersonaViva > 0 Entonces
        Escribir "En el a�o ", A�oAConsultar, " hab�a ", PersonaViva, " personas con vida.";
        Escribir "La persona m�s joven ten�a ", EdadJoven, " a�os.";
        Escribir "La persona m�s longeva ten�a ", EdadVieja, " a�os.";
    Sino
        Escribir "No hab�a personas vivas en el a�o ", A�oAConsultar;
    FinSi
FinAlgoritmo
