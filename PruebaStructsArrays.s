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
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #188
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
   .SPACE 4
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
