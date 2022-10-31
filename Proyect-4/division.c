#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

//Defino la estructura de la división
struct div_t {
	int cociente;
	int resto;
};
/*defino la función con tipo struct*/
struct div_t division(int x, int y) {
/*declaro las variables de tipo struct*/
	struct div_t dv;
	
	if (y <= 0 || x < 0){
		printf("La división del programa no esta definida para un divisor menor o igual a cero y/0 un dividendo negativo.\n");
		assert (y > 0 && x > 0); //si no se sumple el predicado del assert, aborta el programa.
	}else {
		dv.cociente = x / y;
		dv.resto = x % y; 
	}
	
	printf("El cociente de la división en %d y el resto %d \n", dv.cociente, dv.resto);	
	return dv;
 }


int main(void) {

	int divisor, dividendo;
	//pido al usr que ingrese el divisor y el dividendo
	printf("Ingrese un divisor: \n");
	scanf(" %d", &divisor);
	printf("Ingrese el dividendo: \n");
	scanf(" %d", &dividendo);

	division(dividendo, divisor);

	return 0;

 } 
