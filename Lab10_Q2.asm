.model small
.stack 100h
.code
main proc
    mov cx, 1
repeat:
    mov dl, '*'
    mov ah, 02h
    int 21h
    inc cx
    cmp cx, 6
    jne repeat      
    mov ah, 4Ch
    int 21h
main endp
end main
