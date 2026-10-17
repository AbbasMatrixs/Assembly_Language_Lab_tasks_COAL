.model small
.stack 100h
.code
main proc
    mov cx, 26
    mov dl, 'A'
L1:
    mov ah, 02h
    int 21h
    inc dl
    loop L1
    mov cx, 26
    mov dl, 'z'
L2:
    mov ah, 02h
    int 21h
    dec dl
    loop L2
    mov ah, 4Ch
    int 21h
main endp
end main
