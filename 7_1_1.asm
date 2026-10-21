section .text
global _start

_start:
    mov rax, 0x123456789ABCDEF0
    and eax, 0xFF

