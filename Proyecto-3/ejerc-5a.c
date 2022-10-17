#include <stdio.h>

int main(void) {

    int i;

    printf("Ingrersar 4 como valor de i: \n");
    scanf("%d\n", &i);

    while (i != 0) {
      i = i-1;
    }

    return 0;
}
