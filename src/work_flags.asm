section .text
global _start

_start:
    mov rax, 0x01
    mov rdx, 0x01
    cmp rax, rdx

    sub eax, eax
    add rax, 0x00

    mov rax, 0x7FFFFFFFFFFFFFFF
    add rax, 0x01

    mov rax, 0xFFFFFFFFFFFFFFFF
    add rax, 0x01

    mov al, 0x04
    test rax, rdx 
