.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_borrar:
   POP {R11}
   PUSH {LR}
   MOV R4, #5
   STR R4, [R11, #0]
   POP {PC}
_sumaintint:
   POP {R11}
   POP {R12}
   STR R12, [R11, #0]
   POP {R12}
   STR R12, [R11, #4]
   PUSH {LR}
   MOV R4, #5
   STR R4, [R11, #8]
   LDR R4, [R11, #0]
   PUSH {R4}
   LDR R4, [R11, #4]
   POP {R5}
   ADD R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
_main:
   POP {R11}
   PUSH {LR}
   PUSH {R11}
   MOV R4, #2
   PUSH {R4}
   MOV R4, #5
   PUSH {R4}
   ADD R11, R11, #8
   PUSH {R11}
   bl _sumaintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #4]
   LDR R4, [R11, #4]
   STR R4, [R11, #0]
   PUSH {R11}
   ADD R11, R11, #8
   PUSH {R11}
   bl _borrar
   POP {R11}
   POP {PC}
_ERRORINDICE:
   b _ERRORINDICE
.section .data
.align 2
data:
   .word
temp:
   .word
