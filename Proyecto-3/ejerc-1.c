#include <stdio.h>
#include <stdbool.h>

int main(void){
		int x, y, z;

		printf("Ingrese un valor para x: \n");
		scanf("%d", &x);
		printf("Ingrese un valor para y: \n");
		scanf("%d", &y);
		printf("Ingrese un valor para z: \n");
		scanf("%d", &z);

		/*
		Ver los resultados para los siguientes valores iniciales:
		x->7, y->3, z->5
		x->1, y->10, z->8
		*/

		printf("El resultado es %d\n", x + y + 1);
		printf("El resultado es %d\n", z * z + y * 45 - 15 * x);
		printf("El resultado es %d\n", y - 2 == (x * 3 + 1) % 5);
		printf("El resultado es %d\n", y / 2 * x);
		printf("El resultado es %d\n", y < x * z);

		return 0;

	}
	 /*
		primera tanda de resultados de la primera terna de valores
		11; 55; 0; 7; 1
		segunda tanda d eresultados de la segunda terna de valores
		12; 499; 0; 5; 0
	 */
