#include <stdio.h>

int sumatoria(int a[], int tam);
void pedirArreglo(int a[], int n_max);

int main(void) {
	int tam;
	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &tam);
	int a[tam];

	pedirArreglo(a, tam);
	sumatoria(a, tam);

	return 0;
}

int sumatoria(int a[], int tam) {
	int sum_array, x, i;
	i = 0;
	sum_array = 0; //en esta variable almaceno el resultado de la sumatoria de elementos del arreglo
	while (i<tam) {
		x = a[i];
		sum_array = sum_array + x;
		++ i ;
	}
	printf("El resultado de la sumatoria de los elementos del arreglo es %d \n", sum_array);
	return 0;
}

void pedirArreglo(int a[], int tam) {
	int i;

	i = 0;
	while (i<tam) {
		printf("Ingrese un valor para el elemento %d \n", i);
		scanf("%d", &a[i]);
		++ i;
	}
	return;
 }
