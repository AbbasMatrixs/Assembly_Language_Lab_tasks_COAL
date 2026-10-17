.model small
.stack 100h
.code
main proc
    mov cx, 4          
outer:
    mov bx, cx         
inner:
    mov dl, '*'
    mov ah, 02h
    int 21h
    dec bx
    jnz inner
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h
    loop outer
    mov ah, 4Ch
    int 21h
main endp
end main
