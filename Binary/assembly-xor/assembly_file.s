	.file	"q.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"Look for something else....\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	rdi, .LC0[rip]
	mov	eax, 0
	mov rax , 80
	mov rbx , 45
	xor rax , rbx
	push rax

	mov rax , 193
	mov rbx , 184
	xor rax , rbx
	push rax

	mov rax , 81
	mov rbx , 96
	xor rax , rbx
	push rax

	mov rax , 51
	mov rbx , 81
	xor rax , rbx
	push rax

	mov rax , 69
	mov rbx , 40
	xor rax , rbx
	push rax

	mov rax , 155
	mov rbx , 168
	xor rax , rbx
	push rax

	mov rax , 113
	mov rbx , 2
	xor rax , rbx
	push rax

	mov rax , 139
	mov rbx , 216
	xor rax , rbx
	push rax

	mov rax , 152
	mov rbx , 172
	xor rax , rbx
	push rax

	mov rax , 142
	mov rbx , 209
	xor rax , rbx
	push rax

	mov rax , 102
	mov rbx , 8
	xor rax , rbx
	push rax

	mov rax , 169
	mov rbx , 152
	xor rax , rbx
	push rax

	mov rax , 101
	mov rbx , 58
	xor rax , rbx
	push rax

	mov rax , 126
	mov rbx , 77
	xor rax , rbx
	push rax

	mov rax , 16
	mov rbx , 116
	xor rax , rbx
	push rax

	mov rax , 107
	mov rbx , 91
	xor rax , rbx
	push rax

	mov rax , 152
	mov rbx , 251
	xor rax , rbx
	push rax

	mov rax , 197
	mov rbx , 154
	xor rax , rbx
	push rax

	mov rax , 55
	mov rbx , 68
	xor rax , rbx
	push rax

	mov rax , 146
	mov rbx , 246
	xor rax , rbx
	push rax

	mov rax , 68
	mov rbx , 10
	xor rax , rbx
	push rax

	mov rax , 128
	mov rbx , 229
	xor rax , rbx
	push rax

	mov rax , 200
	mov rbx , 175
	xor rax , rbx
	push rax

	mov rax , 38
	mov rbx , 21
	xor rax , rbx
	push rax

	mov rax , 62
	mov rbx , 82
	xor rax , rbx
	push rax

	mov rax , 154
	mov rbx , 225
	xor rax , rbx
	push rax

	mov rax , 19
	mov rbx , 117
	xor rax , rbx
	push rax

	mov rax , 162
	mov rbx , 214
	xor rax , rbx
	push rax

	mov rax , 190
	mov rbx , 221
	xor rax , rbx
	push rax

	mov rax , 172
	mov rbx , 220
	xor rax , rbx
	push rax
	call	printf@PLT
	mov	eax, 0
	add rsp , 240
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
