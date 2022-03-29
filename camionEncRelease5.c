/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

#include<stdio.h>

/* Hacer un programa para ingresar los valores de los pesos de distintas encomiendas que se deben enviar a */
/* distintos clientes y que finaliza cuando se ingresa un peso negativo. Se deben agrupar las encomiendas en */
/* camiones que pueden transportar hasta 200 kilos en total. */
/* Por ejemplo: 10, 20, 140 , 70, 100 , 40, 10, 50, 80 , 90, 30, 40 , 50 , -10. */
/* Camión 1 Cam. 2 Cam. 3 Cam. 4 Cam. 5 */
/* Se pide determinar e informar: */
/* a) El número de cada camión y peso total de encomiendas. (Camión 1: 170 kg, Camión 2: 170 kg) */
/* b) El número de camión que transporta mayor cantidad de encomiendas. (En el ejemplo anterior sería el */
/* Camión 3 con 4 encomiendas) */
int main() {
	float acupeso;
	int cantencom;
	int cantencomcam1;
	int cantencomcam2;
	int cantencomcam3;
	float cargadisponiblecam1;
	float cargadisponiblecam2;
	float cargadisponiblecam3;
	float cont1;
	int numcamion;
	float pesoencomienda;
	acupeso = 0;
	cantencom = 0;
	numcamion = 1;
	cargadisponiblecam3 = 200;
	cont1 = 0;
	printf("CENTRO DE CARGAS");
	printf("Ingrese el peso de la encomienda: \n");
	scanf("%f",&pesoencomienda);
	while (pesoencomienda>=0 && numcamion<3) {
		do {
			if (pesoencomienda==0 || pesoencomienda>200) {
				printf("No ha ingresado peso o el peso de la encomienda es mayor al maximo permitido de 200 kg, ingrese un peso dentro del rango permitido: \n");
				scanf("%f",&pesoencomienda);
			}
		} while (!(pesoencomienda>0 && pesoencomienda<=200));
		do {
			acupeso = acupeso+pesoencomienda;
			if (numcamion==1 && pesoencomienda>0) {
				if ((pesoencomienda<=200) && (acupeso<=200)) {
					cantencom = cantencom+1;
					printf("Se cargo la encomienda numero %i\n",cantencom);
					printf("El peso cargado hasta el momento es de %f kg\n",acupeso);
					printf("El camion asignado es el numero %i\n",numcamion);
				}
			}
			if (numcamion==2 && pesoencomienda>0 && acupeso<=200) {
				if ((pesoencomienda<=200) && (acupeso<=200) && cargadisponiblecam1<pesoencomienda) {
					cantencom = cantencom+1;
					printf("Se cargo la encomienda numero %i\n",cantencom);
					printf("El peso cargado hasta el momento es de %f kg\n",acupeso);
					printf("El camion asignado es el numero %i\n",numcamion);
				} else {
					cantencomcam1 = cantencomcam1+1;
					acupeso = acupeso-pesoencomienda;
					printf("Se cargo la encomienda numero %i\n",cantencomcam1);
					printf("El camion asignado es el numero %f\n",numcamion-1);
					cargadisponiblecam1 = cargadisponiblecam1-pesoencomienda;
					printf("La carga disponible del camion 1 es de %f kg\n",cargadisponiblecam1);
					printf("El peso cargado hasta el momento en el camion numero %f es de %f kg\n",numcamion-1,200-cargadisponiblecam1);
				}
			}
			if (numcamion==3 && pesoencomienda>0 && acupeso<=200) {
				if (pesoencomienda<=200 && acupeso<=200 && cargadisponiblecam1<pesoencomienda && cargadisponiblecam2<pesoencomienda) {
					cantencom = cantencom+1;
					printf("Se cargo la encomienda numero %i\n",cantencom);
					printf("El peso cargado hasta el momento es de %f kg\n",acupeso);
					printf("El camion asignado es el numero %i\n",numcamion);
				} else {
					if (pesoencomienda<=200 && acupeso<=200 && cargadisponiblecam1>=pesoencomienda) {
						cantencomcam1 = cantencomcam1+1;
						acupeso = acupeso-pesoencomienda;
						printf("Se cargo la encomienda numero %i en el camion %f\n",cantencomcam1,numcamion-2);
						printf("El camion asignado es el numero %f\n",numcamion-2);
						cargadisponiblecam1 = cargadisponiblecam1-pesoencomienda;
						printf("Carga disponible camion 1 %f kg\n",cargadisponiblecam1);
						printf("El peso cargado hasta el momento en el camion numero %f es de %f kg\n",numcamion-2,200-cargadisponiblecam1);
						cont1 = cont1+1;
					}
					if (pesoencomienda<=200 && acupeso<=200 && cargadisponiblecam2>=pesoencomienda && cont1==0) {
						cantencomcam2 = cantencomcam2+1;
						acupeso = acupeso-pesoencomienda;
						printf("Se cargo la encomienda numero %i en el camion %f\n",cantencomcam2,numcamion-1);
						printf("El camion asignado es el numero %f\n",numcamion-1);
						cargadisponiblecam2 = cargadisponiblecam2-pesoencomienda;
						printf("Carga disponible camion 1 %f kg\n",cargadisponiblecam2);
						printf("El peso cargado hasta el momento en el camion numero %f es de %f kg\n",numcamion-1,200-cargadisponiblecam2);
					}
					cont1 = 0;
				}
			}
			if (acupeso>200 && numcamion<=3) {
				printf("La encomienda de %f kg supera el maximo acumulado permitido de 200 kg \n",pesoencomienda);
				acupeso = acupeso-pesoencomienda;
				if (numcamion==1) {
					cargadisponiblecam1 = 200-acupeso;
					cantencomcam1 = cantencom;
					printf("El camion numero 1 tiene una disponibilidad de carga de %f kg\n",cargadisponiblecam1);
				}
				if (numcamion==2) {
					cargadisponiblecam2 = 200-acupeso;
					cantencomcam2 = cantencom;
					printf("El camion numero 2 tiene una disponibilidad de carga de %f kg\n",cargadisponiblecam2);
				}
				if (numcamion==3) {
					cargadisponiblecam3 = 200-acupeso;
					cantencomcam3 = cantencom;
					printf("El camion numero 3 tiene una disponibilidad de carga de %f kg\n",cargadisponiblecam3);
				}
				if ((cargadisponiblecam1>=0) && (cargadisponiblecam2>=0) && (cargadisponiblecam3>0)) {
					printf("El camion %i tiene una carga de %f kg en %i encomiendas\n",numcamion,acupeso,cantencom);
					numcamion = numcamion+1;
					cantencom = 1;
					acupeso = pesoencomienda;
					printf("Se asigna la carga al camion numero %i que acumula %i encomiendas con un peso de %f kg\n",numcamion,cantencom,acupeso);
				} else {
					if (cargadisponiblecam3==0) {
						printf("No es posible asignarle esta carga\n");
						printf("Vuelva a ingresar la carga para que se asigne a otro de los camiones si cuenta con disponibilidad para la misma\n");
						cantencom = 1;
						acupeso = pesoencomienda;
					}
				}
			}
			scanf("%f",&pesoencomienda);
		} while (!((pesoencomienda<0) || (cargadisponiblecam3<=0 && cargadisponiblecam2<=0 && cargadisponiblecam1<=0)));
		if (numcamion>=3 && pesoencomienda>0) {
			printf("No hay mas camiones disponibles para la ultima carga ingresada\n");
		}
	}
	return 0;
}

