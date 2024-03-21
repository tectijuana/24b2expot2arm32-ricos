Title: Array de números ordenados por el método de burbuja   
Filename: array.s
Autor: América Elizabeth Zavaleta Ramirez
Date: 19/03/2024
Description:  Generador de números aleatorios y ordenamiento de los mismos por el método de burbuja
Imput: -
Ouput: Lista de números ordenados por el método de burbuja
 
------------------------------------
   HIGH LEVEL LANGUAGE
------------------------------------

// Programa de ejemplo en C++ 

// Librerias
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

    int main()
    {
    // Declaración del array y variables auxiliares
    int vector[10],i,j,aux;
    srand(time(NULL));
    printf("Lista de números aleatorios:\n");

    // Generación de números de manera aleatoria
    for(i=0;i<10;i++)
    {
       vector[i] = 100 + rand()% (110+1-100);
        printf("%d ",vector[i]);
    }
    
   // Ciclos FOR y condición IF para el ordenamiento Bubble Sort (Método de burbuja)
   for(i=0;i<10;i++)
   {
        for(j=0;j<10;j++)
        {
            if(vector[j] > vector[j+1])
            {
                aux = vector[j];
                vector[j] = vector[j+1];
                vector[j+1] = aux;
            }
        }
    }

    // Imprime los números ordenados
    printf("\nLa lista de números ordenados por Burbuja es: \n");
    for(i=0;i<10;i++)
    {
        printf("%d\n",vector[i]);
    }
    
    return 0;
 }
