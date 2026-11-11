section .text
global _start

_start:
    	mov rdi, 0xA
    	call sum_to_N

sum_to_N:
    	push rbp
	mov rbp, rsp

	mov rcx, rdi
	xor eax, eax

.loop:
	add rax, rcx
	dec rcx
	jnz .loop

	mov rsp, rbp
	pop rbp
	ret
