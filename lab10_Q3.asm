.model small
.stack 100h
.code
main proc
    mov al, 5
    mov bl, 3
    cmp al, 5
    je print
    cmp bl, 10
    je print
    jmp exit        
print:
    mov dl, 'e'
    mov ah, 02h
    int 21h
exit:
    mov ah, 4Ch
    int 21h
main endp
end main
