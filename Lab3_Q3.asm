.model small
.stack 100h
.data
msg db "Enter a digit: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov dx,offset msg
    int 21h
    mov ah,1
    int 21h
    sub al,30h
    inc al
    add al,30h
    mov ah,2
    mov dl,al
    int 21h
    mov ah,4Ch
    int 21h
main endp
end main
