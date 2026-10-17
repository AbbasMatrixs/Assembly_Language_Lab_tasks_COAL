.model small
.stack 100h
.data
    line db "*************$"
    msg1 db 0Dh,0Ah,"Name:Hassan $"
    msg2 db 0Dh,0Ah,"Second Name:Abbas $"
    msg3 db 0Dh,0Ah,"Roll No: BSE-24S-070$"
    msg4 db 0Dh,0Ah,"Institute Name: SMI University $"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset line
    mov ah, 09h
    int 21h
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov dx, offset msg2
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov dx, offset msg3
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov dx, offset msg4
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov dx, offset line
    mov ah, 09h
    int 21h
    mov ah, 4Ch
    int 21h
main endp
end main