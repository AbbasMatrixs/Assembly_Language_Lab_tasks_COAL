.model small
.stack 100h
.code
main proc
    mov cx, 4          
outer:
    mov dl, '1'
    mov ah, 02h
    int 21h
    mov bx, 5          
inner:
    mov dl, '2'
    mov ah, 02h
    int 21h
    dec bx
    jnz inner
    loop outer
    mov ah, 4Ch
    int 21h
main endp
end main
