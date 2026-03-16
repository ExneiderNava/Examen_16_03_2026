

Algoritmo cajero_automatico
	
	definir saldo Como Real
	definir eleccion Como Entero
	
	eleccion = 0
	saldo = 1000
	
	
	
	Repetir
		Escribir "BIENVENIDO AL BANCO"
		Escribir "ELIJE LA OPCION DE TU PREFERENCIA"
		Escribir "1. Consultar Saldo"
		Escribir "2. Depositar Dinero"
		Escribir "3. Retirar Dinero"
		Escribir "4. Salir"
		leer eleccion
		
		
		Segun eleccion Hacer
			1:
				ConsultarSaldo(saldo)
			2:
				
				Escribir "Ingrese la cantidad que va a depositar"
				Leer can_dep
				
				si can_dep >= 0 Entonces
					
				
				Escribir "Usted deposito ", can_dep
				saldo = Depositar(can_dep, saldo)
				Escribir "Su saldo ahora es"
				Escribir saldo
				
				SiNo
				
				Escribir "Ingrese un monto mayor que 0"
				
				
				finsi
				
				
			3:
				Escribir "Ingrese la cantidad que va a retirar"
				Leer cant_retirar
				
				si cant_retirar > saldo Entonces
					Escribir "No puedes retirar mas del dinero disponible"
					
					
				SiNo
					
					Escribir "Usted retiro ", cant_retirar
					saldo = Retirar(cant_retirar, saldo)
					
					Escribir "su saldo ahora es"
					Escribir saldo
					
				FinSi
				
				
				
			De Otro Modo:
				
				Escribir "Opcion invalida"
				Escribir "pulse 4 para salir"
				
		Fin Segun
		
	Hasta Que eleccion = 4 o eleccion = 0
	
	
FinAlgoritmo

Funcion ConsultarSaldo ( saldo )
	
	Escribir "Saldo disponible = ", saldo
	
Fin Funcion



Funcion saldo <- Depositar ( cantidad_a_depositar, saldo )
	
	saldo = cantidad_a_depositar + saldo
	
	
Fin Funcion



Funcion saldo <- Retirar ( cant_retirar , saldo)
	
	saldo = saldo - cant_retirar 
	
	
	
	
Fin Funcion




