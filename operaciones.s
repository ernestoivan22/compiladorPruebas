.globl main
main:
   LDR R11,=temp
   LDR R10,=data
   PUSH {LR}
   PUSH {R11}
   bl _main
   POP {R11}
   BX R11
_operacionint:
   POP {R11}
   POP {R12}
   STR R12, [R11, #0]
   PUSH {LR}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END0
   PUSH {R11}
   MOV R4, #'S'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'U'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'M'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END0:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END1
   PUSH {R11}
   MOV R4, #'R'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'E'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'S'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END1:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #2
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END2
   PUSH {R11}
   MOV R4, #'M'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'U'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'L'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END2:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #3
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END3
   PUSH {R11}
   MOV R4, #'D'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'I'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'V'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END3:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #4
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END4
   PUSH {R11}
   MOV R4, #'M'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'O'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'D'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END4:
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #5
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #1
   BNE _END5
   PUSH {R11}
   MOV R4, #'N'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'E'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
   PUSH {R11}
   MOV R4, #'G'
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printCaracterchar
   POP {R11}
_END5:
   POP {PC}
_main:
   POP {R11}
   PUSH {LR}
   MOV R4, #0
   STR R4, [R11, #0]
   MOV R4, #5
   STR R4, [R10, #0]
_WHILE0:
   LDR R4, [R11, #0]
   PUSH {R4}
   LDR R4, [R10, #0]
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #1
   BNE _WHILEEND0
   PUSH {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   LDR R4, [R11, #0]
   PUSH {R4}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   STR R6, [R11, #0]
   b _WHILE0
_WHILEEND0:
   PUSH {R11}
   MOV R4, #0
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   MOV R4, #2
   STR R4, [R10, #4]
   PUSH {R11}
   LDR R4, [R10, #0]
   PUSH {R4}
   LDR R4, [R10, #4]
   POP {R5}
   ADD R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #1
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   MOV R4, #2
   STR R4, [R10, #4]
   PUSH {R11}
   LDR R4, [R10, #0]
   PUSH {R4}
   LDR R4, [R10, #4]
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #2
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   MOV R4, #2
   STR R4, [R10, #4]
   PUSH {R11}
   LDR R4, [R10, #0]
   PUSH {R4}
   LDR R4, [R10, #4]
   POP {R5}
   MUL R6, R5, R4
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #3
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   MOV R4, #2
   STR R4, [R10, #4]
   PUSH {R11}
   LDR R4, [R10, #0]
   PUSH {R4}
   LDR R4, [R10, #4]
   POP {R5}
   PUSH {R4}
   PUSH {R5}
   BL _subrutinaDivision
   POP {R6}
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #4
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   MOV R4, #2
   STR R4, [R10, #4]
   PUSH {R11}
   LDR R4, [R10, #0]
   PUSH {R4}
   LDR R4, [R10, #4]
   POP {R5}
   PUSH {R4}
   PUSH {R5}
   BL _subrutinaResiduo
   POP {R6}
   PUSH {R6}
   ADD R11, R11, #4
   PUSH {R11}
   bl _printEnteroint
   POP {R11}
   PUSH {R11}
   MOV R4, #5
   PUSH {R4}
   ADD R11, R11, #4
   PUSH {R11}
   bl _operacionint
   POP {R11}
   MOV R4, #5
   STR R4, [R10, #0]
   PUSH {R11}
   LDR R4, [R10, #0]
   MOV R5, #-1
   MUL R5, R4, R5
   PUSH {R5}
   ADD R11, R11, #4
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
   .asciz "%c\n"
_mensajeErrorIndice: 
   .asciz "index out of bounds\n"
