#include <stdio.h>
#include <float.h>
#include <assert.h>
#include <limits.h>

struct datos_t {
	float maximo;
	float minimo;
	float promedio;
};

struct datos_t stats(float a[], int tam);

int main(void) {

	/*Le pido al usr que ingrese el tamaño del arreglo*/
	int i, tam;
	printf("Ingrese el tamaño del arreglo: \n");
	scanf("%d", &tam);
	float a[tam];
	
	/*Le pido al usr que ingrese lso elementos del arreglo*/
	i=0;
	while (i<tam) {
		printf("Ingrese un valor para el elemento %d \n", i);
		scanf("%f", &a[i]);
		++ i;
	}

	float my, mn, pr;
	my = stats(a, tam).maximo;
	mn = stats(a, tam).minimo;
	pr = stats(a, tam).promedio;
	printf("El elemento máximo del arreglo es %f, el minimo %f y el promedios es %f", my, mn, pr);
	
	return 0;
}



struct datos_t stats(float a[], int tam) {

	/*defino los tipos de las variables a utlizar*/
	struct datos_t st;
	int i;
	/*inicializo las variables*/
	st.maximo = FLT_MIN;
	st.minimo = FLT_MAX;
	st.promedio = 0;
	i = 0;
	while (i<tam) {
		if (a[i]>st.maximo) {
			st.maximo = a[i];
		}

		if (a[i]<st.minimo) {
			st.minimo = a[i];
		}

		st.promedio = st.promedio + a[i];
		++i;
	} 
	st.promedio = st.promedio / tam;
	return st;
}

