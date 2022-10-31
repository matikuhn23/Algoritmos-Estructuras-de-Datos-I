#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

//declaro los prototipos de las funciones
void holaHasta(int n);
int pedirEntero(void);

int main(void) {
	int x;
	x = pedirEntero();
	holaHasta(x);
}

int pedirEntero(void) {

	int x;
	
	printf("Ingrese un entero que indique cuantas veces quiere que le salude: ");
	scanf("%d", &x);
	assert (x > 0); //si el valor ingresado no cumple con ser mayor a 0, se aborta el programa
	return x;
}

void holaHasta(int n) {

	int i;
	i = 0;
	while (i < n) {
		printf("Hola\n"); //imprimo hola n veces
		i = i+1;
	}
}
