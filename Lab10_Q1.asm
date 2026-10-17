.model small
.stack 100h
.code
main proc
    mov al, 5
    cmp al, 5       
    jne exit        
    mov dl, 'e'     
    mov ah, 02h
    int 21h
exit:
    mov ah, 4Ch
    int 21h
main endp
end main
