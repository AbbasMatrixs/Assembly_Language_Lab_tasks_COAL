.model small
.stack 100h
.code
main proc
    mov al, 3
    mov bl, 5
    cmp al, bl
    jb below
    mov dl, 'N'
    jmp exit
below:
    mov dl, 'B'    
exit:
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
