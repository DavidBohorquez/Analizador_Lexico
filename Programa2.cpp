#include <iostream>
#include <cstdio>

using namespace std;

// funcion main
int main () {

  // variables
  float cont = 0;
  int A, B, op;
  bool run = true;
  string saludo = "Bienvenido. Numero de ingresos al sistema: ";
  char conti;

  while(run) {
  	printf("%s", saludo.c_str());
    printf("%f \n", cont);

    A = 0;
    B = 0;
    op = 0;
    conti = 'N';

    cout<<"Ingrese un numero A: ";
    cin>>A;
    cout<<"Ingrese un numero B: ";
    cin>>B;

    cout<<"Ingrese una opcion" <<"\n";
    cout<<"1.Sumar \n";
    cout<<"2.Multiplicar \n";
    cin>>op;
    
    int aux;

    // menu
    switch(op){
      case 1: 
      	aux = A;
        for (int i=0; i<B; i++){
          aux +=  1;
        }
        break;
 
      case 2: 
      	aux = 0;
        for (int i=0; i<B; i++){
          aux += A;
        }
        break;
      
      default:
	  	cout <<"Opcion no valida \n";
    }

    printf("%s","El resultado es: ");
    printf("%d \n",aux);
    
    printf("Continuar Y-N: ");
    scanf(" %c",&conti);

    if(conti=='Y'){
      run = true;
    }else {
      run = false;
    }

    cont++;
  }
  return 0;
}
