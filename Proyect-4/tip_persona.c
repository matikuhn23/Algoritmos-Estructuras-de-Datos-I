#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#include <float.h>
#include <limits.h>

typedef struct _persona {
  	 char *nombre;
  	 int edad;
 	 float altura;
 	 float peso;
} persona_t;

//defino los Prototipos de las funciones
float peso_promedio(persona_t arr[], unsigned int longitud);
persona_t persona_de_mayor_edad(persona_t arr[], unsigned int longitud);
persona_t persona_de_menor_altura(persona_t arr[], unsigned int longitud);


int main(void) {

    persona_t p1 = {"Paola", 21, 1.85, 75};
    persona_t p2 = {"Luis", 54, 1.75, 69};
    persona_t p3 = {"Julio", 40, 1.70, 80};

    unsigned int longitud = 3;

    persona_t arr[] = {p1, p2, p3};

    printf("El peso promedio es %f\n", peso_promedio(arr, longitud));
    persona_t p = persona_de_mayor_edad(arr, longitud);
    printf("El nombre de la persona es %s\n", p.nombre);
    p = persona_de_menor_altura(arr, longitud);
    printf("El nombre de la persona con menor altura es %s\n", p.nombre);

    return 0;
}


float peso_promedio(persona_t arr[], unsigned int longitud) {
    unsigned int i = 0;
    float peso_prom = 0;

    while (i<longitud) {
        peso_prom = peso_prom + arr[i].peso;
        ++i;
    }
    peso_prom = peso_prom / longitud;
    return peso_prom;
}

persona_t persona_de_mayor_edad(persona_t arr[], unsigned int longitud) {
    unsigned int i = 0;
    persona_t mayor_edad, per_may_age;
    mayor_edad.edad = INT_MIN;

    while (i<longitud) {
        if (arr[i].edad > mayor_edad.edad) {
            mayor_edad.edad = arr[i].edad;
            per_may_age.nombre = arr[i].nombre;
        }
        ++i;
    }
    return per_may_age;
}

persona_t persona_de_menor_altura(persona_t arr[], unsigned int longitud) {
    unsigned int i = 0;
    persona_t menor_alt, per_men_alt;
    menor_alt.altura = FLT_MAX;

    while (i<longitud) {
        if (arr[i].altura < menor_alt.altura) {
            menor_alt.altura = arr[i].altura;
            per_men_alt.nombre = arr[i].nombre;
        }
        ++i;
    }

    return per_men_alt;
}
