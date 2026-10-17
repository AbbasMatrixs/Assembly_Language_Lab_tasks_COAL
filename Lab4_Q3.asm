.model small
.stack 100h
.data
    MYCHAR EQU 'A'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dl, MYCHAR
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main