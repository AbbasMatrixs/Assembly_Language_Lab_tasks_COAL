.model small
.stack 100h
.code
main proc
    mov al, 10
    mov bl, 10
    cmp al, bl
    je equal
    mov dl, 'N'
    jmp exit
equal:
    mov dl, 'E'
exit:
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
