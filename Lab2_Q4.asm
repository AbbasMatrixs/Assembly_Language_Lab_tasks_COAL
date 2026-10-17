.model small
.stack 100h
.data
buffer db 20
       db ?
       db 20 dup(?)
.code
main proc
    mov ah , 0ah
    lea dx, buffer
    int 21h
  
    mov ah, 4ch
    int 21h
main endp
end main   