Algoritmo Chicharronera
	Escribir "Ingrese el coeficiente de a"
	Leer  xi
	Escribir "Ingrese el coeficiente de b"
	Leer  x
	Escribir "Ingrese el termino independiente"
	Leer c
	xe<--1*x
	p=x*x
	a<-(p-4*(xi*c))
	Si a<0 Entonces
		Escribir "Número imaginario"
	SiNo
		a<-RC(a)
		respi=(xe+a)/2*xi
		respo=(xe-a)/2*xi
		Escribir "Las dos soluciones son:"
		Escribir "X1: ",respi
		Escribir "X2: ",respo
	Fin Si

	
	
	
FinAlgoritmo
