#include <stdio.h>

/*
Prototipos de las funciones a utilizar
*/
int pedirEnteros(void);
void imprimir_menor_entero(int);

int main(void){
    int i = pedirEnteros();
    imprimir_menor_entero(i);
  }

int pedirEnteros(void){

    int x, y, z, m = 0;

    printf("Ingresa un entero:\n");
    scanf("%d", &x);
    printf("Ingresa un entero:\n");
    scanf("%d", &y);
    printf("Ingresa un entero:\n");
    scanf("%d", &z);

    if (x<y) {
      m = x;
    } else if (x>=y) {
      m = y;
    }

    if (m < z) {
      m = m;
    } else if (m>=z) {
      m = z;
    }

    return m;
  }

void imprimir_menor_entero(int k){
  printf("El menor entero ingresado es: %d \n", k);
  }

  /*
  ¿Qué ventajas encontras en esta nueva versión?. ¿Podrı́as escribir alguna otra función
  en ese ejercicio, cual?. ¿En qué otros ejercicios de ese Proyecto lo podrı́as utilizar?.
  Reescribı́ los programas donde puedas utilizarlas.
  */
