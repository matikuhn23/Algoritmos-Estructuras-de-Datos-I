#include <stdio.h>

/*
Prototipos de las funciones a utilizar
*/
int pedirEntero(void);
void imprimeEntero(int);

int main(void){
    int i = pedirEntero();
    imprimeEntero(i);
  }

int pedirEntero(void){

    int x;

    printf("Ingresa un entero:\n");
    scanf("%d", &x);

    return x;
  }

void imprimeEntero(int x){
    printf("El entero ingresado es: %d \n", x);

  }
