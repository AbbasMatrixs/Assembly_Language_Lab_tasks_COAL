.model small
.stack 100h
.code
main proc
    mov cx, 26
    mov dl, 'Z'
print:
    mov ah, 02h
    int 21h
    dec dl
    loop print
    mov ah, 4Ch
    int 21h
main endp
end main
