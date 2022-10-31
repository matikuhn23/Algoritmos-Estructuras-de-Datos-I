#include <stdio.h>
#include <stdbool.h>

//declaro los prototipos de las funciones
void pedirArreglo(int a[], int n_max);
void imprimirArreglo(int a[], int n_max);

int main(void) {

	int n_max; //variable entera que determina el tamaño del arreglo
	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &n_max);
	int a[n_max]; //defino el arreglo y su longitud

	pedirArreglo(a, n_max);
	imprimirArreglo(a, n_max);

	return 0;
 }

//función que pide los elementos para un arreglo de longitud n_max
void pedirArreglo(int a[], int n_max) {
	int i;

	i = 0;
	while (i<n_max) {
		printf("Ingrese un valor para el elemento %d \n", i);
		scanf("%d", &a[i]);
		++ i;
	}
	return;
 }
