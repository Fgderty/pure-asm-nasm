section .text
global _start

_start:
    mov rdi, 0xA
    mov rsi, 0x14
    call add_two

add_two:
    push rbp
    mov rbp, rsp

    lea rax, [rdi + rsi]
 
    mov rsp, rbp
    pop rbp
    ret
