.model small
.stack 100h

.data
stars db "***********",0Dh,0Ah,'$'
Aline db "A",0Dh,0Ah,'$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; print stars
    mov dx, offset stars
    mov ah, 09h
    int 21h

    ; print A
    mov dx, offset Aline
    mov ah, 09h
    int 21h

    ; print A again
    mov dx, offset Aline
    mov ah, 09h
    int 21h

    ; print stars again
    mov dx, offset stars
    mov ah, 09h
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
