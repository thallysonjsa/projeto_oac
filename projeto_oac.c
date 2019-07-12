#include <stdio.h>

 int main() {

   char palavra[100] = "guuuuuuuuuuuuu     stauvo";
   char *caractere = "u";

   int i;
   int contador = 0;
   for(i = 0; i < 99; i++){
     if(palavra[i] == *caractere){
       contador++;
     }

     printf("A palavra possui exatamente %d letras %c",contador,caractere);
   }
  return 0;
}
