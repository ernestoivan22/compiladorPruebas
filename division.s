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
_divintint:
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
   PUSH {R4}
   PUSH {R5}
   BL _subrutinaDivision
   POP {R6}
   POP {R4}
   PUSH {R6}
   MOV PC, R4
_modintint:
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
   PUSH {R4}
   PUSH {R5}
   BL _subrutinaResiduo
   POP {R6}
   POP {R4}
   PUSH {R6}
   MOV PC, R4
_main:
   POP {R11}
   PUSH {LR}
   PUSH {R11}
   MOV R4, #4
   PUSH {R4}
   MOV R4, #20
   PUSH {R4}
   ADD R11, R11, #8
   PUSH {R11}
   bl _divintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #4]
   LDR R4, [R11, #4]
   STR R4, [R11, #0]
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #8
   PUSH {R11}
   bl _printIntint
   POP {R11}
   PUSH {R11}
   MOV R4, #4
   PUSH {R4}
   MOV R4, #21
   PUSH {R4}
   ADD R11, R11, #8
   PUSH {R11}
   bl _modintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #4]
   LDR R4, [R11, #4]
   STR R4, [R11, #0]
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #8
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