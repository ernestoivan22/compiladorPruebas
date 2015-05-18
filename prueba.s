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
   MOV R4, #4
   MOV R5, #4
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #348
   MUL R6, R6, R5
   ADD R5, R6, #8
   MOV R6, #2
   CMP R6, #5
   MOVLT R7, #1
   MOVGE R7, #0
   CMP R7, #1
   BNE _ERRORINDICE
   MOV R7, #64
   MUL R7, R7, R6
   ADD R6, R7, #24
   MOV R7, #2
   CMP R7, #-1
   MOVLT R8, #1
   MOVGE R8, #0
   CMP R8, #1
   BNE _ERRORINDICE
   MOV R8, #1
   MUL R8, R8, R7
   ADD R7, R8, #-1
   MOV R8, #-1
   ADD error, R7, R8
   ADD R7, R6, error
   ADD R6, R5, R7
   STR R4, [R11, R6]
   MOV R4, #4
   CMP R4, #5
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #1
   BNE _ERRORINDICE
   MOV R5, #348
   MUL R5, R5, R4
   ADD R4, R5, #8
   MOV R5, #2
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _ERRORINDICE
   MOV R6, #64
   MUL R6, R6, R5
   ADD R5, R6, #24
   MOV R6, #3
   CMP R6, #-1
   MOVLT R7, #1
   MOVGE R7, #0
   CMP R7, #1
   BNE _ERRORINDICE
   MOV R7, #1
   MUL R7, R7, R6
   ADD R6, R7, #-1
   MOV R7, #-1
   ADD R8, R6, R7
   ADD R6, R5, R8
   ADD R5, R4, R6
   LDR R4, [R11, R5]
   STR R4, [R11, #4]
   PUSH {R11}
   LDR R4, [R11, #4]
   PUSH {R4}
   ADD R11, R11, #1748
   PUSH {R11}
   bl _printIntint
   POP {R11}
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
   .SPACE 4
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