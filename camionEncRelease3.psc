Algoritmo sin_titulo
	Definir numCamion, cantEncom, totalEncomiendas Como Entero
	Definir pesoEncomienda, acuPeso, totalPeso, cargaCamion1, cargaDisponibeCam1 Como Real
	acuPeso <- 0
	cantEncom <- 0
	
	pesoEncomienda <- 0
	
	numCamion <- 1
	cargaCamion <- 0
	cargaDisponibeCam <- 0
		
	
	Mostrar "Ingrese el peso de la encomienda: "
	Leer pesoEncomienda
	
	Mientras pesoEncomienda > 0 y numCamion <= 3 Hacer		
		Repetir
			Si pesoEncomienda == 0 o pesoEncomienda > 200 Entonces
				Mostrar "Ha ingresado un peso nulo o ha ingresado un peso mayor al permitido de 200 kg, ingreselo nuevamente: "
				Leer pesoEncomienda
			FinSi			
		Hasta Que pesoEncomienda > 0 y pesoEncomienda <= 200
		
		Repetir	
			acuPeso <- acuPeso + pesoEncomienda
			Si pesoEncomienda <= 200 y acuPeso <= 200 Entonces				
				cantEncom <- cantEncom + 1
				Mostrar "Se asigna la carga al camion numero ", numCamion
				Mostrar "El camion numero ", numCamion, " acumula un peso de ", acuPeso, " kg en ", cantEncom, " encomiendas"
				Si numCamion == 1 Entonces				
					cargaDisponibeCam1 <- 200 - acuPeso
					Mostrar "El camion numero 1 tiene una disponibilidad de carga de ", cargaDisponibeCam1 ," kg"
				FinSi
				Si numCamion == 2 Entonces				
					cargaDisponibeCam2 <- 200 - acuPeso
					Mostrar "El camion numero 2 tiene una disponibilidad de carga de ", cargaDisponibeCam2 ," kg"
				FinSi
				Si numCamion == 3 Entonces				
					cargaDisponibeCam3 <- 200 - acuPeso
					Mostrar "El camion numero 3 tiene una disponibilidad de carga de ", cargaDisponibeCam3 ," kg"
				FinSi				
				
			FinSi
			
			Si pesoEncomienda > 200 o acuPeso > 200 Entonces
				acuPeso <- acuPeso - pesoEncomienda
				Mostrar "El camion numero ", numCamion, " acumula un peso de ", acuPeso, " kg en ", cantEncom , " encomiendas"
				numCamion <- numCamion + 1
				Si cargaDisponibeCam1 >= pesoEncomienda Entonces
					acuPeso <- pesoEncomienda
					cantEncom <- 1
				FinSi
			FinSi
			Leer pesoEncomienda
		Hasta Que pesoEncomienda < 0
		
	FinMientras
	
FinAlgoritmo
