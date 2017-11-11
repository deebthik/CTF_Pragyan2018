	.file	"final.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"\n To be decided "
	.text
	.globl	flag
	.type	flag, @function
flag:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, OFFSET FLAT:.LC0
	call	puts
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	flag, .-flag
	.section	.rodata
.LC1:
	.string	"Enter your name :- "
.LC2:
	.string	"%s"
.LC3:
	.string	"Enter your age :- "
.LC4:
	.string	"%d"
.LC5:
	.string	"\n You don't seem to be "
.LC6:
	.string	"%d "
.LC7:
	.string	"years old !!"
.LC8:
	.string	"\n\nEnter your age again :- "
	.align 8
.LC9:
	.string	"\nWelcome, %s, we have been looking for you for %s whole years !!\n\n"
	.text
	.globl	get_info
	.type	get_info, @function
get_info:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 36
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-20], 0
	mov	DWORD PTR [rbp-16], 0
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	lea	rax, [rbp-36]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 0
	call	__isoc99_scanf
	mov	edi, OFFSET FLAT:.LC3
	mov	eax, 0
	call	printf
	lea	rax, [rbp-12]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 0
	call	__isoc99_scanf
	mov	eax, DWORD PTR [rbp-16]
	shr	eax, 30
	add	eax, 1
	mov	DWORD PTR [rbp-20], 0
	mov	DWORD PTR [rbp-16], eax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 0
	call	printf
	jmp	.L3
.L4:
	mov	eax, DWORD PTR [rbp-20]
	cdqe
	mov	eax, DWORD PTR [rbp-12+rax*4]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC6
	mov	eax, 0
	call	printf
	add	DWORD PTR [rbp-20], 1
.L3:
	mov	eax, DWORD PTR [rbp-16]
	cmp	DWORD PTR [rbp-20], eax
	jl	.L4
	mov	edi, OFFSET FLAT:.LC7
	mov	eax, 0
	call	printf
	mov	edi, OFFSET FLAT:.LC8
	mov	eax, 0
	call	printf
	lea	rax, [rbp-12]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 0
	call	__isoc99_scanf
	lea	rdx, [rbp-12]
	lea	rax, [rbp-36]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC9
	mov	eax, 0
	call	printf
	mov	rax, QWORD PTR [rbp-8]
	xor	rax, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	get_info, .-get_info
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, 0
	call	get_info
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
