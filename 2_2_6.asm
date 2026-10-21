section .text
global _start

_start:
	mov rdi, 0xF0F0F0F0F0F0F0F0
	call count_ones

count_ones:
	push rbp
	mov rbp, rsp

	push rbx
	mov rbx, rdi
	xor eax, eax
	mov rcx, 0x40

.loop:
	shr rbx, 0x1
	jnc .skip
	inc rax

.skip:
	dec rcx
	jnz .loop

	pop rbx
	mov rsp, rbp
	pop rbp
	ret
