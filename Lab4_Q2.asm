.model small
.stack 100h
.data
    msg db "Enter number (1-9): $"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h          
    sub al, 30h      
    add al, 20h      
    mov dl, al
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main