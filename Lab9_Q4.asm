.model small
.stack 100h
.code
main proc
    mov al, 8
    mov bl, 4
    cmp al, bl
    jg greater
    mov dl, 'N'
    jmp exit
greater:
    mov dl, 'G'    ; Greater
exit:
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
