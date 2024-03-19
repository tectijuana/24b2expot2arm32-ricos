@  
@  Title: Practica 0 Templete para programa ARM Assembly   
@  Filename: hello.s
@  Autor: ____Aqui su nombre___
@  Date: ______
@  Description : Hola Mundo en ARM Assembly
@  Imput: -
@  Ouput: HOLA MUNDO to console
@  
@------------------------------------
@   HIGH LEVEL LANGUAGE
@------------------------------------
@ Esta sección es donde se declaran y se inicializan las variables y los datos que se usarán en el programa.
@
@  // Primer programa de ejemplo en C++ solución
@  
@  #include <iostream>
@  int main () 
@  {
@      std::cout << "Hola, mundo";
@      return 0;
@  }
@  


@ hello.s programa usa los recursos básicos a compilarlo
@ Esto es un comentario que describe el propósito general del programa.

@------------------------------------
@   DATA SECTION   
@------------------------------------
@ Esta sección es donde se declaran y se inicializan las variables y los datos que se usarán en el programa.

.section	.data   @ Comienza la sección de datos. Aquí se pueden declarar variables.
.section	.text   @ Comienza la sección de texto. Aquí es donde se coloca el código ejecutable del programa.
.globl		_start   @ Esta línea hace que la etiqueta _start sea visible fuera de este archivo, lo que permite que el enlazador la encuentre.

@------------------------------------
@   CODE SECTION   
@------------------------------------
@ Esta sección contiene el código ejecutable del programa.

_start:		   @ Esta es la etiqueta que marca el punto de entrada del programa.
nop          @ no operation, Instrucción de No Operación (NOP). No hace nada y se utiliza a menudo para fines de depuración o para introducir retrasos controlados.
mov r7, $1   @ exit syscall; Mueve el valor 1 (que representa la llamada al sistema de salida) al registro r7.
svc $0		   @ wake kernel.  Invoca una llamada al sistema (System Call). Esto causa una interrupción que transfiere el control al kernel del sistema operativo para que realice la operación solicitada en el registro r7.
.end         @ Marca el fin del archivo fuente. Los resultados se ven enconsk

@-------------------------------------
@   MAKEFILE  
@-------------------------------------
@  Esta sección compila y conecta visual Studio Code con la extensión CMAKE o manualmente en powerShell, Linux Terminal
@  NOTA: makefile es un lenguaje y le gustan los TABS (no espacion en identaciones)
@
@  # Define el archivo fuente en ensamblador  
@  SRC = templete.s  
@  
@  # Define el nombre del archivo de salida  
@  OUT = templete  
@  
@  # Define el ensamblador y las banderas  
@  AS = as  
@  ASFLAGS = -g  
@  
@  # Define el enlazador y las banderas  
@  LD = ld  
@  LDFLAGS =  
@  
@  # Define el GCC o G++ segun corresponda  
@  GCC = gcc  
@  GCCFLAGS =  -g  
@  
@  # Corrida de make  
@  all: $(OUT)  
@  
@  $(OUT): $(SRC)  
@          $(AS) $(ASFLAGS) $(SRC) -o $(OUT).o  
@          $(GCC) $(LDFLAGS) $(OUT).o -o $(OUT)  
@  # Borra temporales y ejecutable  
@  clean:  
@          rm -f $(OUT) $(OUT).o  
@  # Corrida  
@  run: $(OUT)  
@          ./$(OUT)  
@  
@  # Entrar al Debugger  
@
@
@  Basado en el templete: https://github.com/tectijuana/interfaz/edit/master/templete/readme.md
@  gef: $(OUT)  
@          gdb  $(OUT)  
