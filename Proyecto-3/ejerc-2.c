#include <stdio.h>

int main(void){
		/*
		Defino el estado inicial de las siguientes varibles para poder evaluar las expresiones
		x -> 16 , y -> 16, z -> 0, b -> True-1 , w -> True-1
		*/

		int x = 16, y = -16, z = 32 ,b = 1, w = 1;

		printf("El resultado de la primera operación es: %d\n", x % 4 == 0 ); /*true*/
		printf("El resultado de la segunda operación es: %d\n", x + y == 0 && y - x == (-1) * z ); /*true*/
		printf("El resultado de la tercera operación es: %d\n", !(b && w)); /*true*/

		return 0;
	}
