.model small
.stack 100h
.data
    buffer db 20
           db ?
           db 20 dup('$')
    msg db "Enter String: $"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg
    mov ah, 09h
    int 21h
    mov dx, offset buffer
    mov ah, 0Ah
    int 21h
    mov cl, buffer+1    
    lea si, buffer+2
    add si, cx
    dec si              
reverse:
    mov dl, [si]
    mov ah, 02h
    int 21h
    dec si
    loop reverse
    mov ah, 4Ch
    int 21h
main endp
end main
