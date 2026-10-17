.model small
.stack 100h
.data
    msg db 0Dh,0Ah,"Welcome Hassan Abbas$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
