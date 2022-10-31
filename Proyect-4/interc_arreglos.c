#include <stdio.h>
#include <stdbool.h>

void intercambiar(int a[], int tam, int i, int j);
void imprimirArreglo(int a[], int tam);


int main(void) {

	int k, tam, i, j;
	//pido al usr el tamaño del arreglo
	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &tam);
	int a[tam]; //le asigno su longitud al arreglo
	k = 0;
	while (k<tam) {
		printf("Ingrese un valor para el elemento %d \n", k);
		scanf("%d", &a[k]);
		++ k;
	}
	/*pido al usr los valores del indice del arreglo*/
	printf("Ingresa un valor de indice del arreglo:\n");
	scanf("%d", &i);
	printf("Ingresa un valor para otro indice del arreglo:\n");
	scanf("%d", &j);

	intercambiar(a, tam, i, j);

	imprimirArreglo(a, tam);

	return 0;
}

void intercambiar(int a[], int tam, int i, int j) {

	int  x, y;
	
	if (i>=0 && i<tam && j>=0 && j<tam) {
		/*Asgino el valor de los elementos del arreglos en sus respectivas variables*/
		x = a[i];
		y = a[j];
		/*Reasigno los valores en las posiciones del arreglo*/
		a[i] = y;
		a[j] = x;
	}else {
		printf("Los valores ingresado no se encuentran en el rango del arreglo");
	}
	 return;

}
//función que imprime el arreglo
void imprimirArreglo(int a[], int tam) {
	int i, x;
	printf("\n\nEl arreglo modificado es: \n");
	i = 0;
	while (i<tam) {
		x = a[i];
		printf("el elemento %d es %d\n",i,x);
		++ i;
	}
	return;
}
