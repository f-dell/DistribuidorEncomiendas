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
	int camionaisgnado;
	int cantencom;
	float cargacamion1;
	float cargadisponibecam1;
	float i;
	int numcamion;
	float pesoencomienda;
	int totalencomiendas;
	float totalpeso;
	acupeso = 0;
	cantencom = 0;
	totalencomiendas = 0;
	pesoencomienda = 0;
	totalpeso = 0;
	numcamion = 0;
	cargacamion1 = 0;
	cargadisponibecam1 = 0;
	camionaisgnado = 0;
	for (i=1;i<=5;i+=1) {
		for (pesoencomienda=0;pesoencomienda<=200;pesoencomienda+=1) {
			printf("Ingrese el peso de la encomienda: \n");
			scanf("%f",&pesoencomienda);
			do {
				if (pesoencomienda>200) {
					printf("El peso de la encomienda es mayor al maximo permitido, selecciones un paquete de menor peso: \n");
					scanf("%f",&pesoencomienda);
				}
			} while (pesoencomienda>200);
			if ((pesoencomienda<=200) && (acupeso<=200)) {
				cantencom = cantencom+1;
				printf("Se cargo la encomienda numero %i\n",cantencom);
				acupeso = acupeso+pesoencomienda;
				printf("El peso cargado hasta el momento es de %f kg\n",acupeso);
				camionaisgnado = numcamion+1;
				printf("El camion asignado es el numero %i\n",camionaisgnado);
				if (acupeso>200) {
					acupeso = acupeso-pesoencomienda;
					printf("La encomienda de peso %f supera el maximo acumulado permitido de 200 kg \n",pesoencomienda);
					cargacamion1 = acupeso;
					printf("El camion 1 tiene una carga de %f en %i encomiendas\n",acupeso,cantencom);
					cargadisponibecam1 = 200-cargacamion1;
					camionaisgnado = numcamion+1;
					printf("La carga supera el maximo permitido, se asigna al camion %i\n",camionaisgnado);
				}
			}
		}
		/* Mostrar "El total de encomiendas asignadas al camion ", numCamion, " es de ", totalEncomiendas, " con un peso total de ", totalPeso */
	}
	return 0;
}

