.model small
.stack 100h
.code
main proc
    mov cx, 10
    mov dl, '0'
print:
    mov ah, 02h
    int 21h
    inc dl
    loop print
    mov ah, 4Ch
    int 21h
main endp
end main
