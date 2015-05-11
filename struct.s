.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_main:
   POP {R11}
   PUSH {LR}
   MOV R4, #7
   STR R4, [R11, #4]
   MOV R4, #4
   MOV R5, #4
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #36
   MUL R6, R6, R5
   ADD R5, R6, #8
   MOV R6, #4
   ADD R7, R6, #24
   ADD R6, R5, R7
   STR R4, [R11, R6]
   MOV R4, #4
   CMP R4, #5
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #1
   BNE _ERRORINDICE
   MOV R5, #36
   MUL R5, R5, R4
   ADD R4, R5, #8
   MOV R5, #4
   ADD R6, R5, #24
   ADD R5, R4, R6
   LDR R4, [R11, R5]
   STR R4, [R11, #0]
   POP {PC}
_ERRORINDICE:
   b _ERRORINDICE
.section .data
.align 2
data:
   .word
temp:
   .word
