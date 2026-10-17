.model small
.stack 100h
.data
    msg1 db "Enter Capital Letter: $"
    msg2 db 0Dh,0Ah,"Small Letter: $"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h        
    add al, 20h      
    mov dx, offset msg2
    mov ah, 09h
    int 21h
    mov dl, al
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main