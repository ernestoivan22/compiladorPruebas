.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_mostrarLista:
   POP {R11}
   PUSH {LR}
   MOV R4, #0
   STR R4, [R11, #0]
_WHILE0:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #10
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _WHILEEND0
   PUSH {R11}
   LDR R4, [R11, #0]
   CMP R4, #10
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #1
   BNE _ERRORINDICE
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R10, R4]
   PUSH {R5}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printIntint
   POP {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   STR R6, [R11, #0]
   b _WHILE0
_WHILEEND0:
   POP {PC}
_main:
   POP {R11}
   PUSH {LR}
   MOV R4, #1
   STR R4, [R11, #8]
_WHILE1:
   LDR R4, [R11, #8]
   CMP R4, #1
   BNE _WHILEEND1
   MOV R4, #5
   STR R4, [R11, #0]
   MOV R4, #120
   STR R4, [R11, #4]
   LDR R4, [R11, #4]
   LDR R5, [R11, #0]
   CMP R5, #10
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R10, R5]
   PUSH {R11}
   ADD R11, R11, #12
   PUSH {R11}
   bl _mostrarLista
   POP {R11}
   b _WHILE1
_WHILEEND1:
   POP {PC}
_ERRORINDICE:
   b _ERRORINDICE
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
   .SPACE 40
temp:
   .SPACE 1024
_printIntint:
   POP {R11}
   POP {R1}
   PUSH {lr}
   LDR R0,=_formatoInt
   BL printf
   POP {PC}
_formatoInt: 
   .asciz "%d\n"