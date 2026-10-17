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
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h
    lea dx, buffer+2
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
