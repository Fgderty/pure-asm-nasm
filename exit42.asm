section .text
global _start

_start:
    mov rax, 60		; syscall: exit
    mov rdi, 42		; argument: code exit
    syscall
