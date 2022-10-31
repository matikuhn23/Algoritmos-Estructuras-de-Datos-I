#include <stdio.h>
#include <stdbool.h>
#define N 5

/*Declaro los prototipos de las funciones*/
bool existe_positivos(int a[], int tam);
bool todos_positivos(int a[], int tam);
void pedirArreglo(int a[], int n_max);

int main(void) {

	int a[N];	
	pedirArreglo(a, N);

	int ex, td;


	ex = existe_positivos(a, N);
	td = todos_positivos(a, N);
	if (td == 1) {
	    printf("Todos los enteros del arreglo son positivos, por lo tanto, es verdadero\n");
	} else if (ex == 1) {
		printf("Existe al menos un elemento positivo, por lo tanto, es verdadero\n");
	} else {
		printf("No existe ningun elemento del arreglo que sea positivio\n");
	}
	return 0;
}

bool existe_positivos(int a[], int tam) {
	int i = 0;
	bool existePos = false, p = true;
	
	while (i<tam) {
		if (a[i]>=0) {
			existePos = existePos || p;
		}
		++ i;
	}
	return existePos;
}	
	

bool todos_positivos(int a[], int tam) {
	int i = 0;
	bool todosPos = true, p = true, f = false;

	while (i<tam) {
		if (a[i]>=0) {
			todosPos = todosPos && p;
		} else {
			todosPos = todosPos && f;
		}
		++ i;
	}
	return todosPos;
}


void pedirArreglo(int a[], int tam) {
	int i;

	i = 0;
	while (i<tam) {
		printf("Ingrese un valor para el elemento %d \n", i);
		scanf("%d", &a[i]);
		++ i;
	}
	return;
 }
