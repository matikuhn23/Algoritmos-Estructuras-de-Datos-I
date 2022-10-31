#include <stdio.h>
/*Programa que retorna la suma de todos los enteros positivos hasta el entero ingersado N*/
int suma_hasta(int N);

int main(void) {
	int N;
	printf("Ingresa un entero positivo: \n");
	scanf("%d", &N);

	if (N < 0) {
		printf("El entero es negativo, por lo cual no es posible realizar la operación.\n Vuelva a ejecutar el programa e ingrese un entero positivo\n");
	} else {
		suma_hasta(N);
	}

	return 0;
}

int suma_hasta(int N) {

	int suma_hastaN;
	/*Uso la formula de Gauss para sumas hasta el entero N y lo almaceno en la variable que retorna la función*/
	suma_hastaN = N*(N+1)/2; 
	printf("La suma de todos los enteros hasta %d es: %d \n", N, suma_hastaN);

	return 0;

 }
