
/*
Title: Array de números ordenados por el método de burbuja   
Filename: arrayBurbuja.s
Autor: América Elizabeth Zavaleta Ramirez
Date: 19/03/2024
Description : Generador de números aleatorios y ordenamiento de los mismos por el método de burbuja
Imput: -
Ouput: Lista de números ordenados por el método de burbuja
*/

.LC0:
        .string "Lista de numeros aleatorios:"
.LC1:
        .string "%d "
.LC2:
        .string "\nLa lista de numeros ordenados por Burbuja es: "
.LC3:
        .string "%d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        call    rand
        mov     ecx, eax
        movsx   rax, ecx
        imul    rax, rax, 780903145
        shr     rax, 32
        mov     edx, eax
        sar     edx
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        add     eax, edx
        sub     ecx, eax
        mov     edx, ecx
        add     edx, 100
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-64+rax*4], edx
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-64+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 9
        jle     .L3
        mov     DWORD PTR [rbp-4], 0
        jmp     .L4
.L8:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L5
.L7:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     edx, DWORD PTR [rbp-64+rax*4]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, 1
        cdqe
        mov     eax, DWORD PTR [rbp-64+rax*4]
        cmp     edx, eax
        jle     .L6
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rbp-64+rax*4]
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-8]
        add     eax, 1
        cdqe
        mov     edx, DWORD PTR [rbp-64+rax*4]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     DWORD PTR [rbp-64+rax*4], edx
        mov     eax, DWORD PTR [rbp-8]
        add     eax, 1
        cdqe
        mov     edx, DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-64+rax*4], edx
.L6:
        add     DWORD PTR [rbp-8], 1
.L5:
        cmp     DWORD PTR [rbp-8], 9
        jle     .L7
        add     DWORD PTR [rbp-4], 1
.L4:
        cmp     DWORD PTR [rbp-4], 9
        jle     .L8
        mov     edi, OFFSET FLAT:.LC2
        call    puts
        mov     DWORD PTR [rbp-4], 0
        jmp     .L9
.L10:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-64+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-4], 1
.L9:
        cmp     DWORD PTR [rbp-4], 9
        jle     .L10
        mov     eax, 0
        leave
        ret
