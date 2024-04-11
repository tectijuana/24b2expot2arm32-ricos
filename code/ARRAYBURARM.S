


.text
.global main

main:
    @ Configurar la semilla para la generación de números aleatorios
    mov r0, #0        @ r0 se usa para pasar el argumento al srand
    bl srand          @ Llama a la función srand para inicializar la semilla
    @ Inicializar el contador i en 0
    mov r4, #0

generar_numeros_aleatorios:
    cmp r4, #10       @ Compara r4 con 10
    bge ordenar       @ Si r4 >= 10, saltar a la parte de ordenamiento

    @ Genera un número aleatorio entre 100 y 210
    mov r1, #100      @ Establece el límite inferior (100)
    mov r2, #111      @ Establece el rango (110+1)
    bl rand           @ Llama a la función rand para generar el número aleatorio
    add r0, r0, r1    @ Suma el límite inferior al número aleatorio generado
    str r0, [r3, r4, LSL #2]  @ Almacena el número generado en el vector
    
    @ Incrementa el contador i (r4)
    add r4, r4, #1
    b generar_numeros_aleatorios

ordenar:
    mov r4, #0        @ Reinicializa el contador i (r4)
    
bucle_externo:
    cmp r4, #9        @ Compara r4 con 9
    bge imprimir      @ Si r4 >= 9, saltar a la parte de impresión
    
    mov r5, #0        @ Inicializa el contador j (r5)
    
bucle_interno:
    cmp r5, #9        @ Compara r5 con 9
    bge siguiente_iteracion  @ Si r5 >= 9, saltar a la siguiente iteración
    
    ldr r6, [r3, r5, LSL #2]  @ Carga vector[j] en r6
    ldr r7, [r3, r5, LSL #2]  @ Carga vector[j+1] en r7
    cmp r6, r7               @ Compara vector[j] con vector[j+1]
    ble no_intercambio       @ Si vector[j] <= vector[j+1], no hacer nada
    
    str r6, [r3, r5, LSL #2]  @ Almacena vector[j] en vector[j+1]
    str r7, [r3, r5, LSL #2]  @ Almacena vector[j+1] en vector[j]
    
no_intercambio:
    add r5, r5, #1           @ Incrementa el contador j (r5)
    b bucle_interno

siguiente_iteracion:
    add r4, r4, #1           @ Incrementa el contador i (r4)
    b bucle_externo

imprimir:
    mov r4, #0               @ Reinicializa el contador i (r4)
    
imprimir_numeros:
    cmp r4, #10              @ Compara r4 con 10
    bge fin_programa         @ Si r4 >= 10, saltar al final del programa
    
    ldr r0, [r3, r4, LSL #2] @ Carga vector[i] en r0
    bl printf                @ Llama a la función printf para imprimir el número
    mov r0, #10              @ Carga el código ASCII de nueva línea en r0
    bl putchar               @ Llama a la función putchar para imprimir una nueva línea
    
    add r4, r4, #1           @ Incrementa el contador i (r4)
    b imprimir_numeros

fin_programa:
    mov r0, #0               @ Establece el código de salida en 0 (éxito)
    bl exit                  @ Llama a la función exit para finalizar el programa

.data
vector: .word 10 DUP(0)      @ Reserva espacio para el vector de 10 elementos
