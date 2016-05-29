	.cstring
LC0:
	.ascii "%s\11\0"
LC1:
	.ascii "%f\11\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB2:
	.text
LHOTB2:
	.align 4,0x90
	.globl _printList
_printList:
LFB26:
	pushq	%rbp
LCFI0:
	pushq	%rbx
LCFI1:
	subq	$8, %rsp
LCFI2:
	testq	%rdi, %rdi
	je	L2
	movq	%rdi, %rbx
	movq	%rdi, %rbp
	.align 4,0x90
L3:
	leaq	12(%rbp), %rsi
	xorl	%eax, %eax
	leaq	LC0(%rip), %rdi
	call	_printf
	movq	40(%rbp), %rbp
	testq	%rbp, %rbp
	jne	L3
	movl	$10, %edi
	call	_putchar
	.align 4,0x90
L5:
	leaq	LC1(%rip), %rdi
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtss2sd	36(%rbx), %xmm0
	call	_printf
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	L5
L6:
	addq	$8, %rsp
LCFI3:
	movl	$10, %edi
	popq	%rbx
LCFI4:
	popq	%rbp
LCFI5:
	jmp	_putchar
L2:
LCFI6:
	movl	$10, %edi
	call	_putchar
	jmp	L6
LFE26:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE2:
	.text
LHOTE2:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB3:
	.text
LHOTB3:
	.align 4,0x90
	.globl _randChar
_randChar:
LFB27:
	subq	$8, %rsp
LCFI7:
	call	_rand
	movl	$954437177, %edx
	movl	%eax, %ecx
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	%edx
	subl	%eax, %edx
	movl	$79, %eax
	leal	(%rdx,%rdx,8), %edx
	subl	%edx, %ecx
	je	L14
	cmpl	$1, %ecx
	je	L16
	cmpl	$2, %ecx
	je	L17
	cmpl	$3, %ecx
	je	L18
	cmpl	$4, %ecx
	je	L19
	cmpl	$5, %ecx
	je	L20
	cmpl	$6, %ecx
	je	L21
	xorl	%eax, %eax
	cmpl	$7, %ecx
	setne	%al
	leal	76(,%rax,8), %eax
L14:
	addq	$8, %rsp
LCFI8:
	ret
	.align 4,0x90
L16:
LCFI9:
	movl	$66, %eax
	addq	$8, %rsp
LCFI10:
	ret
	.align 4,0x90
L17:
LCFI11:
	movl	$65, %eax
	jmp	L14
	.align 4,0x90
L18:
	movl	$70, %eax
	jmp	L14
	.align 4,0x90
L19:
	movl	$71, %eax
	jmp	L14
	.align 4,0x90
L20:
	movl	$75, %eax
	jmp	L14
	.align 4,0x90
L21:
	movl	$77, %eax
	jmp	L14
LFE27:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE3:
	.text
LHOTE3:
	.cstring
LC4:
	.ascii "%c%d.%d\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB12:
	.text
LHOTB12:
	.align 4,0x90
	.globl _create_random_array
_create_random_array:
LFB24:
	testl	%esi, %esi
	jle	L32
	pushq	%r13
LCFI12:
	xorl	%r13d, %r13d
	pushq	%r12
LCFI13:
	movl	$1717986919, %r12d
	pushq	%rbp
LCFI14:
	movl	%esi, %ebp
	pushq	%rbx
LCFI15:
	leaq	12(%rdi), %rbx
	subq	$8, %rsp
LCFI16:
	.align 4,0x90
L27:
	movl	%r13d, -12(%rbx)
	xorl	%eax, %eax
	addl	$1, %r13d
	call	_randChar
	movb	%al, -8(%rbx)
	call	_rand
	subq	$8, %rsp
LCFI17:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ecx
	addq	$36, %rbx
	movl	%ecx, %eax
	imull	%r12d
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	$9, %edx
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	-48(%rbx), %eax
	movw	%cx, -42(%rbx)
	movl	%ecx, %r9d
	leaq	LC4(%rip), %rcx
	pushq	%rax
LCFI18:
	movsbl	-44(%rbx), %r8d
	xorl	%eax, %eax
	call	___sprintf_chk
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC6(%rip), %xmm0
	subsd	LC7(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, -24(%rbx)
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC6(%rip), %xmm0
	subsd	LC7(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -20(%rbx)
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC8(%rip), %xmm0
	subsd	LC9(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -16(%rbx)
	call	_rand
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	mulss	LC10(%rip), %xmm0
	subss	LC11(%rip), %xmm0
	movss	%xmm0, -40(%rbx)
	cmpl	%r13d, %ebp
	popq	%rax
LCFI19:
	popq	%rdx
LCFI20:
	jne	L27
	addq	$8, %rsp
LCFI21:
	popq	%rbx
LCFI22:
	popq	%rbp
LCFI23:
	popq	%r12
LCFI24:
	popq	%r13
LCFI25:
L32:
	ret
LFE24:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE12:
	.text
LHOTE12:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB13:
	.text
LHOTB13:
	.align 4,0x90
	.globl _createStar
_createStar:
LFB25:
	pushq	%rbx
LCFI26:
	xorl	%eax, %eax
	movq	%rdi, %rbx
	subq	$48, %rsp
LCFI27:
	movl	%esi, (%rsp)
	call	_randChar
	movb	%al, 4(%rsp)
	call	_rand
	movl	$1717986919, %r9d
	xorl	%esi, %esi
	leaq	12(%rsp), %rdi
	movzwl	%ax, %ecx
	subq	$8, %rsp
LCFI28:
	movl	%ecx, %eax
	imull	%r9d
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	$9, %edx
	addl	%eax, %eax
	subl	%eax, %ecx
	movw	%cx, 14(%rsp)
	movl	8(%rsp), %eax
	movl	%ecx, %r9d
	leaq	LC4(%rip), %rcx
	pushq	%rax
LCFI29:
	movsbl	20(%rsp), %r8d
	xorl	%eax, %eax
	call	___sprintf_chk
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC6(%rip), %xmm0
	subsd	LC7(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 40(%rsp)
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC6(%rip), %xmm0
	subsd	LC7(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, 44(%rsp)
	call	_rand
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2ss	%eax, %xmm0
	mulss	LC5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	LC8(%rip), %xmm0
	subsd	LC9(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, 48(%rsp)
	call	_rand
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	16(%rsp), %rax
	mulss	LC5(%rip), %xmm0
	mulss	LC10(%rip), %xmm0
	subss	LC11(%rip), %xmm0
	movq	%rax, (%rbx)
	movss	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rbx)
	movl	48(%rsp), %eax
	movl	%eax, 32(%rbx)
	addq	$64, %rsp
LCFI30:
	movq	%rbx, %rax
	popq	%rbx
LCFI31:
	ret
LFE25:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE13:
	.text
LHOTE13:
	.cstring
LC14:
	.ascii "\12print_stars, n = %d:\12\0"
LC15:
	.ascii "%s \0"
LC16:
	.ascii "%.f \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB17:
	.text
LHOTB17:
	.align 4,0x90
	.globl _print_stars
_print_stars:
LFB28:
	pushq	%r13
LCFI32:
	xorl	%eax, %eax
	pushq	%r12
LCFI33:
	movq	%rdi, %r12
	pushq	%rbp
LCFI34:
	leaq	LC14(%rip), %rdi
	movl	%esi, %ebp
	pushq	%rbx
LCFI35:
	subq	$8, %rsp
LCFI36:
	call	_printf
	testl	%ebp, %ebp
	jle	L36
	leal	-1(%rbp), %eax
	leaq	(%rax,%rax,8), %r13
	leaq	12(%r12), %rbx
	salq	$2, %r13
	leaq	48(%r12,%r13), %rbp
	.align 4,0x90
L37:
	leaq	LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	_printf
	addq	$36, %rbx
	cmpq	%rbx, %rbp
	jne	L37
	leaq	24(%r12), %rbx
	movl	$10, %edi
	call	_putchar
	leaq	60(%r12,%r13), %rbp
	.align 4,0x90
L41:
	movss	(%rbx), %xmm0
	movss	4(%rbx), %xmm2
	mulss	%xmm0, %xmm0
	movss	8(%rbx), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	L48
L39:
	leaq	LC16(%rip), %rdi
	movl	$1, %eax
	addq	$36, %rbx
	cvtss2sd	%xmm0, %xmm0
	call	_printf
	cmpq	%rbx, %rbp
	jne	L41
L42:
	addq	$8, %rsp
LCFI37:
	movl	$10, %edi
	popq	%rbx
LCFI38:
	popq	%rbp
LCFI39:
	popq	%r12
LCFI40:
	popq	%r13
LCFI41:
	jmp	_putchar
L48:
LCFI42:
	movaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L39
L36:
	movl	$10, %edi
	call	_putchar
	jmp	L42
LFE28:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE17:
	.text
LHOTE17:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB19:
	.text
LHOTB19:
	.align 4,0x90
	.globl _starfunc
_starfunc:
LFB29:
	subq	$8, %rsp
LCFI43:
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movzwl	22(%rsp), %ecx
	movzwl	62(%rsp), %eax
	movl	%ecx, %edx
	imull	%eax, %edx
	addl	%ecx, %eax
	cvtsi2sd	%eax, %xmm2
	cvtsi2sd	%edx, %xmm1
	divsd	LC18(%rip), %xmm1
	addsd	%xmm2, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	L53
L50:
	cvtsd2ss	%xmm0, %xmm0
	addq	$8, %rsp
LCFI44:
	ret
L53:
LCFI45:
	movapd	%xmm1, %xmm0
	call	_sqrt
	jmp	L50
LFE29:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE19:
	.text
LHOTE19:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB20:
	.text
LHOTB20:
	.align 4,0x90
	.globl _merge_sort
_merge_sort:
LFB30:
	cmpl	$1, %esi
	je	L91
	movl	%esi, %r8d
	pushq	%r15
LCFI46:
	movq	%rdi, %r15
	movl	%esi, %ecx
	shrl	$31, %r8d
	pushq	%r14
LCFI47:
	addl	%esi, %r8d
	pushq	%r13
LCFI48:
	sarl	%r8d
	pushq	%r12
LCFI49:
	movslq	%r8d, %rax
	pushq	%rbp
LCFI50:
	subl	%r8d, %ecx
	leaq	(%rax,%rax,8), %rdi
	pushq	%rbx
LCFI51:
	leaq	0(,%rdi,4), %rbx
	subq	$40, %rsp
LCFI52:
	movq	%rbx, %rdi
	movl	%ecx, 8(%rsp)
	movl	%r8d, 12(%rsp)
	call	_malloc
	movq	%rax, %r14
	movslq	8(%rsp), %rax
	leaq	(%rax,%rax,8), %rdi
	salq	$2, %rdi
	call	_malloc
	movl	12(%rsp), %r8d
	movq	%rax, %r13
	movl	8(%rsp), %ecx
	testl	%r8d, %r8d
	jle	L60
	leal	-1(%r8), %eax
	xorl	%edx, %edx
	leaq	9(%rax,%rax,8), %rsi
	salq	$2, %rsi
	.align 4,0x90
L59:
	movq	(%r15,%rdx), %rax
	movq	%rax, (%r14,%rdx)
	movq	8(%r15,%rdx), %rax
	movq	%rax, 8(%r14,%rdx)
	movq	16(%r15,%rdx), %rax
	movq	%rax, 16(%r14,%rdx)
	movq	24(%r15,%rdx), %rax
	movq	%rax, 24(%r14,%rdx)
	movl	32(%r15,%rdx), %eax
	movl	%eax, 32(%r14,%rdx)
	addq	$36, %rdx
	cmpq	%rsi, %rdx
	jne	L59
L60:
	testl	%ecx, %ecx
	jle	L93
	leal	-1(%rcx), %eax
	xorl	%edx, %edx
	leaq	9(%rax,%rax,8), %rsi
	movq	%rax, %rbp
	leaq	(%r15,%rbx), %rdi
	salq	$2, %rsi
	.align 4,0x90
L61:
	movq	(%rdi,%rdx), %rax
	movq	%rax, 0(%r13,%rdx)
	movq	8(%rdi,%rdx), %rax
	movq	%rax, 8(%r13,%rdx)
	movq	16(%rdi,%rdx), %rax
	movq	%rax, 16(%r13,%rdx)
	movq	24(%rdi,%rdx), %rax
	movq	%rax, 24(%r13,%rdx)
	movl	32(%rdi,%rdx), %eax
	movl	%eax, 32(%r13,%rdx)
	addq	$36, %rdx
	cmpq	%rsi, %rdx
	jne	L61
	movl	%r8d, %esi
	movq	%r14, %rdi
	movl	%r8d, 12(%rsp)
	movl	%ecx, 8(%rsp)
	call	_merge_sort
	movl	8(%rsp), %ecx
	movq	%r13, %rdi
	movl	%ecx, %esi
	call	_merge_sort
	movl	12(%rsp), %r8d
	testl	%r8d, %r8d
	jle	L77
	movq	%r15, %rbx
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	movl	8(%rsp), %ecx
	xorl	%r10d, %r10d
	jmp	L70
	.align 4,0x90
L96:
	movq	(%r12), %rax
	addl	$1, %r9d
	addl	$1, %r10d
	addq	$36, %rbx
	movq	%rax, -36(%rbx)
	movq	8(%r12), %rax
	movq	%rax, -28(%rbx)
	movq	16(%r12), %rax
	movq	%rax, -20(%rbx)
	movq	24(%r12), %rax
	movq	%rax, -12(%rbx)
	movl	32(%r12), %eax
	movl	%eax, -4(%rbx)
	cmpl	%r8d, %r9d
	jge	L76
L97:
	cmpl	%ecx, %edi
	jge	L76
L70:
	movslq	%r9d, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	(%r14,%rax,4), %r12
	movss	24(%r12), %xmm0
	movss	28(%r12), %xmm2
	mulss	%xmm0, %xmm0
	movss	32(%r12), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	sqrtss	%xmm2, %xmm3
	movaps	%xmm2, %xmm0
	ucomiss	%xmm3, %xmm3
	jp	L94
L63:
	movslq	%edi, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	0(%r13,%rax,4), %rbp
	movss	24(%rbp), %xmm0
	movss	28(%rbp), %xmm2
	mulss	%xmm0, %xmm0
	movss	32(%rbp), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	L95
L65:
	ucomiss	%xmm3, %xmm0
	ja	L96
	movq	0(%rbp), %rax
	addl	$1, %edi
	addl	$1, %r10d
	addq	$36, %rbx
	movq	%rax, -36(%rbx)
	movq	8(%rbp), %rax
	movq	%rax, -28(%rbx)
	movq	16(%rbp), %rax
	movq	%rax, -20(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, -12(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, -4(%rbx)
	cmpl	%r8d, %r9d
	jl	L97
L76:
	cmpl	%r9d, %r8d
	jle	L72
	leal	-1(%r8), %eax
	xorl	%edx, %edx
	subl	%r9d, %eax
	leaq	9(%rax,%rax,8), %rbx
	movslq	%r9d, %rax
	leaq	(%rax,%rax,8), %rax
	salq	$2, %rbx
	leaq	(%r14,%rax,4), %rsi
	movslq	%r10d, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	(%r15,%rax,4), %rax
	.align 4,0x90
L73:
	movq	(%rsi,%rdx), %r11
	movq	%r11, (%rax,%rdx)
	movq	8(%rsi,%rdx), %r11
	movq	%r11, 8(%rax,%rdx)
	movq	16(%rsi,%rdx), %r11
	movq	%r11, 16(%rax,%rdx)
	movq	24(%rsi,%rdx), %r11
	movq	%r11, 24(%rax,%rdx)
	movl	32(%rsi,%rdx), %r11d
	movl	%r11d, 32(%rax,%rdx)
	addq	$36, %rdx
	cmpq	%rdx, %rbx
	jne	L73
	addl	%r8d, %r10d
	subl	%r9d, %r10d
L72:
	leal	-1(%rcx), %ebp
	cmpl	%edi, %ecx
	jle	L75
L62:
	subl	%edi, %ebp
	movslq	%edi, %rdi
	movslq	%r10d, %r10
	leaq	(%rdi,%rdi,8), %rax
	xorl	%edx, %edx
	leaq	9(%rbp,%rbp,8), %r9
	leaq	0(%r13,%rax,4), %rcx
	salq	$2, %r9
	leaq	(%r10,%r10,8), %rax
	leaq	(%r15,%rax,4), %rax
	.align 4,0x90
L74:
	movq	(%rcx,%rdx), %rsi
	movq	%rsi, (%rax,%rdx)
	movq	8(%rcx,%rdx), %rsi
	movq	%rsi, 8(%rax,%rdx)
	movq	16(%rcx,%rdx), %rsi
	movq	%rsi, 16(%rax,%rdx)
	movq	24(%rcx,%rdx), %rsi
	movq	%rsi, 24(%rax,%rdx)
	movl	32(%rcx,%rdx), %esi
	movl	%esi, 32(%rax,%rdx)
	addq	$36, %rdx
	cmpq	%rdx, %r9
	jne	L74
L75:
	movq	%r14, %rdi
	call	_free
	addq	$40, %rsp
LCFI53:
	movq	%r13, %rdi
	popq	%rbx
LCFI54:
	popq	%rbp
LCFI55:
	popq	%r12
LCFI56:
	popq	%r13
LCFI57:
	popq	%r14
LCFI58:
	popq	%r15
LCFI59:
	jmp	_free
	.align 4,0x90
L91:
	ret
L95:
LCFI60:
	movaps	%xmm1, %xmm0
	movss	%xmm3, 28(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%edi, 12(%rsp)
	movl	%r9d, 8(%rsp)
	call	_sqrtf
	movss	28(%rsp), %xmm3
	movl	24(%rsp), %r8d
	movl	20(%rsp), %r10d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %edi
	movl	8(%rsp), %r9d
	jmp	L65
L94:
	movl	%r8d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%edi, 12(%rsp)
	movl	%r9d, 8(%rsp)
	call	_sqrtf
	movl	24(%rsp), %r8d
	movaps	%xmm0, %xmm3
	movl	20(%rsp), %r10d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %edi
	movl	8(%rsp), %r9d
	jmp	L63
L93:
	movl	%r8d, %esi
	movq	%r14, %rdi
	movl	%r8d, 12(%rsp)
	movl	%ecx, 8(%rsp)
	call	_merge_sort
	movl	8(%rsp), %ecx
	movq	%r13, %rdi
	movl	%ecx, %esi
	call	_merge_sort
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	8(%rsp), %ecx
	movl	12(%rsp), %r8d
	jmp	L76
L77:
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	jmp	L62
LFE30:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.text
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB21:
	.text
LHOTB21:
	.align 4,0x90
	.globl _distance
_distance:
LFB31:
	subq	$8, %rsp
LCFI61:
	movss	40(%rsp), %xmm0
	movss	44(%rsp), %xmm2
	mulss	%xmm0, %xmm0
	movss	48(%rsp), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	L102
L99:
	addq	$8, %rsp
LCFI62:
	ret
L102:
LCFI63:
	movaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L99
LFE31:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE21:
	.text
LHOTE21:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB23:
	.text
LHOTB23:
	.align 4,0x90
	.globl _padStar
_padStar:
LFB32:
	pushq	%rbx
LCFI64:
	xorl	%eax, %eax
	movq	%rdi, %rbx
	xorl	%r9d, %r9d
	subq	$48, %rsp
LCFI65:
	movl	$79, %r8d
	movl	$9, %edx
	movl	%esi, (%rsp)
	leaq	12(%rsp), %rdi
	subq	$8, %rsp
LCFI66:
	movw	%ax, 14(%rsp)
	leaq	LC4(%rip), %rcx
	xorl	%eax, %eax
	movb	$79, 12(%rsp)
	pushq	%rsi
LCFI67:
	xorl	%esi, %esi
	call	___sprintf_chk
	movq	16(%rsp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 24(%rsp)
	movss	%xmm0, 40(%rsp)
	movss	%xmm0, 44(%rsp)
	movl	$0, 32(%rbx)
	movq	%rax, (%rbx)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rbx)
	addq	$64, %rsp
LCFI68:
	movq	%rbx, %rax
	popq	%rbx
LCFI69:
	ret
LFE32:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE23:
	.text
LHOTE23:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB24:
	.text
LHOTB24:
	.align 4,0x90
	.globl _fill_matrix
_fill_matrix:
LFB33:
	testl	%edx, %edx
	jle	L118
	pushq	%r15
LCFI70:
	leal	-1(%rdx), %eax
	pushq	%r14
LCFI71:
	leaq	24(%rdi), %r15
	pushq	%r13
LCFI72:
	leaq	(%rax,%rax,8), %rdx
	movq	%rsi, %r13
	pushq	%r12
LCFI73:
	leaq	60(%rdi,%rdx,4), %rsi
	pushq	%rbp
LCFI74:
	leaq	4(,%rax,4), %r14
	movq	%r15, %rbp
	pushq	%rbx
LCFI75:
	subq	$40, %rsp
LCFI76:
	movsd	LC18(%rip), %xmm3
	.align 4,0x90
L113:
	movq	%r15, %rbx
	xorl	%r12d, %r12d
	.align 4,0x90
L112:
	movss	0(%rbp), %xmm0
	movss	4(%rbp), %xmm2
	subss	(%rbx), %xmm0
	subss	4(%rbx), %xmm2
	movss	8(%rbp), %xmm1
	mulss	%xmm0, %xmm0
	subss	8(%rbx), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	sqrtss	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm2
	jp	L119
L108:
	movzwl	-18(%rbp), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movzwl	-18(%rbx), %eax
	movl	%ecx, %edx
	imull	%eax, %edx
	addl	%ecx, %eax
	cvtsi2sd	%eax, %xmm1
	cvtsi2sd	%edx, %xmm0
	divsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	L120
L110:
	movq	0(%r13), %rax
	cvtsd2ss	%xmm1, %xmm1
	addss	%xmm1, %xmm2
	addq	$36, %rbx
	movss	%xmm2, (%rax,%r12)
	addq	$4, %r12
	cmpq	%r12, %r14
	jne	L112
	addq	$36, %rbp
	addq	$8, %r13
	cmpq	%rsi, %rbp
	jne	L113
	addq	$40, %rsp
LCFI77:
	popq	%rbx
LCFI78:
	popq	%rbp
LCFI79:
	popq	%r12
LCFI80:
	popq	%r13
LCFI81:
	popq	%r14
LCFI82:
	popq	%r15
LCFI83:
	ret
L120:
LCFI84:
	movsd	%xmm3, 24(%rsp)
	movss	%xmm2, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	_sqrt
	movsd	24(%rsp), %xmm3
	movapd	%xmm0, %xmm1
	movss	16(%rsp), %xmm2
	movq	8(%rsp), %rsi
	jmp	L110
L119:
	movsd	%xmm3, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	_sqrtf
	movsd	16(%rsp), %xmm3
	movaps	%xmm0, %xmm2
	movq	8(%rsp), %rsi
	jmp	L108
L118:
LCFI85:
	ret
LFE33:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE24:
	.text
LHOTE24:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB25:
	.text
LHOTB25:
	.align 4,0x90
	.globl _star_distance
_star_distance:
LFB34:
	subq	$8, %rsp
LCFI86:
	movss	40(%rsp), %xmm0
	movss	44(%rsp), %xmm2
	subss	80(%rsp), %xmm0
	subss	84(%rsp), %xmm2
	movss	48(%rsp), %xmm1
	mulss	%xmm0, %xmm0
	subss	88(%rsp), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	L125
L122:
	addq	$8, %rsp
LCFI87:
	ret
L125:
LCFI88:
	movaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L122
LFE34:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE25:
	.text
LHOTE25:
	.cstring
LC26:
	.ascii "\12print_matrix, n = %d:\12\0"
LC27:
	.ascii "%.2f \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB28:
	.text
LHOTB28:
	.align 4,0x90
	.globl _print_matrix
_print_matrix:
LFB35:
	pushq	%r13
LCFI89:
	xorl	%eax, %eax
	pushq	%r12
LCFI90:
	pushq	%rbp
LCFI91:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI92:
	leaq	LC26(%rip), %rdi
	movl	%esi, %ebx
	subq	$8, %rsp
LCFI93:
	call	_printf
	testl	%ebx, %ebx
	jle	L126
	leal	-1(%rbx), %r12d
	addq	$1, %r12
	leaq	0(%rbp,%r12,8), %r13
	salq	$2, %r12
	.align 4,0x90
L130:
	xorl	%ebx, %ebx
	.align 4,0x90
L129:
	movq	0(%rbp), %rax
	pxor	%xmm0, %xmm0
	leaq	LC27(%rip), %rdi
	cvtss2sd	(%rax,%rbx), %xmm0
	movl	$1, %eax
	addq	$4, %rbx
	call	_printf
	cmpq	%rbx, %r12
	jne	L129
	movl	$10, %edi
	addq	$8, %rbp
	call	_putchar
	cmpq	%rbp, %r13
	jne	L130
L126:
	addq	$8, %rsp
LCFI94:
	popq	%rbx
LCFI95:
	popq	%rbp
LCFI96:
	popq	%r12
LCFI97:
	popq	%r13
LCFI98:
	ret
LFE35:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE28:
	.text
LHOTE28:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB31:
	.text
LHOTB31:
	.align 4,0x90
	.globl _generate_histogram
_generate_histogram:
LFB36:
	pushq	%r15
LCFI99:
	pushq	%r14
LCFI100:
	movl	%edx, %r14d
	pushq	%r13
LCFI101:
	movq	%rsi, %r13
	pushq	%r12
LCFI102:
	movq	%rdi, %r12
	pushq	%rbp
LCFI103:
	leal	-2(%rdx), %ebp
	movl	%ebp, %eax
	pushq	%rbx
LCFI104:
	movl	%ecx, %ebx
	imull	%ebp, %eax
	subq	$24, %rsp
LCFI105:
	movslq	%eax, %rdi
	movl	%eax, 4(%rsp)
	salq	$2, %rdi
	call	_malloc
	cmpl	$2, %r14d
	jle	L156
	movl	$1, %edx
	movslq	%ebp, %rbp
	pxor	%xmm3, %xmm3
	movss	LC29(%rip), %xmm2
	leaq	0(,%rbp,4), %r15
	subl	%r14d, %edx
	leaq	8(%r12), %rsi
	movslq	%edx, %rdx
	addq	%rdx, %rbp
	leal	-3(%r14), %edx
	leaq	16(%r12,%rdx,8), %r14
	leaq	(%rax,%rbp,4), %r11
	leaq	1(%rdx), %r12
	.align 4,0x90
L141:
	movq	(%rsi), %r8
	xorl	%edi, %edi
	movq	8(%rsi), %r10
	movq	-8(%rsi), %r9
	.align 4,0x90
L140:
	movss	4(%r8,%rdi,4), %xmm1
	movss	(%r8,%rdi,4), %xmm0
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ebp
	movss	8(%r8,%rdi,4), %xmm0
	subss	%xmm1, %xmm0
	movl	%ebp, %edx
	sarl	$31, %edx
	xorl	%edx, %ebp
	subl	%edx, %ebp
	movl	%ebp, %edx
	cvttss2si	%xmm0, %ebp
	movss	4(%r10,%rdi,4), %xmm0
	subss	%xmm1, %xmm0
	movl	%ebp, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %ebp
	subl	%ecx, %ebp
	addl	%edx, %ebp
	cvttss2si	%xmm0, %edx
	movss	4(%r9,%rdi,4), %xmm0
	subss	%xmm1, %xmm0
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	leal	0(%rbp,%rdx), %ecx
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	movl	%edx, %ebp
	sarl	$31, %ebp
	xorl	%ebp, %edx
	subl	%ebp, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	cvtsi2ss	%edx, %xmm0
	movaps	%xmm0, %xmm6
	movss	%xmm0, 4(%r11,%rdi,4)
	maxss	%xmm3, %xmm0
	addq	$1, %rdi
	minss	%xmm2, %xmm6
	cmpq	%rdi, %r12
	movaps	%xmm0, %xmm3
	movaps	%xmm6, %xmm2
	jne	L140
	addq	$8, %rsi
	addq	%r15, %r11
	cmpq	%r14, %rsi
	jne	L141
	movaps	%xmm0, %xmm4
	subss	%xmm6, %xmm4
L136:
	movl	4(%rsp), %edx
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	divss	%xmm0, %xmm4
	testl	%edx, %edx
	je	L143
	movl	4(%rsp), %esi
	movq	%rax, %rdi
	leal	-1(%rsi), %edx
	leaq	4(%rax,%rdx,4), %r8
	.align 4,0x90
L148:
	testl	%ebx, %ebx
	jle	L149
	movss	(%rdi), %xmm5
	movl	$1, %edx
	xorl	%ecx, %ecx
	.align 4,0x90
L147:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movl	%edx, %esi
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm5
	jb	L145
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	ucomiss	%xmm5, %xmm0
	jb	L145
	addl	$1, 0(%r13,%rcx,4)
L145:
	addq	$1, %rcx
	addl	$1, %edx
	cmpl	%esi, %ebx
	jg	L147
L149:
	addq	$4, %rdi
	cmpq	%r8, %rdi
	jne	L148
L143:
	movq	%rax, %rdi
	movss	%xmm4, 12(%rsp)
	movss	%xmm3, 8(%rsp)
	movss	%xmm2, 4(%rsp)
	call	_free
	movss	8(%rsp), %xmm3
	movss	12(%rsp), %xmm4
	movss	4(%rsp), %xmm2
	movd	%xmm3, %ecx
	addq	$24, %rsp
LCFI106:
	movd	%xmm4, %esi
	movl	%ecx, %edx
	movd	%xmm2, %eax
	salq	$32, %rsi
	salq	$32, %rax
	orq	%rsi, %rdx
	orq	%rbx, %rax
	movq	%rdx, %xmm0
	popq	%rbx
LCFI107:
	popq	%rbp
LCFI108:
	popq	%r12
LCFI109:
	popq	%r13
LCFI110:
	popq	%r14
LCFI111:
	popq	%r15
LCFI112:
	ret
L156:
LCFI113:
	movss	LC30(%rip), %xmm4
	pxor	%xmm3, %xmm3
	movss	LC29(%rip), %xmm2
	jmp	L136
LFE36:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE31:
	.text
LHOTE31:
	.cstring
LC32:
	.ascii "\12display_histogram:\0"
LC33:
	.ascii "%11.3e \0"
LC34:
	.ascii "%11.3e\12\0"
LC35:
	.ascii "%11d \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB36:
	.text
LHOTB36:
	.align 4,0x90
	.globl _display_histogram
_display_histogram:
LFB37:
	pushq	%r12
LCFI114:
	movq	%xmm0, %rax
	movl	%esi, %r12d
	pushq	%rbp
LCFI115:
	shrq	$32, %rax
	movq	%rsi, %rbp
	pushq	%rbx
LCFI116:
	movq	%rdi, %rbx
	leaq	LC32(%rip), %rdi
	subq	$16, %rsp
LCFI117:
	movss	%xmm0, 4(%rsp)
	movl	%eax, 8(%rsp)
	call	_puts
	testl	%ebp, %ebp
	jle	L158
	movss	8(%rsp), %xmm0
	mulss	LC22(%rip), %xmm0
	movss	4(%rsp), %xmm4
	ucomiss	%xmm0, %xmm4
	jbe	L158
	shrq	$32, %rbp
	movl	%ebp, 12(%rsp)
	xorl	%ebp, %ebp
	jmp	L161
	.align 4,0x90
L171:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ebp, %xmm0
	mulss	8(%rsp), %xmm0
	movss	4(%rsp), %xmm3
	ucomiss	%xmm0, %xmm3
	jbe	L170
L161:
	addss	12(%rsp), %xmm0
	leaq	LC33(%rip), %rdi
	movl	$1, %eax
	addl	$1, %ebp
	cvtss2sd	%xmm0, %xmm0
	call	_printf
	cmpl	%ebp, %r12d
	jne	L171
	leaq	LC34(%rip), %rdi
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtss2sd	4(%rsp), %xmm0
	call	_printf
L162:
	leal	-1(%rbp), %eax
	leaq	4(%rbx,%rax,4), %rbp
	.align 4,0x90
L165:
	movl	(%rbx), %esi
	leaq	LC35(%rip), %rdi
	xorl	%eax, %eax
	addq	$4, %rbx
	call	_printf
	cmpq	%rbp, %rbx
	jne	L165
L164:
	addq	$16, %rsp
LCFI118:
	movl	$10, %edi
	popq	%rbx
LCFI119:
	popq	%rbp
LCFI120:
	popq	%r12
LCFI121:
	jmp	_putchar
	.align 4,0x90
L170:
LCFI122:
	leaq	LC34(%rip), %rdi
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	call	_printf
	testl	%ebp, %ebp
	jg	L162
	jmp	L164
	.align 4,0x90
L158:
	leaq	LC34(%rip), %rdi
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtss2sd	4(%rsp), %xmm0
	call	_printf
	jmp	L164
LFE37:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE36:
	.text
LHOTE36:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB37:
	.text
LHOTB37:
	.align 4,0x90
	.globl _fileIsEmpty
_fileIsEmpty:
LFB38:
	pushq	%rbx
LCFI123:
	xorl	%esi, %esi
	movq	%rdi, %rbx
	movl	$2, %edx
	call	_fseek
	movq	%rbx, %rdi
	call	_ftell
	popq	%rbx
LCFI124:
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	ret
LFE38:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE37:
	.text
LHOTE37:
	.cstring
LC38:
	.ascii "a\0"
LC39:
	.ascii "timings.csv\0"
	.align 3
LC40:
	.ascii "Stars, Create, Sort , Allocate , Fill, Histogram\12\0"
LC41:
	.ascii "%d\0"
LC42:
	.ascii ",%f\0"
LC43:
	.ascii "Saved to %s\12\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB44:
	.text
LHOTB44:
	.align 4,0x90
	.globl _saveToFile
_saveToFile:
LFB39:
	pushq	%r12
LCFI125:
	movl	%edi, %r12d
	pushq	%rbp
LCFI126:
	leaq	LC39(%rip), %rdi
	pushq	%rbx
LCFI127:
	movq	%rsi, %rbx
	leaq	LC38(%rip), %rsi
	call	_fopen
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_fileIsEmpty
	testl	%eax, %eax
	jne	L182
L175:
	movl	%r12d, %edx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	leaq	LC41(%rip), %rsi
	call	_fprintf
	leaq	40(%rbx), %r12
L176:
	movsd	(%rbx), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	addq	$8, %rbx
	leaq	LC42(%rip), %rsi
	call	_fprintf
	cmpq	%r12, %rbx
	jne	L176
	movq	%rbp, %rsi
	movl	$10, %edi
	call	_fputc
	leaq	LC43(%rip), %rdi
	xorl	%eax, %eax
	leaq	LC39(%rip), %rsi
	call	_printf
	popq	%rbx
LCFI128:
	movq	%rbp, %rdi
	popq	%rbp
LCFI129:
	popq	%r12
LCFI130:
	jmp	_fclose
	.align 4,0x90
L182:
LCFI131:
	movq	%rbp, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	LC40(%rip), %rdi
	call	_fwrite
	jmp	L175
LFE39:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE44:
	.text
LHOTE44:
	.literal4
	.align 2
LC5:
	.long	805306368
	.literal8
	.align 3
LC6:
	.long	0
	.long	1090021888
	.align 3
LC7:
	.long	0
	.long	1088973312
	.align 3
LC8:
	.long	0
	.long	1084715008
	.align 3
LC9:
	.long	0
	.long	1083666432
	.literal4
	.align 2
LC10:
	.long	1106247680
	.align 2
LC11:
	.long	1092616192
	.literal8
	.align 3
LC18:
	.long	858993459
	.long	1071854387
	.literal4
	.align 2
LC22:
	.long	0
	.align 2
LC29:
	.long	1259902592
	.align 2
LC30:
	.long	3407386240
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB26-.
	.set L$set$2,LFE26-LFB26
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB26
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$10,LEFDE3-LASFDE3
	.long L$set$10
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB27-.
	.set L$set$11,LFE27-LFB27
	.quad L$set$11
	.byte	0
	.byte	0x4
	.set L$set$12,LCFI7-LFB27
	.long L$set$12
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$14,LCFI9-LCFI8
	.long L$set$14
	.byte	0xb
	.byte	0x4
	.set L$set$15,LCFI10-LCFI9
	.long L$set$15
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$16,LCFI11-LCFI10
	.long L$set$16
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$17,LEFDE5-LASFDE5
	.long L$set$17
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB24-.
	.set L$set$18,LFE24-LFB24
	.quad L$set$18
	.byte	0
	.byte	0x4
	.set L$set$19,LCFI12-LFB24
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$20,LCFI13-LCFI12
	.long L$set$20
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$21,LCFI14-LCFI13
	.long L$set$21
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$22,LCFI15-LCFI14
	.long L$set$22
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$23,LCFI16-LCFI15
	.long L$set$23
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$24,LCFI17-LCFI16
	.long L$set$24
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$25,LCFI18-LCFI17
	.long L$set$25
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$26,LCFI19-LCFI18
	.long L$set$26
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$27,LCFI20-LCFI19
	.long L$set$27
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$28,LCFI21-LCFI20
	.long L$set$28
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$29,LCFI22-LCFI21
	.long L$set$29
	.byte	0xc3
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$30,LCFI23-LCFI22
	.long L$set$30
	.byte	0xc6
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$31,LCFI24-LCFI23
	.long L$set$31
	.byte	0xcc
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$32,LCFI25-LCFI24
	.long L$set$32
	.byte	0xcd
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$33,LEFDE7-LASFDE7
	.long L$set$33
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB25-.
	.set L$set$34,LFE25-LFB25
	.quad L$set$34
	.byte	0
	.byte	0x4
	.set L$set$35,LCFI26-LFB25
	.long L$set$35
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI27-LCFI26
	.long L$set$36
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$37,LCFI28-LCFI27
	.long L$set$37
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$38,LCFI29-LCFI28
	.long L$set$38
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$39,LCFI30-LCFI29
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$40,LCFI31-LCFI30
	.long L$set$40
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$41,LEFDE9-LASFDE9
	.long L$set$41
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB28-.
	.set L$set$42,LFE28-LFB28
	.quad L$set$42
	.byte	0
	.byte	0x4
	.set L$set$43,LCFI32-LFB28
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI33-LCFI32
	.long L$set$44
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$45,LCFI34-LCFI33
	.long L$set$45
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$46,LCFI35-LCFI34
	.long L$set$46
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$47,LCFI36-LCFI35
	.long L$set$47
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$48,LCFI37-LCFI36
	.long L$set$48
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$49,LCFI38-LCFI37
	.long L$set$49
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$50,LCFI39-LCFI38
	.long L$set$50
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$51,LCFI40-LCFI39
	.long L$set$51
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$52,LCFI41-LCFI40
	.long L$set$52
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$53,LCFI42-LCFI41
	.long L$set$53
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$54,LEFDE11-LASFDE11
	.long L$set$54
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB29-.
	.set L$set$55,LFE29-LFB29
	.quad L$set$55
	.byte	0
	.byte	0x4
	.set L$set$56,LCFI43-LFB29
	.long L$set$56
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$57,LCFI44-LCFI43
	.long L$set$57
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$58,LCFI45-LCFI44
	.long L$set$58
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$59,LEFDE13-LASFDE13
	.long L$set$59
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB30-.
	.set L$set$60,LFE30-LFB30
	.quad L$set$60
	.byte	0
	.byte	0x4
	.set L$set$61,LCFI46-LFB30
	.long L$set$61
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$62,LCFI47-LCFI46
	.long L$set$62
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$63,LCFI48-LCFI47
	.long L$set$63
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$64,LCFI49-LCFI48
	.long L$set$64
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$65,LCFI50-LCFI49
	.long L$set$65
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$66,LCFI51-LCFI50
	.long L$set$66
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$67,LCFI52-LCFI51
	.long L$set$67
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$68,LCFI53-LCFI52
	.long L$set$68
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$69,LCFI54-LCFI53
	.long L$set$69
	.byte	0xc3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$70,LCFI55-LCFI54
	.long L$set$70
	.byte	0xc6
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$71,LCFI56-LCFI55
	.long L$set$71
	.byte	0xcc
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$72,LCFI57-LCFI56
	.long L$set$72
	.byte	0xcd
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$73,LCFI58-LCFI57
	.long L$set$73
	.byte	0xce
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$74,LCFI59-LCFI58
	.long L$set$74
	.byte	0xcf
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$75,LCFI60-LCFI59
	.long L$set$75
	.byte	0xe
	.byte	0x60
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$76,LEFDE15-LASFDE15
	.long L$set$76
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB31-.
	.set L$set$77,LFE31-LFB31
	.quad L$set$77
	.byte	0
	.byte	0x4
	.set L$set$78,LCFI61-LFB31
	.long L$set$78
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$79,LCFI62-LCFI61
	.long L$set$79
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$80,LCFI63-LCFI62
	.long L$set$80
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$81,LEFDE17-LASFDE17
	.long L$set$81
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB32-.
	.set L$set$82,LFE32-LFB32
	.quad L$set$82
	.byte	0
	.byte	0x4
	.set L$set$83,LCFI64-LFB32
	.long L$set$83
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$84,LCFI65-LCFI64
	.long L$set$84
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$85,LCFI66-LCFI65
	.long L$set$85
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$86,LCFI67-LCFI66
	.long L$set$86
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$87,LCFI68-LCFI67
	.long L$set$87
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$88,LCFI69-LCFI68
	.long L$set$88
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$89,LEFDE19-LASFDE19
	.long L$set$89
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB33-.
	.set L$set$90,LFE33-LFB33
	.quad L$set$90
	.byte	0
	.byte	0x4
	.set L$set$91,LCFI70-LFB33
	.long L$set$91
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$92,LCFI71-LCFI70
	.long L$set$92
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$93,LCFI72-LCFI71
	.long L$set$93
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$94,LCFI73-LCFI72
	.long L$set$94
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$95,LCFI74-LCFI73
	.long L$set$95
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$96,LCFI75-LCFI74
	.long L$set$96
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$97,LCFI76-LCFI75
	.long L$set$97
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$98,LCFI77-LCFI76
	.long L$set$98
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$99,LCFI78-LCFI77
	.long L$set$99
	.byte	0xc3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$100,LCFI79-LCFI78
	.long L$set$100
	.byte	0xc6
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$101,LCFI80-LCFI79
	.long L$set$101
	.byte	0xcc
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$102,LCFI81-LCFI80
	.long L$set$102
	.byte	0xcd
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$103,LCFI82-LCFI81
	.long L$set$103
	.byte	0xce
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$104,LCFI83-LCFI82
	.long L$set$104
	.byte	0xcf
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$105,LCFI84-LCFI83
	.long L$set$105
	.byte	0xb
	.byte	0x4
	.set L$set$106,LCFI85-LCFI84
	.long L$set$106
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$107,LEFDE21-LASFDE21
	.long L$set$107
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB34-.
	.set L$set$108,LFE34-LFB34
	.quad L$set$108
	.byte	0
	.byte	0x4
	.set L$set$109,LCFI86-LFB34
	.long L$set$109
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$110,LCFI87-LCFI86
	.long L$set$110
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$111,LCFI88-LCFI87
	.long L$set$111
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$112,LEFDE23-LASFDE23
	.long L$set$112
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB35-.
	.set L$set$113,LFE35-LFB35
	.quad L$set$113
	.byte	0
	.byte	0x4
	.set L$set$114,LCFI89-LFB35
	.long L$set$114
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$115,LCFI90-LCFI89
	.long L$set$115
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$116,LCFI91-LCFI90
	.long L$set$116
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$117,LCFI92-LCFI91
	.long L$set$117
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$118,LCFI93-LCFI92
	.long L$set$118
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$119,LCFI94-LCFI93
	.long L$set$119
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$120,LCFI95-LCFI94
	.long L$set$120
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$121,LCFI96-LCFI95
	.long L$set$121
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$122,LCFI97-LCFI96
	.long L$set$122
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$123,LCFI98-LCFI97
	.long L$set$123
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$124,LEFDE25-LASFDE25
	.long L$set$124
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB36-.
	.set L$set$125,LFE36-LFB36
	.quad L$set$125
	.byte	0
	.byte	0x4
	.set L$set$126,LCFI99-LFB36
	.long L$set$126
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$127,LCFI100-LCFI99
	.long L$set$127
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$128,LCFI101-LCFI100
	.long L$set$128
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$129,LCFI102-LCFI101
	.long L$set$129
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$130,LCFI103-LCFI102
	.long L$set$130
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$131,LCFI104-LCFI103
	.long L$set$131
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$132,LCFI105-LCFI104
	.long L$set$132
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$133,LCFI106-LCFI105
	.long L$set$133
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$134,LCFI107-LCFI106
	.long L$set$134
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$135,LCFI108-LCFI107
	.long L$set$135
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$136,LCFI109-LCFI108
	.long L$set$136
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$137,LCFI110-LCFI109
	.long L$set$137
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$138,LCFI111-LCFI110
	.long L$set$138
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$139,LCFI112-LCFI111
	.long L$set$139
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$140,LCFI113-LCFI112
	.long L$set$140
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$141,LEFDE27-LASFDE27
	.long L$set$141
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB37-.
	.set L$set$142,LFE37-LFB37
	.quad L$set$142
	.byte	0
	.byte	0x4
	.set L$set$143,LCFI114-LFB37
	.long L$set$143
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$144,LCFI115-LCFI114
	.long L$set$144
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$145,LCFI116-LCFI115
	.long L$set$145
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$146,LCFI117-LCFI116
	.long L$set$146
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$147,LCFI118-LCFI117
	.long L$set$147
	.byte	0xa
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$148,LCFI119-LCFI118
	.long L$set$148
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$149,LCFI120-LCFI119
	.long L$set$149
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$150,LCFI121-LCFI120
	.long L$set$150
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$151,LCFI122-LCFI121
	.long L$set$151
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$152,LEFDE29-LASFDE29
	.long L$set$152
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB38-.
	.set L$set$153,LFE38-LFB38
	.quad L$set$153
	.byte	0
	.byte	0x4
	.set L$set$154,LCFI123-LFB38
	.long L$set$154
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$155,LCFI124-LCFI123
	.long L$set$155
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$156,LEFDE31-LASFDE31
	.long L$set$156
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB39-.
	.set L$set$157,LFE39-LFB39
	.quad L$set$157
	.byte	0
	.byte	0x4
	.set L$set$158,LCFI125-LFB39
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$159,LCFI126-LCFI125
	.long L$set$159
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$160,LCFI127-LCFI126
	.long L$set$160
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$161,LCFI128-LCFI127
	.long L$set$161
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$162,LCFI129-LCFI128
	.long L$set$162
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$163,LCFI130-LCFI129
	.long L$set$163
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$164,LCFI131-LCFI130
	.long L$set$164
	.byte	0xb
	.align 3
LEFDE31:
	.subsections_via_symbols
