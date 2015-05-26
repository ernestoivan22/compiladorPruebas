.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_sumaintint:
   POP {R11}
   POP {R12}
   STR R12, [R11, #0]
   POP {R12}
   STR R12, [R11, #4]
   PUSH {LR}
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
   MOV R4, #1
   MOV R5, #0
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #1
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #3
   MOV R5, #2
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #4
   MOV R5, #3
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #2
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #1
   BNE _ERRORINDICE
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R11, R4]
   STR R5, [R11, #16]
   MOV R4, #3
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #1
   BNE _ERRORINDICE
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R11, R4]
   STR R5, [R11, #24]
   PUSH {R11}
   LDR R4, [R11, #24]
   PUSH {R4}
   LDR R4, [R11, #16]
   PUSH {R4}
   ADD R11, R11, #28
   PUSH {R11}
   bl _sumaintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #20]
   LDR R4, [R11, #20]
   MOV R5, #-1
   MUL R5, R4, R5
   STR R5, [R11, #20]
   PUSH {R11}
   LDR R4, [R11, #20]
   PUSH {R4}
   ADD R11, R11, #28
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   POP {PC}
_ERRORINDICE:
   LDR R0,=_mensajeErrorIndice
   BL printf
   POP {PC}
_subrutinaDivision:
   POP {R0}
   POP {R1}
   MOV R2,#0
   PUSH {LR}
_retornoDivision:
   CMP R0,R1
   BLT _finSubrutinaDivision
   SUB R0, R0, R1
   ADD R2, R2, #1
   b _retornoDivision
_finSubrutinaDivision:
   POP {R1}
   PUSH {R2}
   MOV PC,R1
_subrutinaResiduo:
   POP {R0}
   POP {R1}
   MOV R2,#0
   PUSH {LR}
_retornoResiduo:
   CMP R0,R1
   BLT _finSubrutinaResiduo
   SUB R0, R0, R1
   ADD R2, R2, #1
   b _retornoResiduo
_finSubrutinaResiduo:
   POP {R1}
   PUSH {R0}
   MOV PC,R1
.section .data
.align 2
data:
temp:
   .SPACE 1024
_printEnteroint:
   POP {R11}
   POP {R1}
   PUSH {lr}
   LDR R0,=_formatoInt
   BL printf
   POP {PC}
_printCaracterchar:
   POP {R11}
   POP {R1}
   PUSH {lr}
   LDR R0,=_formatoChar
   BL printf
   POP {PC}
_formatoInt: 
   .asciz "%d\n"
_formatoChar: 
   .asciz "%c"
_mensajeErrorIndice: 
   .asciz "index out of bounds\n"
