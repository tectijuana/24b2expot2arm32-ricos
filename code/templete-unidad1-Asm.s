
/*
Title: Practica 0 Templete para programa ARM Assembly   
Filename: hello.s
Autor: ____Aqui su nombre___
Date: ______
Description : Hola Mundo en ARM Assembly
Imput: -
Ouput: HOLA MUNDO to console
*/

.global main
.equ    STDOUT, 1          @ Descriptor de archivo para stdout

.section .data
vector:
    .skip   40              @ Espacio para 10 enteros
format_random:
    .asciz  "Lista de numeros aleatorios:\n"
format_sorted:
    .asciz  "La lista de numeros ordenados por Burbuja es:\n"
format_int:
    .asciz  "%d\n"

.section .text
main:
    @ Configurar la semilla del generador de números aleatorios
    mov     r0, #0          @ Argumento para srand
    bl      srand           @ Llamar a srand con la hora actual
    bl      generate_random_numbers @ Generar números aleatorios
    
    @ Imprimir la lista de números aleatorios
    bl      print_random_list
    
    @ Ordenar el vector usando el algoritmo de Burbuja
    bl      bubble_sort
    
    @ Imprimir la lista ordenada
    bl      print_sorted_list
    
    @ Salir del programa
    mov     r0, #0          @ Código de salida 0
    mov     r7, #1          @ Llamada al sistema para salir (SYS_exit)
    svc     #0              @ Llamada al sistema

generate_random_numbers:
    @ Generar y almacenar 10 números aleatorios en vector
    mov     r1, #10         @ Contador i
    ldr     r2, =vector     @ Dirección base del vector
1:  
    bl      generate_random_number @ Generar un número aleatorio
    str     r0, [r2], #4    @ Almacenar el número en vector y avanzar a la siguiente posición
    subs    r1, r1, #1      @ Decrementar el contador
    bne     1b              @ Repetir si r1 != 0
    bx      lr              @ Retornar

generate_random_number:
    @ Generar un número aleatorio entre 100 y 210 y devolverlo en r0
    mov     r0, #100        @ Valor mínimo
    mov     r1, #111        @ Rango (210 - 100 + 1)
    bl      srand           @ Configurar la semilla si no se ha hecho ya
    bl      rand            @ Generar un número aleatorio
    umull   r2, r3, r0, r1  @ Multiplicar el resultado por el rango
    mov     r0, r3, lsr #31 @ Tomar los bits superiores para obtener un número entre 0 y 110
    add     r0, r0, r2      @ Sumar el mínimo para obtener el número final
    bx      lr              @ Retornar

bubble_sort:
    @ Ordenar vector usando el algoritmo de Burbuja
    mov     r1, #10         @ Longitud del vector
    ldr     r2, =vector     @ Dirección base del vector
    mov     r3, #0          @ Bandera para controlar si se hizo un intercambio
1:  
    mov     r4, #0          @ Reiniciar la bandera de intercambio
    mov     r5, r2          @ Copiar la dirección base del vector a r5
    mov     r6, r2          @ Copiar la dirección base del vector a r6
    subs    r1, r1, #1      @ Decrementar el contador externo
    mov     r7, r1          @ Copiar el contador externo a r7
    mov     r1, #0          @ Reiniciar el contador interno
2:  
    ldr     r8, [r6], #4    @ Cargar vector[j]
    ldr     r9, [r6]        @ Cargar vector[j + 1]
    cmp     r8, r9          @ Comparar vector[j] con vector[j + 1]
    ble     3f              @ Saltar si vector[j] <= vector[j + 1]
    str     r9, [r6, #-4]   @ Guardar vector[j + 1] en vector[j]
    str     r8, [r6]        @ Guardar vector[j] en vector[j + 1]
    mov     r4, #1          @ Establecer la bandera de intercambio
3:  
    adds    r6, r6, #4      @ Avanzar al siguiente elemento en el vector
    subs    r7, r7, #1      @ Decrementar el contador interno
    bne     2b              @ Repetir si r7 != 0
    mov     r1, #0          @ Reiniciar el contador interno
    cmp     r4, #0          @ Comprobar si se hizo algún intercambio
    beq     4f              @ Salir si no se hizo ningún intercambio
    subs    r1, r1, #1      @ Decrementar el contador externo para compensar el último decremento
    b       1b              @ Repetir el bucle externo
4:  
    bx      lr              @ Retornar

print_random_list:
    @ Imprimir la lista de números aleatorios
    mov     r0, STDOUT      @ Descriptor de archivo para stdout
    ldr     r1, =format_random @ Formato de cadena
    bl      printf          @ Llamar a printf para imprimir la cadena
    
    @ Imprimir los elementos del vector
    mov     r1, #10         @ Longitud del vector
    ldr     r2, =vector     @ Dirección base del vector
1:  
    ldr     r0, [r2], #4    @ Cargar el siguiente elemento del vector
    ldr     r3, =format_int @ Formato de cadena para enteros
    bl      printf          @ Llamar a printf para imprimir el entero
    subs    r1, r1, #1      @ Decrementar el contador
    bne     1b              @ Repetir si r1 != 0
    bx      lr              @ Retornar

print_sorted_list:
    @ Imprimir la lista ordenada
    mov     r0, STDOUT      @ Descriptor de archivo para stdout
    ldr     r1, =format_sorted @ Formato de cadena
    bl      printf          @ Llamar a printf para imprimir la cadena
    
    @ Imprimir los elementos del vector
    mov     r1, #10         @ Longitud del vector
    ldr     r2, =vector     @ Dirección base del vector
1:  
    ldr     r0, [r2], #4    @ Cargar el siguiente elemento del vector
    ldr     r3, =format_int @ Formato de cadena para enteros
    bl      printf          @ Llamar a printf para imprimir el entero
