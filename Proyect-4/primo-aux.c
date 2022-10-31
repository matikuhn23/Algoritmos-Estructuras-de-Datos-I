#include <stdio.h>
#include <stdbool.h>

int nesimo_primo(int n);
bool es_primo(int t);


int main(void) {
	int p, n;
	printf("Ingresa el N-ésimo primo que quieras que retorne la función: \n");
	scanf("%d", &n);
	if (n<0) {
		printf("El entero ingresado no es positivo. Por favor, vuelva a internarlo! \n");
		scanf("%d", &n);
	}
	p = nesimo_primo(n);
	printf("El n-ésimo primo es %d \n", p);

}

int nesimo_primo(int n) {
	int i, m, p;

	i = 0;
	m = 1;
	while (m<=n) {
		if (es_primo(i)==1) {
			p = i;
			++m;
		}
		++i;
	}
	return p;
}



bool es_primo(int t) {

    bool p = false;
    int i = 1, c = 0;

    while (1<=t) {
    	if (t%i == 0) {
    		++c;
    	}
		++i;
    }
    if (c==0) {
    	p = true;
  }
  return p;
}
