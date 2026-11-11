section .text
global _start

_start:
    mov rax, 0x0123456789ABCDEF
    xor ebx, ebx
    mov bl,  al
    ror rax, 0x20
    xchg bl, al
    rol rax, 0x20
    mov al, bl
