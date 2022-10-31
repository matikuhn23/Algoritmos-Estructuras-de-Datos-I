#include <stdio.h>
#include <stdbool.h>


int calculaAbs(int);//declaro el prototipo de la función

int main(void) {

	int abs, x;
	printf("Ingrese un entero, para determinar su valor absoluto:\n");
	scanf("%d", &x);
	abs = calculaAbs(x);
	printf("El valor absoluto del entero ingresado es: %d \n", abs);

	return 0;
}

int calculaAbs(int x) {

	if (x >= 0) {
		x = x;
	} else {
		x = -x;
	}	
	return x;
}
