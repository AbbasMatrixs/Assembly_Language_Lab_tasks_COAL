.model small
.stack 100h
.code
main proc
    mov al, 6
    mov bl, 6
    cmp al, bl
    je equal
    jb below
    jg greater
equal:
    mov dl, 'E'
    jmp exit
below:
    mov dl, 'B'
    jmp exit
greater:
    mov dl, 'G'
exit:
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
