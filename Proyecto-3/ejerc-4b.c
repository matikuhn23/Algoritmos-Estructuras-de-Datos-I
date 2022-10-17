#include <stdio.h>
/*
programa que determina la variable mas chica
*/
int main(void){

    int x, y, z, m;

    /*
    Evaluo el programa para los siguientes valores de estados iniciales
    x->5, y->4, z->8, m->0
    */
    printf("Ingrese un valor para x \n");
    scanf("%d", &x);
    printf("Ingrese un valor para y \n");
    scanf("%d", &y);
    printf("Ingrese un valor para z \n");
    scanf("%d", &z);
    printf("Ingrese un valor para m \n");
    scanf("%d", &m);

    if (x<y) {
      m = x;
    } else if (x>=y) {
      m = y;
    }

    /*
    Ahora, evaluo el siguiene bloque condicional con los estados:
    x->5, y->4, z->8, m->4
    */

    if (m<z) {
      m = m;
    } else if (m>=z) {
      m = z;
    }

    /*
    El estado final de los valores de las variables son:
    x->5, y->4, z->8, m->4
    */

    return 0;
  }

/*
Volvé a ejecutar nuevamente con otros estados iniciales. ¿Qué hace este programa?
¿Cuál es el valor final de la variable m?.
*/
