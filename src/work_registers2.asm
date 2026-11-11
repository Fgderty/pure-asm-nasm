section .text
global _start

_start:

mov rax, 0x1122334455667788
mov ebx, 0xAABBCCDD
mov cx, 0xEEFF
mov dl, 0x99

xchg rax, rbx
lea rcx, [rcx + rcx*8]
sub edx, edx
