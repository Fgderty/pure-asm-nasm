section .text
global _start

_start:
    sub rsp, 16
    mov rdi, rsp
    mov rsi, 0xAA
    mov rdx, 0x10

    call fill_buffer

fill_buffer:
    push rbp
    mov rbp, rsp

    mov al, sil
    mov rcx, rdx
    cld
    rep stosb
    mov rax, rdi

    mov rsp, rbp
    pop rbp
    ret

