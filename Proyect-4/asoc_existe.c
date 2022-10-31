#include <stdio.h>
#include <stdbool.h>
#define N 4

typedef char clave_t;
typedef int valor_t;

struct asoc {
	clave_t clave;
	valor_t valor;
};

//prototipo de la funcion
bool asoc_existe(struct asoc a[], int tam, clave_t c);

int main(void) {

	//defino los arreglos
	struct asoc aux1[N]; //arreglo de claves
	struct asoc aux2[N]; //arreglo de valores

	int i;
	i = 0;
	while (i<N) {
		printf("Ingrese una clave para el elemento %d del arreglo: \n", i);
		scanf(" %c", &aux1[i].clave);
		printf("Ingrese un valo enteror para el elemento %d del arreglo: \n", i);
		scanf("%d", &aux2[i].valor);
		++i;
	}
	clave_t key;
	//pido al usr que ingrese una clave a comparar con las claves del arreglo aux1
	printf("Ingrese una clave que quiera verificar su existencia en el arreglo: \n");
	scanf(" %c", &key);


	bool exist;
	exist = asoc_existe(aux1, N, key);
	if (exist==0) {
		printf("La calve no existe en el arreglo.\n");
	} else { //si es distinto a 0 entonces la clave existe
		printf("La clave existe en el arreglo.\n");
	}
	return 0;
}

//Indica si la clave c se encuentra en el arreglo de asociaciones a[].
bool asoc_existe(struct asoc a[], int tam, clave_t c) {

	int i = 0;
	bool exiskey = 0;

	while (i<tam) {
		exiskey = exiskey || a[i].clave == c;
		++i;
	}
	return exiskey;
}
