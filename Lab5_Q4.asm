.model small
.stack 100h
.data
    msg1 db "Welcom$"
    msg2 db 0Dh,0Ah,"Hassan$"
    msg3 db 0Dh,0Ah,"To Coal Lab Manual$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    mov dx, offset msg2
    mov ah, 09h
    int 21h
    mov dx, offset msg3
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
