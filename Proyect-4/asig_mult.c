#include <stdio.h>
#include <stdbool.h>

/*
{Pre: x = X, y = Y}
x, y := x + 1, x + y
{Post: x = X + 1, y = X + Y}

xaux = x
yaux = y

x = xaux + 1
y = xaux + y

{Pre: x = X, y = Y, z = Z}
x, y, z := y, y + x + z, y + x
{Post: x = Y, y = Y + X + Z, z = Y + X}

xaux = x
yaux = y
zaux = z

x = yaux
y = xaux + yaux + zaux
z = yaux + xaux

*/

//declaro los prototipos de las funciones
int varReass1(void);
int varReass2(void);

int main(void) {

	varReass1();
	varReass2();

	return 0;
}

int varReass1(void) {

	int x, y, xaux, yaux; //declaro las variables enteras y sus auxiliares

	printf("Ingrese un valor entero para x: \n");
	scanf("%d", &x);
	printf("Ingrese un valor entero para y: \n");
	scanf("%d", &y);
	//guardo los valores ingresados de las variables en unas auxiliares
	xaux = x;
	yaux = y;

	//realizo la reasignación
	x = xaux + 1;
	y = xaux + yaux;

	printf("Los nuevos valores de las variables son: x = %d, y = %d /n", x, y);

	return 0;
}

int varReass2(void) {
  	int x, y, z, xaux, yaux, zaux; //defino las variables enteras y sus auxiliares

  	printf("Ingrese un valor entero para x: \n");
  	scanf("%d", &x);
  	printf("Ingrese un valor entero para y: \n");
  	scanf("%d", &y);
  	printf("Ingrese un valor entero para z: \n");
  	scanf("%d", &z);
	//guardo los valores ingresados de las variables en unas auxiliares
	xaux = x;
	yaux = y,
	zaux = z;
	//realizo la reasignación
	x = yaux;
	y = yaux + xaux + zaux;
	z = yaux + xaux;

	printf("Los nuevos valores de las variables son: x = %d, y = %d y z = %d /n", x, y, z);

}

/*
Traducir los programas resultantes a C en archivos nuevos llamados multiple1.c y
multiple2.c respectivamente.
*/
