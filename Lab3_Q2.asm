.model small
.stack 100h
.data
num db 5
.code
main proc
    mov ax,@data
    mov ds,ax
    mov al,num
    inc al
    mov num,al
    mov ah,4Ch
    int 21h
main endp
end main
