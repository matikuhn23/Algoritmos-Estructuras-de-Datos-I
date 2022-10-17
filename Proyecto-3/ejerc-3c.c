#include <stdio.h>

int main(void){
		int x, y, i;

	  /*
	  Veo los resultados para los siguientes estados iniciales: x->2, y->5
	  */
		i = 1;
		printf("Ingrese un valor para x \n");
		scanf("%d", &x);
		printf("Ingrese un valor para y \n");
		scanf("%d", &y);

		while (i<4) {

			y = y + y;
			x = x + y;

			i = i+1;
		}
		printf("El resultado es %d \n", x);
		printf("El resultado es %d \n", y);

		return 0;
	}

/*
El resultado es 72
El resultado es 40
*/
