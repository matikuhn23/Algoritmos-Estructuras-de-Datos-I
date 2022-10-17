#include <stdio.h>

int main(void){

    int x, y, i=0;

    printf("Ingrese un valor para x: \n");
  	scanf("%d", &x); /*x=13*/
  	printf("Ingrese un valor para y: \n");
  	scanf("%d", &y); /*y=3*/

    while (x>=y && i<=3) {

      x = x - y;
      i=i+1;
      printf("estado %d\n", i);
      printf("%d\n",x);
      printf("%d\n",y);
      printf("%d\n",i);
    }

    return 0;
  }

/*
#luego de la 1° iteración
x => 10 , y => 3, i => 1
#luego de la 2° iteración
x => 7 , y => 3, i => 2
#luego de la 3° iteración
x => 4 , y => 3, i => 3
#luego de la 4° iteración
x => 1 , y => 3, i => 4
*/
