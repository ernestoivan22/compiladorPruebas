.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_fibint:
   POP {R11}
   POP {R12}
   STR R12, [R11, #0]
   PUSH {LR}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #2
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ELSE0
   LDR R4, [R11, #0]
   POP {R5}
   PUSH {R4}
   MOV PC, R5
   b _END0
_ELSE0:
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _fibint
   POP {R4}
   POP {R11}
   PUSH {R4}
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #2
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _fibint
   POP {R4}
   POP {R11}
   POP {R5}
   ADD R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
_END0:
_main:
   POP {R11}
   PUSH {LR}
   PUSH {R11}
   MOV R4, #5
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _fibint
   POP {R4}
   POP {R11}
   STR R4, [R11, #0]
   POP {PC}
_ERRORINDICE:
   b _ERRORINDICE
.section .data
.align 2
data:
temp:
   .word
