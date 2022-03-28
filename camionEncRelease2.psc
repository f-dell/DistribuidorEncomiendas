Algoritmo sin_titulo
	Definir numCamion, cantEncom, totalEncomiendas Como Entero
	Definir pesoEncomienda, acuPeso, totalPeso, cargaCamion1, cargaDisponibeCam1 Como Real
	acuPeso <- 0
	cantEncom <- 0
	totalEncomiendas <- 0
	pesoEncomienda <- 0
	totalPeso <- 0
	numCamion <- 1
	cargaCamion <- 0
	cargaDisponibeCam <- 0
	cargaDisponibeCam1 <- 200
	cargaDisponibeCam2 <- 200
	cargaDisponibeCam3 <- 200
	
	
	
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
			
				Si numCamion == 1 y cargaDisponibeCam1 > pesoEncomienda Entonces
					Mostrar "Se asigna la carga al camion numero ", numCamion				
					Mostrar "El camion numero ", numCamion, " acumula un peso de ", acuPeso, " kg en ", cantEncom, " encomiendas"
					cargaDisponibeCam1 <- 200 - acuPeso
					Mostrar "El camion ", numCamion, " tiene una disponibilidad de carga de ", cargaDisponibeCam1, " Kg"	
					
				FinSi
				
				Si numCamion == 2 y cargaDisponibeCam > pesoEncomienda Entonces
					Mostrar "Se asigna la carga al camion numero ", numCamion				
					Mostrar "El camion numero ", numCamion, " acumula un peso de ", acuPeso, " kg en ", cantEncom, " encomiendas"
					cargaDisponibeCam2 <-  acuPeso
					Mostrar "El camion ", numCamion, " tiene una disponibilidad de carga de ", cargaDisponibeCam, " Kg"	
				FinSi
				
				Si numCamion == 3 y cargaDisponibeCam > pesoEncomienda Entonces
					Mostrar "Se asigna la carga al camion numero ", numCamion				
					Mostrar "El camion numero ", numCamion, " acumula un peso de ", acuPeso, " kg en ", cantEncom, " encomiendas"
					cargaDisponibeCam3 <- acuPeso
					Mostrar "El camion ", numCamion, " tiene una disponibilidad de carga de ", cargaDisponibeCam, " Kg"	
				FinSi
				
			FinSi
			Si acuPeso > 200 Entonces				
				Mostrar "El peso acumulado supera el maximo perimitido de 200 kg"
				Si numCamion == 1 Entonces
					cargaDisponibeCam1 <- cargaDisponibeCam
				FinSi
				Si numCamion == 2 Entonces
					cargaDisponibeCam2 <- cargaDisponibeCam
				FinSi
				Si numCamion == 3 Entonces
					cargaDisponibeCam3 <- cargaDisponibeCam
				FinSi
				acuPeso <- acuPeso - pesoEncomienda
				numCamion <- numCamion + 1
				Si pesoEncomienda < cargaDisponibeCam1 Entonces
					
				FinSi
				
				cantEncom <- 1
				acuPeso <- pesoEncomienda
			FinSi
			Leer pesoEncomienda
		Hasta Que pesoEncomienda < 0
		
	FinMientras
FinAlgoritmo
