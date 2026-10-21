section .text
global _start

_start:
    mov rdi, 0x7
    call square

square:
    push rbp
    mov rbp, rsp

    imul rax, rdi, rdi

    mov rsp, rbp
    pop rbp
    ret
