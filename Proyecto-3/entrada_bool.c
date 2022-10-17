#include <stdio.h>
#include <stdbool.h>


/*Prototipos de las funciones definidas en el programa*/
bool pedirBooleano(void);
void imprimirBooleano(bool);

int main(void) {
    bool t;
    t = pedirBooleano();
    imprimirBooleano(t);
 }

bool pedirBooleano(void) {

    int x;

    printf("ingrese un bool: 0 para false, 1 para true:\n");
    scanf("%d", &x);

    return x;
  }

void imprimirBooleano(bool n) {
    if (n != 0) {
        printf("El booleano ingresado es: True\n");
    } else {
        printf("El booleano ingresado es: False\n");
    }
 }
