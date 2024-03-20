@  
@  Title: Array de números ordenados por el método de burbuja   
@  Filename: arrayBurbuja.s
@  Autor: América Elizabeth Zavaleta Ramirez
@  Date: 19/03/2024
@  Description : 
@  Imput: -
@  Ouput: 
@  
@------------------------------------
@   HIGH LEVEL LANGUAGE
@------------------------------------
@
@  // Primer programa de ejemplo en C++ 
@
@ #include<stdio.h>
@ #include<stdlib.h>
@ #include<time.h>
@    int main(){
@    int vector[10],i,j,aux;
@    srand(time(NULL));
@    printf("Lista de numeros aleatorios:\n");
@    for(i=0;i<10;i++){
@        vector[i] = 100 + rand()% (110+1-100);
@        printf("%d ",vector[i]);
@    }
@    
@    
@    for(i=0;i<10;i++){
@        for(j=0;j<10;j++){
@            if(vector[j] > vector[j+1]){
@                aux = vector[j];
@                vector[j] = vector[j+1];
@                vector[j+1] = aux;
@            }
@        }
@    }
@    printf("\nLa lista de numeros ordenados por Burbuja es: \n");
@    for(i=0;i<10;i++){
@        printf("%d\n",vector[i]);
@    }
@    return 0;
@ }
