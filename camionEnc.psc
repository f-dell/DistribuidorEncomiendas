//Hacer un programa para ingresar los valores de los pesos de distintas encomiendas que se deben enviar a
//distintos clientes y que finaliza cuando se ingresa un peso negativo. Se deben agrupar las encomiendas en
//camiones que pueden transportar hasta 200 kilos en total.
//Por ejemplo: 10, 20, 140 , 70, 100 , 40, 10, 50, 80 , 90, 30, 40 , 50 , -10.
//Camión 1 Cam. 2 Cam. 3 Cam. 4 Cam. 5
//Se pide determinar e informar:
//a) El número de cada camión y peso total de encomiendas. (Camión 1: 170 kg, Camión 2: 170 kg)
//b) El número de camión que transporta mayor cantidad de encomiendas. (En el ejemplo anterior sería el
//Camión 3 con 4 encomiendas)

Algoritmo Ej
	Definir numCamion, cantEncom, totalEncomiendas Como Entero
	Definir pesoEncomienda, acuPeso, totalPeso, cargaCamion1, cargaDisponibeCam1 Como Real
	acuPeso <- 0
	cantEncom <- 0
	totalEncomiendas <- 0
	//pesoEncomienda <- 0
	totalPeso <- 0
	numCamion <- 1
	cargaCamion1 <- 0
	cargaDisponibeCam1 <- 0
	
	Mostrar "Ingrese el peso de la encomienda: "
	Leer pesoEncomienda	
	Mientras pesoEncomienda >= 0 y numCamion < 3 Hacer	
			
		Repetir
			Si pesoEncomienda == 0 o pesoEncomienda > 200 Entonces
				Escribir "No ha ingresado peso o el peso de la encomienda es mayor al maximo permitido de 200 kg, ingrese un peso dentro del rango permitido: "
				Leer pesoEncomienda								
			FinSi
			Hasta Que pesoEncomienda > 0 y pesoEncomienda <= 200
			
			Repetir
				acuPeso <- acuPeso + pesoEncomienda
				Si (pesoEncomienda <= 200) y (acuPeso <= 200) Entonces
				cantEncom <- cantEncom + 1
				Mostrar "Se cargo la encomienda numero ", cantEncom				
				Mostrar "El peso cargado hasta el momento es de ", acuPeso, " kg"				
				Mostrar "El camion asignado es el numero ", numCamion
			FinSi
				Si acuPeso > 200 y numCamion <= 2 Entonces					
					Mostrar "La encomienda de ", pesoEncomienda, " kg supera el maximo acumulado permitido de 200 kg "					
					acuPeso <- acuPeso - pesoEncomienda
					Mostrar "El camion ", numCamion, " tiene una carga de ", acuPeso, " kg en ", cantEncom, " encomiendas"
					cargaCamion1 <- acuPeso
					cargaDisponibeCam1 <- 200 - cargaCamion1
					Mostrar "El camion numero ",numCamion, " tiene una disponibilidad de carga de ", cargaDisponibeCam1					
					numCamion <- numCamion + 1
					Mostrar "Se asigna la carga al camion numero ", numCamion
					cantEncom <- 1
					acuPeso <- pesoEncomienda
									
				FinSi
				
				Leer pesoEncomienda		
				
			Hasta Que pesoEncomienda < 0 o numCamion > 2
			Mostrar "No hay mas camiones disponibles para la ultima carga ingresada"
		FinMientras
							
FinAlgoritmo
