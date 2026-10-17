.model small
.stack 100h
.data
.code
main proc
    mov ah, 02h       
    mov dl, 'A'        
    int 21h

    mov ah, 4Ch        
    int 21h
main endp
end main
