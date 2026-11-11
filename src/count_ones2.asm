section .text
global _start

_start:
    mov rax, 0x123456789ABCDEF0
    xor ebx, ebx
    mov ecx, 0x40

loop_start:
    ror rax, 0x1
    jnc skip
    inc bl

skip:
    loop loop_start


