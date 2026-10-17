.model small
.stack 100h
.data
    str1 db "coal$"
    str2 db "coal$"
    msg1 db 0Dh,0Ah,"Strings are Equal$"
    msg2 db 0Dh,0Ah,"Strings are Not Equal$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov es, ax
    lea si, str1
    lea di, str2
    mov cx, 4        
    cld
compare:
    cmpsb
    jne notequal
    loop compare
equal:
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    jmp exit

notequal:
    mov dx, offset msg2
    mov ah, 09h
    int 21h
exit:
    mov ah, 4Ch
    int 21h
main endp
end main
