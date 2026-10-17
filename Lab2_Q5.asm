.model small
.stack 100h
.data
.code
main proc
    mov ah, 09h
    lea dx, msg
    int 21h

    msg db "Hello World$"

    mov ah, 4ch
    int 21h
main endp
end main