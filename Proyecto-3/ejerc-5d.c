#include <stdio.h>
#include <stdbool.h>

int main(void){
    int i, x;
    bool res = true;

    printf("Ingrese un valor para x: \n");
    scanf("%d", &x); /*x=5*/
    printf("Ingrese un valor para i: \n");
    scanf("%d", &i); /*i=0*/

    i = 2;

    while (i<x && res && i<6) {
      res = res && x % i != 0;
      i = i + 1;

      printf("estado %d\n", i);
      printf("%d\n",x);
      printf("%d\n",i);
      printf("%d\n",res);
    }
    return 0;
  }

/*
Ingrese un valor para x:
5
Ingrese un valor para i:
0
estado 3
5
3
1
estado 4
5
4
1
estado 5
5
5
1


3) Ejecutá los programas con otros estados iniciales para deducir qué hace cada uno.

*/
