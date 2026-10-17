.model small
.stack 100h
.data
    fname db "first Name: Hassan$"
    Sname db 0Dh,0Ah,"Second Name: Abbas$"
    roll db 0Dh,0Ah,"Roll No: BSE-24S-070$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset fname
    mov ah, 09h
    int 21h
    mov dx, offset Sname
    mov ah, 09h
    int 21h
    mov dx, offset roll
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
