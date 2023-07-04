.MODEL SMALL
.STACK 100H

.DATA
  PORT_A  DB  00H
  PORT_B  DB  00H
  MSG1    DB  'Water level is low', 0AH, '$'
  MSG2    DB  'Water level is high', 0AH, '$'

.CODE
  MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV DX, 0278H    ; Port A
    MOV AL, 00011111B ; Set Port A pins 0-4 as output
    OUT DX, AL

    MOV DX, 0279H    ; Port B
    MOV AL, 11100000B ; Set Port B pins 5-7 as input
    OUT DX, AL

    LOOP1:
      MOV DX, 0279H  ; Read Port B
      IN AL, DX
      AND AL, 11100000B
      CMP AL, 11100000B
      JZ HIGH
      JMP LOW

    HIGH:
      MOV DX, 0278H  ; Set Port A pin 5 high
      MOV AL, 00100000B
      OUT DX, AL
      MOV AH, 09H
      LEA DX, MSG2
      JMP LOOP1

    LOW:
      MOV DX, 0278H  ; Set Port A pin 5 low
      MOV AL, 00000000B
      OUT DX, AL
      MOV AH, 09H
      LEA DX, MSG1
      JMP LOOP1

    MOV AH, 4CH
    INT 21H
  MAIN ENDP
END MAIN
