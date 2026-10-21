section .text
global _start

_start:
    mov rdi, 0xF
    mov rsi, 0x2A
    call max

max:
    push rbp
    mov rbp, rsp

    cmp rdi, rsi
    jb .max_sec
    mov rax, rdi

    jmp .done

.max_sec:
    mov rax, rsi

.done:
    mov rsp, rbp
    pop rbp
    ret
