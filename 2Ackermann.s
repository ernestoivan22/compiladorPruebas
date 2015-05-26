.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_ackintint:
   POP {R11}
   POP {R12}
   STR R12, [R11, #0]
   POP {R12}
   STR R12, [R11, #4]
   PUSH {LR}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _ELSE0
   LDR R4, [R11, #4]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
   b _END0
_ELSE0:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVGT R6, #1
   MOVLE R6, #0
   PUSH {R6}
   LDR R4, [R11, #4]
   PUSH {R4}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   POP {R4}
   ANDR5, R4, R6
   CMP R5, #1
   BNE _ELSE1
   PUSH {R11}
   MOV R4, #1
   PUSH {R4}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #12
   PUSH {R11}
   bl _ackintint
   POP {R4}
   POP {R11}
   POP {R5}
   PUSH {R4}
   MOV PC, R5
   b _END1
_ELSE1:
   PUSH {R11}
   LDR R4, [R11, #4]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _ackintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #8]
   PUSH {R11}
   LDR R4, [R11, #8]
   PUSH {R4}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #12
   PUSH {R11}
   bl _ackintint
   POP {R4}
   POP {R11}
   POP {R5}
   PUSH {R4}
   MOV PC, R5
_END1:
_END0:
_main:
   POP {R11}
   PUSH {LR}
   PUSH {R11}
   MOV R4, #'m'
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #':'
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   MOV R4, #4
   STR R4, [R11, #0]
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #'n'
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #':'
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   LDR R4, [R11, #4]
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   MOV R4, #0
   STR R4, [R11, #4]
   PUSH {R11}
   LDR R4, [R11, #4]
   PUSH {R4}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #12
   PUSH {R11}
   bl _ackintint
   POP {R4}
   POP {R11}
   STR R4, [R11, #8]
   PUSH {R11}
   LDR R4, [R11, #8]
   PUSH {R4}
   ADD R11, R11, #12
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
