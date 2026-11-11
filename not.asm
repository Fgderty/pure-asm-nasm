section .text
global _start

_start:
    mov rax, 0x0123456789ABCDEF
    not  al
