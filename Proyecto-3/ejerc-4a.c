#include <stdio.h>

int main(void) {

    int x, y;
    /*
    Evaluo el programa con los siguientes estados iniciales:
    1e) x->3, y->1
    1f) x->100, y->1
    */
    printf("Ingrese un valor para x \n")
    scanf("%d", &x);
    printf("Ingrese un valor para y \n")
    scanf("%d", &y);

    if (x>=y) {
      x = 0;
    } else if (x<=y) {
      x = 2;
    }

    return 0;
  }
