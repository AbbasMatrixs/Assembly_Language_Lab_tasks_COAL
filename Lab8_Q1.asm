.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 10         
repeat:
    mov dl, 'H'
    mov ah, 02h
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 's'
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    loop repeat
    mov ah, 4Ch
    int 21h
main endp
end main
