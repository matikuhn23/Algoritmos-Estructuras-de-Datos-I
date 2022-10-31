#include <stdio.h>
#include <stdbool.h>
#include <limits.h>

int minimo_pares(int a[], int tam);
int minimo_impares(int a[], int tam);


int main(void) {

	int k, tam, min_par, min_impar, i, x;

	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &tam);
	int a[tam];

	k = 0;
	while (k<tam) {
		printf("Ingrese un valor para el elemento %d del arreglo \n", k);
		scanf("%d", &a[k]);
		++ k;
	}

	min_par = minimo_pares(a, tam);
	min_impar = minimo_impares(a, tam);

	if (min_par<min_impar) {
		printf("El minimo elemento de la lista es %d", min_par);
	} else {
		printf("El minimo elemento de la lista es %d", min_impar);
	}

	i = 0;
	while (i<tam) {
		x = a[i];
		printf("El elemento en la posición %d del arreglo es: %d", i, x);
		++i;
	}
}

int minimo_pares(int a[], int tam) {

	int i, elem, min;
	min = INT_MAX;
	i = 0;
	while (i<tam) {
		elem = a[i];
		if (elem % 2 == 0 && elem<min) {
			min = elem;
		} else {
			break;
		}
		++ i;
	}
	return min;
	
}

int minimo_impares(int a[], int tam) {

	int i, elem, min;
	min = INT_MAX;
	i = 0;
	while (i<tam) {
		elem = a[i];
		if (elem % 2 != 0 && elem<min) {
			min = elem;
		} else {
			break;
		}
		++ i;
	}
	return min;
}
