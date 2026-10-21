section .text
global _start

_start:
    mov rax, 5
    mov rbx, 5
    cmp rax, rbx	; ZF must be 1 (5 - 5 = 0)
    mov rax, 0
    add rax, 0		; ZF = 1 (0 + 0 = 0)
    mov rax, 0xFFFFFFFFFFFFFFFF
    add rax, 1		; CF = 1 (Carry out Flag)
    mov rax, 0x7FFFFFFFFFFFFFFF
    add rax, 1		; OF = 1 (Overflow Flag)
    mov rax, 4
    test rax, 1		; ZF = 1 (4 & 1 = 0, al0 = 0)
