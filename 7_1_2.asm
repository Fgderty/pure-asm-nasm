section .text
global _start

_start:
    mov eax, 0xDEADBEEF
    mov ebx, 0xCAFEBABE
    and eax, 0x0000FFFF
    and ebx, 0xFFFF0000
    or  eax, ebx
