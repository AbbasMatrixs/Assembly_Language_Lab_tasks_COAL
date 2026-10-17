.model small
.stack 100h
.data
msg db "Enter 2 chars: $"
c1 db ?
c2 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov dx,offset msg
    int 21h
    mov ah,1
    int 21h
    mov c1,al
    mov ah,1
    int 21h
    mov c2,al
    mov al,c1
    xchg al,c2
    mov c1,al
    mov ah,2
    mov dl,c1
    int 21h
    mov dl,c2
    int 21h
    mov ah,4Ch
    int 21h
main endp
end main