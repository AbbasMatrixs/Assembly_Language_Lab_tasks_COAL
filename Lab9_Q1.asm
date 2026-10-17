.model small
.stack 100h
.code
main proc
    mov al, 5
    cmp al, 5      
    jz zero_label
    mov dl, 'N' 
    jmp exit
zero_label:
    mov dl, 'Z'    
exit:
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main
