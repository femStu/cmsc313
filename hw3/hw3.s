	.file	"hw3.c"
	.text
	.globl	SIZE
	.section	.rodata
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	3
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movl	$1, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$3, -104(%rbp)
	movl	$4, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$6, -92(%rbp)
	movl	$7, -88(%rbp)
	movl	$8, -84(%rbp)
	movl	$9, -80(%rbp)
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$3, -52(%rbp)
	movl	$4, -48(%rbp)
	movl	$5, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$6, -36(%rbp)
	movl	$7, -32(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -136(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movl	$3, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movl	$3, %eax
	cltq
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %rdi
	imulq	%rax, %rdi
	movq	%rdx, %rsi
	imulq	%rcx, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	$3, %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %r8
	movl	$3, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movl	$3, %eax
	cltq
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %rdi
	imulq	%rax, %rdi
	movq	%rdx, %rsi
	imulq	%rcx, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	$3, %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%r8, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printInputArrays
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	printOutputArray
	movl	$0, %eax
	movq	%r12, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L8
.L13:
	movl	$0, -32(%rbp)
	jmp	.L9
.L12:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	movl	$0, -28(%rbp)
	jmp	.L10
.L11:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movl	$3, %eax
	cltq
	imulq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-32(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -28(%rbp)
.L10:
	cmpl	$2, -28(%rbp)
	jle	.L11
	addl	$1, -32(%rbp)
.L9:
	cmpl	$2, -32(%rbp)
	jle	.L12
	addl	$1, -36(%rbp)
.L8:
	cmpl	$2, -36(%rbp)
	jle	.L13
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L15
.L18:
	movl	$0, -28(%rbp)
	jmp	.L16
.L17:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-28(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -28(%rbp)
.L16:
	cmpl	$2, -28(%rbp)
	jle	.L17
	addl	$1, -32(%rbp)
.L15:
	cmpl	$2, -32(%rbp)
	jle	.L18
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	matadd, .-matadd
	.section	.rodata
.LC0:
	.string	"A = "
.LC1:
	.string	"    "
.LC2:
	.string	"%i"
.LC3:
	.string	"          "
.LC4:
	.string	"B = "
.LC5:
	.string	"|"
.LC6:
	.string	"]"
	.text
	.globl	printInputArrays
	.type	printInputArrays, @function
printInputArrays:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L20
.L39:
	cmpl	$1, -28(%rbp)
	jne	.L21
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L22
.L21:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L22:
	cmpl	$1, -28(%rbp)
	jne	.L23
	movl	$124, %edi
	call	putchar@PLT
	jmp	.L24
.L23:
	movl	$91, %edi
	call	putchar@PLT
.L24:
	movl	$0, -24(%rbp)
	jmp	.L25
.L27:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$3, %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jge	.L26
	movl	$32, %edi
	call	putchar@PLT
.L26:
	addl	$1, -24(%rbp)
.L25:
	movl	$3, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L27
	cmpl	$1, -28(%rbp)
	jne	.L28
	movl	$124, %edi
	call	putchar@PLT
	jmp	.L29
.L28:
	movl	$93, %edi
	call	putchar@PLT
.L29:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$1, -28(%rbp)
	jne	.L30
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L31
.L30:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L31:
	cmpl	$1, -28(%rbp)
	jne	.L32
	movl	$124, %edi
	call	putchar@PLT
	jmp	.L33
.L32:
	movl	$91, %edi
	call	putchar@PLT
.L33:
	movl	$0, -20(%rbp)
	jmp	.L34
.L36:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$3, %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L35
	movl	$32, %edi
	call	putchar@PLT
.L35:
	addl	$1, -20(%rbp)
.L34:
	movl	$3, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L36
	cmpl	$1, -28(%rbp)
	jne	.L37
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L38
.L37:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L38:
	addl	$1, -28(%rbp)
.L20:
	movl	$3, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L39
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	printInputArrays, .-printInputArrays
	.section	.rodata
.LC7:
	.string	"A*B+A = "
.LC8:
	.string	"        "
.LC9:
	.string	" %i"
	.text
	.globl	printOutputArray
	.type	printOutputArray, @function
printOutputArray:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$3, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$9, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L41
.L53:
	cmpl	$1, -24(%rbp)
	jne	.L42
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L43
.L42:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L43:
	cmpl	$1, -24(%rbp)
	jne	.L44
	movl	$124, %edi
	call	putchar@PLT
	jmp	.L45
.L44:
	movl	$91, %edi
	call	putchar@PLT
.L45:
	movl	$0, -20(%rbp)
	jmp	.L46
.L50:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	$3, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L47
	leaq	.LC2(%rip), %rax
	jmp	.L48
.L47:
	leaq	.LC9(%rip), %rax
.L48:
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$3, %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L49
	movl	$32, %edi
	call	putchar@PLT
.L49:
	addl	$1, -20(%rbp)
.L46:
	movl	$3, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L50
	cmpl	$1, -24(%rbp)
	jne	.L51
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L52
.L51:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L52:
	addl	$1, -24(%rbp)
.L41:
	movl	$3, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L53
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printOutputArray, .-printOutputArray
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
