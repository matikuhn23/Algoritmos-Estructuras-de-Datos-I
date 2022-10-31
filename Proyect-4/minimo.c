#include <stdio.h>
#include <stdbool.h>
//declaro el prototipo de la función
int valorMinimo(void);

int main(void) {
	int min;
	min = valorMinimo();
	printf("El valor minimo entre los dos enteros ingresados es: %d\n", min);
}


int valorMinimo(void) {
	//defino las variables enteras. En min almaceno el valor minimo
	int x, y, min;

	printf("Ingrese un valor para la variable x: \n");
	scanf("%d", &x);
	printf("Ingrese un valor para la variable y: \n");
	scanf("%d", &y);

	if (x<=y) {
		min = x;
	} else {
		min = y;
	}

	return min;
}
