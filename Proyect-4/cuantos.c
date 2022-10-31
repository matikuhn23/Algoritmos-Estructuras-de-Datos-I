#include <stdio.h>
#include <stdbool.h>

struct comp_t {
	int mayores, menores, iguales;
};
struct comp_t cuantos(int a[], int tam, int elem);

int main(void) {

	/*Le pido al usr que ingrese el tamaño del arreglo*/
	int i, tam, elem;
	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &tam);
	int a[tam];

	/*Le pido al usr que ingrese lso elementos del arreglo*/
	i=0;
	while (i<tam) {
		printf("Ingrese un valor para el elemento %d \n", i);
		scanf("%d", &a[i]);
		++ i;
	}

	/*el usr ingresa el entero a comparar con los elementos del arreglo*/
	printf("Ingrese el valor de un entero a comparar con los elementos del arreglo: \n");
	scanf("%d", &elem);

	int x, y ,z;
	x = cuantos(a, tam, elem).mayores;
	y = cuantos(a, tam, elem).menores;
	z = cuantos(a, tam, elem).iguales;
	printf("La cantidad de elementos mayores a %d es %d, de menores es %d e iguales es %d\n", elem, x, y, z);
	return 0;
}

struct comp_t cuantos(int a[], int tam, int elem) {

	struct comp_t num;

	int i=0;
	num.mayores = 0;
	num.menores = 0;
	num.iguales = 0;
	while (i<tam) {
		if (a[i] > elem) {
			++num.mayores;
		} else if (a[i] < elem) {
			++num.menores;
		} else {
			++num.iguales;
		}
		++i;
	}
	return num;	
}
