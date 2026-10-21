section .text
global _start

_start:
    mov rax, 0x0123456789ABCDEF
    xor ebx, ebx
    mov rcx, 0x8

loop_start:
    shl rbx, 0x8
    or  bl, al
    shr rax, 0x8
    loop loop_start

    mov rax, rbx

