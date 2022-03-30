//Realizar un algoritmo que contabilice las cargas de encomiendas en tres camiones los cuales admiten como maximo una carga de 200 kg cada uno
//Si el peso de una encomienca supera el maximo permitido en un camion se asigna la carga al proximo camion y, si en las sucesivas encomiendas el
//peso de alguna de ellas esta dentro del rango que admite alguno de los camiones anteriores, dicha encomienda, debe asignarse al primer camion que 
//cuente con disponibilidad de carga. Al alcanzar los maximos permitidos en todos los camiones se debe informar que no hay mas disponiblidad de carga y
//finalizar el proceso. Para concluir la carga de encomiendas si aun hay disponibilidad de carga en alguno de los tres camiones se debe ingresar una 
//carga con valor negativo.

Algoritmo Ej
	Definir numCamion, cantEncom Como Entero
	Definir pesoEncomienda, acuPeso Como Real
	acuPeso <- 0
	cantEncom <- 0
	numCamion <- 1
	cargaDisponibleCam3 <- 200
	cont1 <- 0
	
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
			Si numCamion == 1 y pesoEncomienda > 0 Entonces
				Si (pesoEncomienda <= 200) y (acuPeso <= 200) Entonces				
					cantEncom <- cantEncom + 1
					Mostrar "Se cargo la encomienda numero ", cantEncom				
					Mostrar "El peso cargado hasta el momento es de ", acuPeso, " kg"				
					Mostrar "El camion asignado es el numero ", numCamion
				FinSi
			FinSi
			
			Si numCamion == 2 y pesoEncomienda > 0 y acuPeso <= 200 Entonces
				Si (pesoEncomienda <= 200) y (acuPeso <= 200) y cargaDisponibleCam1 < pesoEncomienda Entonces				
					cantEncom <- cantEncom + 1
					Mostrar "Se cargo la encomienda numero ", cantEncom				
					Mostrar "El peso cargado hasta el momento es de ", acuPeso, " kg"				
					Mostrar "El camion asignado es el numero ", numCamion
				SiNo
					cantEncomCam1 <- cantEncomCam1 + 1
					acuPeso <- acuPeso - pesoEncomienda
					Mostrar "Se cargo la encomienda numero ", cantEncomCam1										
					Mostrar "El camion asignado es el numero ", numCamion - 1
					cargaDisponibleCam1 <- cargaDisponibleCam1 - pesoEncomienda
					Mostrar "La carga disponible del camion 1 es de ", cargaDisponibleCam1, " kg"
					Mostrar "El peso cargado hasta el momento en el camion numero ", numCamion - 1, " es de ", 200 - cargaDisponibleCam1, " kg"
				FinSi
			FinSi
			
			Si numCamion == 3 y pesoEncomienda > 0 y acuPeso <= 200 y cargaDisponibleCam3 > 0 Entonces
				Si pesoEncomienda <= 200 y acuPeso <= 200 y cargaDisponibleCam1 < pesoEncomienda y cargaDisponibleCam2 < pesoEncomienda Entonces				
					cantEncom <- cantEncom + 1
					Mostrar "Se cargo la encomienda numero ", cantEncom				
					Mostrar "El peso cargado hasta el momento es de ", acuPeso, " kg"				
					Mostrar "El camion asignado es el numero ", numCamion
				SiNo					
					Si pesoEncomienda <= 200 y acuPeso <= 200 y cargaDisponibleCam1 >= pesoEncomienda Entonces
						cantEncomCam1 <- cantEncomCam1 + 1
						acuPeso <- acuPeso - pesoEncomienda
						Mostrar "Se cargo la encomienda numero ", cantEncomCam1, " en el camion ", numCamion - 2									
						Mostrar "El camion asignado es el numero ", numCamion - 2
						cargaDisponibleCam1 <- cargaDisponibleCam1 - pesoEncomienda
						Mostrar "Carga disponible camion 1 ", cargaDisponibleCam1, " kg"
						Mostrar "El peso cargado hasta el momento en el camion numero ", numCamion - 2," es de ", 200 - cargaDisponibleCam1, " kg"							
						cont1 <- cont1 + 1
					FinSi
					
					Si pesoEncomienda <= 200 y acuPeso <= 200 y cargaDisponibleCam2 >= pesoEncomienda y cont1 == 0 Entonces
						cantEncomCam2 <- cantEncomCam2 + 1						
						acuPeso <- acuPeso - pesoEncomienda
						Mostrar "Se cargo la encomienda numero ", cantEncomCam2, " en el camion ", numCamion - 1									
						Mostrar "El camion asignado es el numero ", numCamion - 1
						cargaDisponibleCam2 <- cargaDisponibleCam2 - pesoEncomienda
						Mostrar "Carga disponible camion 2 ", cargaDisponibleCam2, " kg"
						Mostrar "El peso cargado hasta el momento en el camion numero ", numCamion - 1," es de ", 200 - cargaDisponibleCam2, " kg"								
					FinSi					
					cont1 <- 0
				FinSi				
			FinSi
			
			Si acuPeso > 200 y numCamion <= 3 Entonces					
				Mostrar "La encomienda de ", pesoEncomienda, " kg supera el maximo acumulado permitido de 200 kg "					
				acuPeso <- acuPeso - pesoEncomienda
				Si numCamion == 1 Entonces				
					cargaDisponibleCam1 <- 200 - acuPeso
					cantEncomCam1 <- cantEncom
					Mostrar "El camion numero 1 tiene una disponibilidad de carga de ", cargaDisponibleCam1 ," kg"
				FinSi
				
				Si numCamion == 2 Entonces				
					cargaDisponibleCam2 <- 200 - acuPeso
					cantEncomCam2 <- cantEncom
					Mostrar "El camion numero 2 tiene una disponibilidad de carga de ", cargaDisponibleCam2 ," kg"
				FinSi
				
				Si numCamion == 3 Entonces				
					cargaDisponibleCam3 <- 200 - acuPeso
					cantEncomCam3 <- cantEncom
					Mostrar "El camion numero 3 tiene una disponibilidad de carga de ", cargaDisponibleCam3 ," kg"
					Mostrar "El camion numero 2 tiene una disponibilidad de ", cargaDisponibleCam2, " kg"
					Mostrar "El camion numero 1 tiene una disponibilidad de ", cargaDisponibleCam1, " kg"					
					Mostrar "Solo se admite el ingreso de cargas dentro de estos margenes de disponibilidad"
				FinSi
				
				Si (cargaDisponibleCam1 >= 0) y (cargaDisponibleCam2 >= 0) y (cargaDisponibleCam3 > 0) Entonces	
					Si (pesoEncomienda <= cargaDisponibleCam1) o (pesoEncomienda <= cargaDisponibleCam2) o (pesoEncomienda <= cargaDisponibleCam3) Entonces
						Mostrar "El camion ", numCamion, " tiene una carga de ", acuPeso, " kg en ", cantEncom, " encomiendas"
						numCamion <- numCamion + 1					
						cantEncom <- 1
						acuPeso <- pesoEncomienda
						Mostrar "Se asigna la carga al camion numero ", numCamion, " que acumula ", cantEncom, " encomiendas con un peso de ", acuPeso, " kg"
					FinSi
				SiNo
					Si (cargaDisponibleCam3 == 0) y (cargaDisponibleCam1 >= pesoEncomienda o cargaDisponibleCam2 >= pesoEncomienda) Entonces						
						Si (cargaDisponibleCam1 >= pesoEncomienda) Entonces
							cantEncomCam1 <- cantEncomCam1 + 1							
							Mostrar "Se cargo la encomienda numero ", cantEncomCam1, " en el camion ", numCamion - 2									
							Mostrar "El camion asignado es el numero ", numCamion - 2
							cargaDisponibleCam1 <- cargaDisponibleCam1 - pesoEncomienda
							Mostrar "Carga disponible camion 1 ", cargaDisponibleCam1, " kg"
							Mostrar "El peso cargado hasta el momento en el camion numero ", numCamion - 2," es de ", 200 - cargaDisponibleCam1, " kg"							
							cont1 <- cont1 + 1
						FinSi
						Si (cargaDisponibleCam2 >= pesoEncomienda) y cont1 == 0 Entonces
							cantEncomCam2 <- cantEncomCam2 + 1							
							Mostrar "Se cargo la encomienda numero ", cantEncomCam2, " en el camion ", numCamion - 1									
							Mostrar "El camion asignado es el numero ", numCamion - 1
							cargaDisponibleCam2 <- cargaDisponibleCam2 - pesoEncomienda
							Mostrar "Carga disponible camion 2 ", cargaDisponibleCam2, " kg"
							Mostrar "El peso cargado hasta el momento en el camion numero ", numCamion - 1," es de ", 200 - cargaDisponibleCam2, " kg"
						FinSi
						cont1 <- 0						
					FinSi					
				FinSi				
			FinSi				
			
			Leer pesoEncomienda		
			
		Hasta Que (pesoEncomienda < 0) o (cargaDisponibleCam3 <= 0 y cargaDisponibleCam2 <= 0 y cargaDisponibleCam1 <= 0)
		
		Si numCamion >= 3 y pesoEncomienda > 0 Entonces
			Mostrar "No hay mas camiones disponibles para la ultima carga ingresada"
		FinSi
		
	FinMientras
		
FinAlgoritmo
