.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    mov ah, 01h
    int 21h
    mov bl, al           
    mov ah, 02h
    mov dl, 0Dh          
    int 21h
    mov ah, 02h
    mov dl, 0Ah          
    int 21h
    mov ah, 02h
    mov dl, bl
    int 21h
    mov ah, 4Ch
    int 21h
MAIN ENDP
END MAIN