.model small
.stack 100h
.code
main proc
    mov cx, 4        ; Outer loop count

outer:
    mov dl, '0'
    mov ah, 02h
    int 21h

    mov bx, 6        ; Inner loop count
inner:
    mov dl, 'i'
    mov ah, 02h
    int 21h
    dec bx
    jnz inner

    loop outer

    mov dl, '0'
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
