Algoritmo Tiendita
	
	Definir prod Como Caracter;
	Definir codigoprod, can Como Entero;
	Definir precio Como Real;
	//tengo que crear un menú de selección
	Mientras opción s <> 5  Hacer
		Escribir  "1 - Ingresa un nuevo producto";
		Escribir  "2 - Actualiza un producto";
		Escribir  "3 - Consulta el inventario";
		Escribir  "4 - Generar reporte";
		Escribir  "5 - Salir";
	
	Leer s;
	
	Segun s Hacer
		Caso 1:
			Escribir "Ingresa el nombre del producto";
			Leer prod;
			Escribir "Ingresa el código del producto";
			Leer codigoprod;
			Escribir "Ingresa la cantidad";
			Leer can;
			Escribir "Ingresa el Precio del producto";
			Leer precio;
		Caso 2:
			Escribir "Ingresa el código del producto a actualizar";
			Leer codigoprod;
			Escribir "Ingresa la nueva cantidad";
			Leer can;
		Caso 3:
			Escribir "Consultar inventario";
			Escribir "Nombre del producto ", prod;
			Escribir "Código del producto", codigoprod;
			Escribir "Precio del producto", precio;
			Escribir "Cantidad del producto", can;
		Caso 4: 
			Escribir "Nombre del producto ", prod;
			Escribir "Código del producto", codigoprod;
			Escribir "Precio del producto", precio;
			Escribir "Cantidad del producto", can;
	Fin Segun
Fin Mientras
	
	
	
	
FinAlgoritmo
