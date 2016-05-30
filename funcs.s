	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _randChar
_randChar:
LFB4607:
	subq	$8, %rsp
LCFI0:
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
	je	L12
	cmpl	$1, %ecx
	je	L4
	cmpl	$2, %ecx
	je	L5
	cmpl	$3, %ecx
	je	L6
	cmpl	$4, %ecx
	je	L7
	cmpl	$5, %ecx
	je	L8
	cmpl	$6, %ecx
	je	L9
	xorl	%eax, %eax
	cmpl	$7, %ecx
	setne	%al
	leal	76(,%rax,8), %eax
L12:
	addq	$8, %rsp
LCFI1:
	ret
	.align 4,0x90
L4:
LCFI2:
	movl	$66, %eax
	addq	$8, %rsp
LCFI3:
	ret
	.align 4,0x90
L5:
LCFI4:
	movl	$65, %eax
	jmp	L12
	.align 4,0x90
L6:
	movl	$70, %eax
	jmp	L12
	.align 4,0x90
L7:
	movl	$71, %eax
	jmp	L12
	.align 4,0x90
L8:
	movl	$75, %eax
	jmp	L12
	.align 4,0x90
L9:
	movl	$77, %eax
	jmp	L12
LFE4607:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE0:
	.text
LHOTE0:
	.cstring
LC1:
	.ascii "%c%d.%d\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB9:
	.text
LHOTB9:
	.align 4,0x90
	.globl _create_random_array
_create_random_array:
LFB4605:
	testl	%esi, %esi
	jle	L23
	pushq	%r13
LCFI5:
	xorl	%r13d, %r13d
	pushq	%r12
LCFI6:
	movl	$1717986919, %r12d
	pushq	%rbp
LCFI7:
	movl	%esi, %ebp
	pushq	%rbx
LCFI8:
	leaq	12(%rdi), %rbx
	subq	$8, %rsp
LCFI9:
	.align 4,0x90
L17:
	movl	%r13d, -12(%rbx)
	xorl	%eax, %eax
	addl	$1, %r13d
	call	_randChar
	movb	%al, -8(%rbx)
	call	_rand
	subq	$8, %rsp
LCFI10:
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
	leaq	LC1(%rip), %rcx
	pushq	%rax
LCFI11:
	movsbl	-44(%rbx), %r8d
	xorl	%eax, %eax
	call	___sprintf_chk
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC3(%rip), %xmm0, %xmm0
	vsubsd	LC4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, -24(%rbx)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC3(%rip), %xmm0, %xmm0
	vsubsd	LC4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -20(%rbx)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC5(%rip), %xmm0, %xmm0
	vsubsd	LC6(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm3, %xmm3
	vmovss	%xmm3, -16(%rbx)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vmulss	LC7(%rip), %xmm0, %xmm0
	vsubss	LC8(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -40(%rbx)
	cmpl	%r13d, %ebp
	popq	%rax
LCFI12:
	popq	%rdx
LCFI13:
	jne	L17
	addq	$8, %rsp
LCFI14:
	popq	%rbx
LCFI15:
	popq	%rbp
LCFI16:
	popq	%r12
LCFI17:
	popq	%r13
LCFI18:
L23:
	ret
LFE4605:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE9:
	.text
LHOTE9:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB10:
	.text
LHOTB10:
	.align 4,0x90
	.globl _createStar
_createStar:
LFB4606:
	pushq	%rbx
LCFI19:
	xorl	%eax, %eax
	movq	%rdi, %rbx
	subq	$48, %rsp
LCFI20:
	movl	%esi, (%rsp)
	call	_randChar
	movb	%al, 4(%rsp)
	call	_rand
	movl	$1717986919, %r9d
	xorl	%esi, %esi
	leaq	12(%rsp), %rdi
	movzwl	%ax, %ecx
	subq	$8, %rsp
LCFI21:
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
	leaq	LC1(%rip), %rcx
	pushq	%rax
LCFI22:
	movsbl	20(%rsp), %r8d
	xorl	%eax, %eax
	call	___sprintf_chk
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC3(%rip), %xmm0, %xmm0
	vsubsd	LC4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, 40(%rsp)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC3(%rip), %xmm0, %xmm0
	vsubsd	LC4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, 44(%rsp)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	LC2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	LC5(%rip), %xmm0, %xmm0
	vsubsd	LC6(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm3, %xmm3
	vmovss	%xmm3, 48(%rsp)
	call	_rand
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	movq	16(%rsp), %rax
	vmulss	LC2(%rip), %xmm0, %xmm0
	vmulss	LC7(%rip), %xmm0, %xmm0
	vsubss	LC8(%rip), %xmm0, %xmm0
	movq	%rax, (%rbx)
	vmovss	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rbx)
	movl	48(%rsp), %eax
	movl	%eax, 32(%rbx)
	addq	$64, %rsp
LCFI23:
	movq	%rbx, %rax
	popq	%rbx
LCFI24:
	ret
LFE4606:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE10:
	.text
LHOTE10:
	.cstring
LC11:
	.ascii "\12print_stars, n = %d:\12\0"
LC12:
	.ascii "%s \0"
LC13:
	.ascii "%.f \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB14:
	.text
LHOTB14:
	.align 4,0x90
	.globl _print_stars
_print_stars:
LFB4608:
	pushq	%r13
LCFI25:
	xorl	%eax, %eax
	pushq	%r12
LCFI26:
	movq	%rdi, %r12
	pushq	%rbp
LCFI27:
	leaq	LC11(%rip), %rdi
	movl	%esi, %ebp
	pushq	%rbx
LCFI28:
	subq	$8, %rsp
LCFI29:
	call	_printf
	testl	%ebp, %ebp
	jle	L27
	leal	-1(%rbp), %eax
	leaq	(%rax,%rax,8), %r13
	leaq	12(%r12), %rbx
	salq	$2, %r13
	leaq	48(%r12,%r13), %rbp
	.align 4,0x90
L28:
	leaq	LC12(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	_printf
	addq	$36, %rbx
	cmpq	%rbx, %rbp
	jne	L28
	leaq	24(%r12), %rbx
	movl	$10, %edi
	call	_putchar
	leaq	60(%r12,%r13), %rbp
	.align 4,0x90
L32:
	vmovss	(%rbx), %xmm1
	vmovss	4(%rbx), %xmm2
	vmulss	%xmm1, %xmm1, %xmm1
	vmovss	8(%rbx), %xmm3
	vmulss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm3, %xmm2, %xmm1
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	L39
L30:
	leaq	LC13(%rip), %rdi
	movl	$1, %eax
	addq	$36, %rbx
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	_printf
	cmpq	%rbx, %rbp
	jne	L32
L33:
	addq	$8, %rsp
LCFI30:
	movl	$10, %edi
	popq	%rbx
LCFI31:
	popq	%rbp
LCFI32:
	popq	%r12
LCFI33:
	popq	%r13
LCFI34:
	jmp	_putchar
L39:
LCFI35:
	vmovaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L30
L27:
	movl	$10, %edi
	call	_putchar
	jmp	L33
LFE4608:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE14:
	.text
LHOTE14:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB16:
	.text
LHOTB16:
	.align 4,0x90
	.globl _starfunc
_starfunc:
LFB4609:
	subq	$8, %rsp
LCFI36:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movzwl	22(%rsp), %ecx
	movzwl	62(%rsp), %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	addl	%ecx, %edx
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vdivsd	LC15(%rip), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	L44
L41:
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	addq	$8, %rsp
LCFI37:
	ret
L44:
LCFI38:
	vmovapd	%xmm1, %xmm0
	call	_sqrt
	jmp	L41
LFE4609:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE16:
	.text
LHOTE16:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB17:
	.text
LHOTB17:
	.align 4,0x90
	.globl _merge_sort
_merge_sort:
LFB4610:
	cmpl	$1, %esi
	je	L83
	movl	%esi, %r8d
	pushq	%r15
LCFI39:
	movq	%rdi, %r15
	movl	%esi, %ecx
	shrl	$31, %r8d
	pushq	%r14
LCFI40:
	addl	%esi, %r8d
	pushq	%r13
LCFI41:
	sarl	%r8d
	pushq	%r12
LCFI42:
	movslq	%r8d, %rax
	pushq	%rbp
LCFI43:
	subl	%r8d, %ecx
	leaq	(%rax,%rax,8), %rdi
	pushq	%rbx
LCFI44:
	leaq	0(,%rdi,4), %rbx
	subq	$40, %rsp
LCFI45:
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
	jle	L51
	leal	-1(%r8), %eax
	xorl	%edx, %edx
	leaq	9(%rax,%rax,8), %rsi
	salq	$2, %rsi
	.align 4,0x90
L50:
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
	jne	L50
L51:
	testl	%ecx, %ecx
	jle	L85
	leal	-1(%rcx), %eax
	xorl	%edx, %edx
	leaq	9(%rax,%rax,8), %rsi
	movq	%rax, %rbp
	leaq	(%r15,%rbx), %rdi
	salq	$2, %rsi
	.align 4,0x90
L52:
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
	jne	L52
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
	jle	L68
	movq	%r15, %rbx
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	movl	8(%rsp), %ecx
	xorl	%r10d, %r10d
	jmp	L61
	.align 4,0x90
L88:
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
	jge	L67
L89:
	cmpl	%ecx, %edi
	jge	L67
L61:
	movslq	%r9d, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	(%r14,%rax,4), %r12
	vmovss	24(%r12), %xmm1
	vmovss	28(%r12), %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vmovss	32(%r12), %xmm2
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm0, %xmm1, %xmm1
	vaddss	%xmm2, %xmm1, %xmm0
	vsqrtss	%xmm0, %xmm4, %xmm4
	vucomiss	%xmm4, %xmm4
	jp	L86
L54:
	movslq	%edi, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	0(%r13,%rax,4), %rbp
	vmovss	24(%rbp), %xmm1
	vmovss	28(%rbp), %xmm2
	vmulss	%xmm1, %xmm1, %xmm1
	vmovss	32(%rbp), %xmm3
	vmulss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm3, %xmm2, %xmm1
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	L87
L56:
	vucomiss	%xmm4, %xmm0
	ja	L88
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
	jl	L89
L67:
	cmpl	%r9d, %r8d
	jle	L63
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
L64:
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
	jne	L64
	addl	%r8d, %r10d
	subl	%r9d, %r10d
L63:
	leal	-1(%rcx), %ebp
	cmpl	%edi, %ecx
	jle	L66
L53:
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
L65:
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
	jne	L65
L66:
	movq	%r14, %rdi
	call	_free
	addq	$40, %rsp
LCFI46:
	movq	%r13, %rdi
	popq	%rbx
LCFI47:
	popq	%rbp
LCFI48:
	popq	%r12
LCFI49:
	popq	%r13
LCFI50:
	popq	%r14
LCFI51:
	popq	%r15
LCFI52:
	jmp	_free
	.align 4,0x90
L83:
	ret
L87:
LCFI53:
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm4, 28(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%edi, 12(%rsp)
	movl	%r9d, 8(%rsp)
	call	_sqrtf
	vmovss	28(%rsp), %xmm4
	movl	24(%rsp), %r8d
	movl	20(%rsp), %r10d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %edi
	movl	8(%rsp), %r9d
	jmp	L56
L86:
	movl	%r8d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%edi, 12(%rsp)
	movl	%r9d, 8(%rsp)
	call	_sqrtf
	movl	24(%rsp), %r8d
	vmovaps	%xmm0, %xmm4
	movl	20(%rsp), %r10d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %edi
	movl	8(%rsp), %r9d
	jmp	L54
L85:
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
	jmp	L67
L68:
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	jmp	L53
LFE4610:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE17:
	.text
LHOTE17:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB18:
	.text
LHOTB18:
	.align 4,0x90
	.globl _distance
_distance:
LFB4611:
	subq	$8, %rsp
LCFI54:
	vmovss	40(%rsp), %xmm1
	vmovss	44(%rsp), %xmm2
	vmulss	%xmm1, %xmm1, %xmm1
	vmovss	48(%rsp), %xmm3
	vmulss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm3, %xmm2, %xmm1
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	L95
L93:
	addq	$8, %rsp
LCFI55:
	ret
L95:
LCFI56:
	vmovaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L93
LFE4611:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE18:
	.text
LHOTE18:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB20:
	.text
LHOTB20:
	.align 4,0x90
	.globl _padStar
_padStar:
LFB4612:
	pushq	%rbx
LCFI57:
	xorl	%eax, %eax
	movq	%rdi, %rbx
	xorl	%r9d, %r9d
	subq	$48, %rsp
LCFI58:
	movl	$79, %r8d
	movl	$9, %edx
	movl	%esi, (%rsp)
	leaq	12(%rsp), %rdi
	subq	$8, %rsp
LCFI59:
	movw	%ax, 14(%rsp)
	leaq	LC1(%rip), %rcx
	xorl	%eax, %eax
	movb	$79, 12(%rsp)
	pushq	%rsi
LCFI60:
	xorl	%esi, %esi
	call	___sprintf_chk
	movq	16(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 24(%rsp)
	vmovss	%xmm0, 40(%rsp)
	vmovss	%xmm0, 44(%rsp)
	movl	$0, 32(%rbx)
	movq	%rax, (%rbx)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rbx)
	addq	$64, %rsp
LCFI61:
	movq	%rbx, %rax
	popq	%rbx
LCFI62:
	ret
LFE4612:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.text
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB21:
	.text
LHOTB21:
	.align 4,0x90
	.globl _fill_matrix
_fill_matrix:
LFB4613:
	testl	%edx, %edx
	jle	L112
	pushq	%r15
LCFI63:
	leal	-1(%rdx), %eax
	pushq	%r14
LCFI64:
	leaq	(%rax,%rax,8), %rdx
	movq	%rsi, %r14
	pushq	%r13
LCFI65:
	leaq	6(%rdi), %rsi
	pushq	%r12
LCFI66:
	leaq	42(%rdi,%rdx,4), %rdi
	pushq	%rbp
LCFI67:
	leaq	4(,%rax,4), %r15
	movq	%rsi, %rbp
	pushq	%rbx
LCFI68:
	subq	$40, %rsp
LCFI69:
	vmovsd	LC15(%rip), %xmm5
	.align 4,0x90
L106:
	movq	%rsi, %rbx
	xorl	%r12d, %r12d
	.align 4,0x90
L105:
	movzwl	0(%rbp), %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%r12, %r13
	movzwl	(%rbx), %edx
	addq	(%r14), %r13
	movl	%ecx, %eax
	imull	%edx, %eax
	addl	%ecx, %edx
	vcvtsi2sd	%edx, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vdivsd	%xmm5, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm3, %xmm3
	vucomisd	%xmm3, %xmm3
	jp	L113
L101:
	vmovss	18(%rbp), %xmm1
	vmovss	22(%rbp), %xmm2
	vsubss	18(%rbx), %xmm1, %xmm1
	vsubss	22(%rbx), %xmm2, %xmm2
	vmovss	26(%rbp), %xmm4
	vmulss	%xmm1, %xmm1, %xmm1
	vsubss	26(%rbx), %xmm4, %xmm4
	vmulss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm4, %xmm2, %xmm1
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	L114
L103:
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm0, %xmm3, %xmm3
	addq	$4, %r12
	addq	$36, %rbx
	cmpq	%r12, %r15
	vmovss	%xmm3, 0(%r13)
	jne	L105
	addq	$36, %rbp
	addq	$8, %r14
	cmpq	%rdi, %rbp
	jne	L106
	addq	$40, %rsp
LCFI70:
	popq	%rbx
LCFI71:
	popq	%rbp
LCFI72:
	popq	%r12
LCFI73:
	popq	%r13
LCFI74:
	popq	%r14
LCFI75:
	popq	%r15
LCFI76:
	ret
L114:
LCFI77:
	vmovaps	%xmm1, %xmm0
	vmovsd	%xmm5, 24(%rsp)
	vmovsd	%xmm3, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, (%rsp)
	call	_sqrtf
	vmovsd	24(%rsp), %xmm5
	vmovsd	16(%rsp), %xmm3
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	jmp	L103
L113:
	vmovsd	%xmm5, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, (%rsp)
	call	_sqrt
	vmovsd	16(%rsp), %xmm5
	vmovapd	%xmm0, %xmm3
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	jmp	L101
L112:
LCFI78:
	ret
LFE4613:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE21:
	.text
LHOTE21:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB22:
	.text
LHOTB22:
	.align 4,0x90
	.globl _star_distance
_star_distance:
LFB4614:
	subq	$8, %rsp
LCFI79:
	vmovss	40(%rsp), %xmm1
	vmovss	44(%rsp), %xmm2
	vsubss	80(%rsp), %xmm1, %xmm1
	vsubss	84(%rsp), %xmm2, %xmm2
	vmovss	48(%rsp), %xmm3
	vmulss	%xmm1, %xmm1, %xmm1
	vsubss	88(%rsp), %xmm3, %xmm3
	vmulss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm3, %xmm2, %xmm1
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	L120
L118:
	addq	$8, %rsp
LCFI80:
	ret
L120:
LCFI81:
	vmovaps	%xmm1, %xmm0
	call	_sqrtf
	jmp	L118
LFE4614:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE22:
	.text
LHOTE22:
	.cstring
LC23:
	.ascii "\12print_matrix, n = %d:\12\0"
LC24:
	.ascii "%.2f \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB25:
	.text
LHOTB25:
	.align 4,0x90
	.globl _print_matrix
_print_matrix:
LFB4615:
	pushq	%r13
LCFI82:
	xorl	%eax, %eax
	pushq	%r12
LCFI83:
	pushq	%rbp
LCFI84:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI85:
	leaq	LC23(%rip), %rdi
	movl	%esi, %ebx
	subq	$8, %rsp
LCFI86:
	call	_printf
	testl	%ebx, %ebx
	jle	L128
	leal	-1(%rbx), %r12d
	addq	$1, %r12
	leaq	0(%rbp,%r12,8), %r13
	salq	$2, %r12
	.align 4,0x90
L125:
	xorl	%ebx, %ebx
	.align 4,0x90
L124:
	movq	0(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	LC24(%rip), %rdi
	vcvtss2sd	(%rax,%rbx), %xmm0, %xmm0
	movl	$1, %eax
	addq	$4, %rbx
	call	_printf
	cmpq	%rbx, %r12
	jne	L124
	movl	$10, %edi
	addq	$8, %rbp
	call	_putchar
	cmpq	%rbp, %r13
	jne	L125
L128:
	addq	$8, %rsp
LCFI87:
	popq	%rbx
LCFI88:
	popq	%rbp
LCFI89:
	popq	%r12
LCFI90:
	popq	%r13
LCFI91:
	ret
LFE4615:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE25:
	.text
LHOTE25:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB28:
	.text
LHOTB28:
	.align 4,0x90
	.globl _generate_histogram
_generate_histogram:
LFB4616:
	pushq	%r15
LCFI92:
	pushq	%r14
LCFI93:
	movq	%rsi, %r14
	pushq	%r13
LCFI94:
	movl	%edx, %r13d
	pushq	%r12
LCFI95:
	movq	%rdi, %r12
	pushq	%rbp
LCFI96:
	movl	%ecx, %ebp
	pushq	%rbx
LCFI97:
	leal	-2(%rdx), %ebx
	movl	%ebx, %eax
	subq	$24, %rsp
LCFI98:
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	%eax, 4(%rsp)
	salq	$2, %rdi
	call	_malloc
	cmpl	$2, %r13d
	jle	L152
	movl	$1, %edx
	movslq	%ebx, %rbx
	vxorps	%xmm3, %xmm3, %xmm3
	vmovss	LC26(%rip), %xmm2
	leaq	0(,%rbx,4), %rdi
	subl	%r13d, %edx
	leaq	8(%r12), %rsi
	movslq	%edx, %rdx
	addq	%rdx, %rbx
	leal	-3(%r13), %edx
	leaq	(%rax,%rbx,4), %rbx
	leaq	16(%r12,%rdx,8), %r15
	leaq	1(%rdx), %r13
	.align 4,0x90
L137:
	movq	(%rsi), %r8
	xorl	%ecx, %ecx
	movq	8(%rsi), %r10
	movq	-8(%rsi), %r9
	.align 4,0x90
L136:
	vmovss	4(%r8,%rcx,4), %xmm0
	vmovss	(%r8,%rcx,4), %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	vcvttss2si	%xmm1, %r12d
	vmovss	8(%r8,%rcx,4), %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	movl	%r12d, %edx
	sarl	$31, %edx
	xorl	%edx, %r12d
	subl	%edx, %r12d
	movl	%r12d, %edx
	vcvttss2si	%xmm1, %r12d
	vmovss	4(%r10,%rcx,4), %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	movl	%r12d, %r11d
	sarl	$31, %r11d
	xorl	%r11d, %r12d
	subl	%r11d, %r12d
	addl	%edx, %r12d
	vcvttss2si	%xmm1, %edx
	vmovss	4(%r9,%rcx,4), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	movl	%edx, %r11d
	sarl	$31, %r11d
	xorl	%r11d, %edx
	subl	%r11d, %edx
	leal	(%r12,%rdx), %r11d
	vcvttss2si	%xmm0, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	movl	%edx, %r12d
	sarl	$31, %r12d
	xorl	%r12d, %edx
	subl	%r12d, %edx
	addl	%r11d, %edx
	sarl	$2, %edx
	vcvtsi2ss	%edx, %xmm0, %xmm0
	vmovss	%xmm0, 4(%rbx,%rcx,4)
	addq	$1, %rcx
	vminss	%xmm2, %xmm0, %xmm2
	cmpq	%rcx, %r13
	vmaxss	%xmm3, %xmm0, %xmm3
	jne	L136
	addq	$8, %rsi
	addq	%rdi, %rbx
	cmpq	%r15, %rsi
	jne	L137
	vsubss	%xmm2, %xmm3, %xmm1
L132:
	movl	4(%rsp), %edx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%ebp, %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm1
	testl	%edx, %edx
	je	L139
	movl	4(%rsp), %ebx
	movq	%rax, %rdi
	leal	-1(%rbx), %edx
	leaq	4(%rax,%rdx,4), %r8
	.align 4,0x90
L144:
	testl	%ebp, %ebp
	jle	L145
	vmovss	(%rdi), %xmm4
	movl	$1, %edx
	xorl	%ecx, %ecx
	.align 4,0x90
L143:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%ecx, %xmm0, %xmm0
	movl	%edx, %esi
	vmulss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm4
	jb	L141
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%edx, %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vucomiss	%xmm4, %xmm0
	jb	L141
	addl	$1, (%r14,%rcx,4)
L141:
	addq	$1, %rcx
	addl	$1, %edx
	cmpl	%esi, %ebp
	jg	L143
L145:
	addq	$4, %rdi
	cmpq	%r8, %rdi
	jne	L144
L139:
	movq	%rax, %rdi
	vmovss	%xmm1, 12(%rsp)
	vmovss	%xmm3, 8(%rsp)
	vmovss	%xmm2, 4(%rsp)
	call	_free
	vmovss	8(%rsp), %xmm3
	vmovss	12(%rsp), %xmm1
	vmovss	4(%rsp), %xmm2
	vmovd	%xmm3, %ecx
	addq	$24, %rsp
LCFI99:
	vmovd	%xmm1, %esi
	movl	%ecx, %edx
	popq	%rbx
LCFI100:
	vmovd	%xmm2, %eax
	salq	$32, %rsi
	salq	$32, %rax
	orq	%rsi, %rdx
	orq	%rbp, %rax
	vmovq	%rdx, %xmm0
	popq	%rbp
LCFI101:
	popq	%r12
LCFI102:
	popq	%r13
LCFI103:
	popq	%r14
LCFI104:
	popq	%r15
LCFI105:
	ret
L152:
LCFI106:
	vmovss	LC27(%rip), %xmm1
	vxorps	%xmm3, %xmm3, %xmm3
	vmovss	LC26(%rip), %xmm2
	jmp	L132
LFE4616:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE28:
	.text
LHOTE28:
	.cstring
LC29:
	.ascii "\12display_histogram:\0"
LC30:
	.ascii "%11.3e \0"
LC31:
	.ascii "%11.3e\12\0"
LC32:
	.ascii "%11d \0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB33:
	.text
LHOTB33:
	.align 4,0x90
	.globl _display_histogram
_display_histogram:
LFB4617:
	pushq	%r12
LCFI107:
	vmovq	%xmm0, %rax
	movl	%esi, %r12d
	pushq	%rbp
LCFI108:
	shrq	$32, %rax
	movq	%rsi, %rbp
	pushq	%rbx
LCFI109:
	movq	%rdi, %rbx
	leaq	LC29(%rip), %rdi
	subq	$16, %rsp
LCFI110:
	vmovss	%xmm0, 4(%rsp)
	movl	%eax, 8(%rsp)
	call	_puts
	testl	%ebp, %ebp
	jle	L154
	vmovss	8(%rsp), %xmm4
	vmulss	LC19(%rip), %xmm4, %xmm0
	vmovss	4(%rsp), %xmm5
	vucomiss	%xmm0, %xmm5
	jbe	L154
	shrq	$32, %rbp
	movl	%ebp, 12(%rsp)
	xorl	%ebp, %ebp
	jmp	L157
	.align 4,0x90
L167:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%ebp, %xmm0, %xmm0
	vmulss	8(%rsp), %xmm0, %xmm0
	vmovss	4(%rsp), %xmm3
	vucomiss	%xmm0, %xmm3
	jbe	L166
L157:
	vaddss	12(%rsp), %xmm0, %xmm0
	leaq	LC30(%rip), %rdi
	movl	$1, %eax
	addl	$1, %ebp
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	_printf
	cmpl	%ebp, %r12d
	jne	L167
	leaq	LC31(%rip), %rdi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	4(%rsp), %xmm0, %xmm0
	call	_printf
L158:
	leal	-1(%rbp), %eax
	leaq	4(%rbx,%rax,4), %rbp
	.align 4,0x90
L161:
	movl	(%rbx), %esi
	leaq	LC32(%rip), %rdi
	xorl	%eax, %eax
	addq	$4, %rbx
	call	_printf
	cmpq	%rbp, %rbx
	jne	L161
L160:
	addq	$16, %rsp
LCFI111:
	movl	$10, %edi
	popq	%rbx
LCFI112:
	popq	%rbp
LCFI113:
	popq	%r12
LCFI114:
	jmp	_putchar
	.align 4,0x90
L166:
LCFI115:
	leaq	LC31(%rip), %rdi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm3, %xmm0, %xmm0
	call	_printf
	testl	%ebp, %ebp
	jg	L158
	jmp	L160
	.align 4,0x90
L154:
	leaq	LC31(%rip), %rdi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	4(%rsp), %xmm0, %xmm0
	call	_printf
	jmp	L160
LFE4617:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE33:
	.text
LHOTE33:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB34:
	.text
LHOTB34:
	.align 4,0x90
	.globl _fileIsEmpty
_fileIsEmpty:
LFB4618:
	pushq	%rbx
LCFI116:
	xorl	%esi, %esi
	movq	%rdi, %rbx
	movl	$2, %edx
	call	_fseek
	movq	%rbx, %rdi
	call	_ftell
	popq	%rbx
LCFI117:
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	ret
LFE4618:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE34:
	.text
LHOTE34:
	.cstring
LC35:
	.ascii "a\0"
LC36:
	.ascii "timings.csv\0"
	.align 3
LC37:
	.ascii "Stars, Create, Sort , Allocate , Fill, Histogram\12\0"
LC38:
	.ascii "%d\0"
LC39:
	.ascii ",%f\0"
LC40:
	.ascii "Saved to %s\12\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB41:
	.text
LHOTB41:
	.align 4,0x90
	.globl _saveToFile
_saveToFile:
LFB4619:
	pushq	%r12
LCFI118:
	movl	%edi, %r12d
	pushq	%rbp
LCFI119:
	leaq	LC36(%rip), %rdi
	pushq	%rbx
LCFI120:
	movq	%rsi, %rbx
	leaq	LC35(%rip), %rsi
	call	_fopen
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_fileIsEmpty
	testl	%eax, %eax
	jne	L178
L171:
	movl	%r12d, %edx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	leaq	LC38(%rip), %rsi
	call	_fprintf
	leaq	40(%rbx), %r12
L172:
	vmovsd	(%rbx), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	addq	$8, %rbx
	leaq	LC39(%rip), %rsi
	call	_fprintf
	cmpq	%r12, %rbx
	jne	L172
	movq	%rbp, %rsi
	movl	$10, %edi
	call	_fputc
	leaq	LC40(%rip), %rdi
	xorl	%eax, %eax
	leaq	LC36(%rip), %rsi
	call	_printf
	popq	%rbx
LCFI121:
	movq	%rbp, %rdi
	popq	%rbp
LCFI122:
	popq	%r12
LCFI123:
	jmp	_fclose
	.align 4,0x90
L178:
LCFI124:
	movq	%rbp, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	LC37(%rip), %rdi
	call	_fwrite
	jmp	L171
LFE4619:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE41:
	.text
LHOTE41:
	.literal4
	.align 2
LC2:
	.long	805306368
	.literal8
	.align 3
LC3:
	.long	0
	.long	1090021888
	.align 3
LC4:
	.long	0
	.long	1088973312
	.align 3
LC5:
	.long	0
	.long	1084715008
	.align 3
LC6:
	.long	0
	.long	1083666432
	.literal4
	.align 2
LC7:
	.long	1106247680
	.align 2
LC8:
	.long	1092616192
	.literal8
	.align 3
LC15:
	.long	858993459
	.long	1071854387
	.literal4
	.align 2
LC19:
	.long	0
	.align 2
LC26:
	.long	1259902592
	.align 2
LC27:
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
	.quad	LFB4607-.
	.set L$set$2,LFE4607-LFB4607
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB4607
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xb
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$8,LEFDE3-LASFDE3
	.long L$set$8
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB4605-.
	.set L$set$9,LFE4605-LFB4605
	.quad L$set$9
	.byte	0
	.byte	0x4
	.set L$set$10,LCFI5-LFB4605
	.long L$set$10
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$14,LCFI9-LCFI8
	.long L$set$14
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$15,LCFI10-LCFI9
	.long L$set$15
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$16,LCFI11-LCFI10
	.long L$set$16
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$17,LCFI12-LCFI11
	.long L$set$17
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$18,LCFI13-LCFI12
	.long L$set$18
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$19,LCFI14-LCFI13
	.long L$set$19
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$20,LCFI15-LCFI14
	.long L$set$20
	.byte	0xc3
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$21,LCFI16-LCFI15
	.long L$set$21
	.byte	0xc6
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$22,LCFI17-LCFI16
	.long L$set$22
	.byte	0xcc
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$23,LCFI18-LCFI17
	.long L$set$23
	.byte	0xcd
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$24,LEFDE5-LASFDE5
	.long L$set$24
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB4606-.
	.set L$set$25,LFE4606-LFB4606
	.quad L$set$25
	.byte	0
	.byte	0x4
	.set L$set$26,LCFI19-LFB4606
	.long L$set$26
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$27,LCFI20-LCFI19
	.long L$set$27
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$28,LCFI21-LCFI20
	.long L$set$28
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$29,LCFI22-LCFI21
	.long L$set$29
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$30,LCFI23-LCFI22
	.long L$set$30
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$31,LCFI24-LCFI23
	.long L$set$31
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$32,LEFDE7-LASFDE7
	.long L$set$32
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB4608-.
	.set L$set$33,LFE4608-LFB4608
	.quad L$set$33
	.byte	0
	.byte	0x4
	.set L$set$34,LCFI25-LFB4608
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$35,LCFI26-LCFI25
	.long L$set$35
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$36,LCFI27-LCFI26
	.long L$set$36
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$37,LCFI28-LCFI27
	.long L$set$37
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$38,LCFI29-LCFI28
	.long L$set$38
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$39,LCFI30-LCFI29
	.long L$set$39
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$40,LCFI31-LCFI30
	.long L$set$40
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$41,LCFI32-LCFI31
	.long L$set$41
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$42,LCFI33-LCFI32
	.long L$set$42
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$43,LCFI34-LCFI33
	.long L$set$43
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$44,LCFI35-LCFI34
	.long L$set$44
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$45,LEFDE9-LASFDE9
	.long L$set$45
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB4609-.
	.set L$set$46,LFE4609-LFB4609
	.quad L$set$46
	.byte	0
	.byte	0x4
	.set L$set$47,LCFI36-LFB4609
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$48,LCFI37-LCFI36
	.long L$set$48
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$49,LCFI38-LCFI37
	.long L$set$49
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$50,LEFDE11-LASFDE11
	.long L$set$50
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB4610-.
	.set L$set$51,LFE4610-LFB4610
	.quad L$set$51
	.byte	0
	.byte	0x4
	.set L$set$52,LCFI39-LFB4610
	.long L$set$52
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$53,LCFI40-LCFI39
	.long L$set$53
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$54,LCFI41-LCFI40
	.long L$set$54
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$55,LCFI42-LCFI41
	.long L$set$55
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$56,LCFI43-LCFI42
	.long L$set$56
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$57,LCFI44-LCFI43
	.long L$set$57
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$58,LCFI45-LCFI44
	.long L$set$58
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$59,LCFI46-LCFI45
	.long L$set$59
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$60,LCFI47-LCFI46
	.long L$set$60
	.byte	0xc3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$61,LCFI48-LCFI47
	.long L$set$61
	.byte	0xc6
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$62,LCFI49-LCFI48
	.long L$set$62
	.byte	0xcc
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$63,LCFI50-LCFI49
	.long L$set$63
	.byte	0xcd
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$64,LCFI51-LCFI50
	.long L$set$64
	.byte	0xce
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$65,LCFI52-LCFI51
	.long L$set$65
	.byte	0xcf
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$66,LCFI53-LCFI52
	.long L$set$66
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
LEFDE11:
LSFDE13:
	.set L$set$67,LEFDE13-LASFDE13
	.long L$set$67
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB4611-.
	.set L$set$68,LFE4611-LFB4611
	.quad L$set$68
	.byte	0
	.byte	0x4
	.set L$set$69,LCFI54-LFB4611
	.long L$set$69
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$70,LCFI55-LCFI54
	.long L$set$70
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$71,LCFI56-LCFI55
	.long L$set$71
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$72,LEFDE15-LASFDE15
	.long L$set$72
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB4612-.
	.set L$set$73,LFE4612-LFB4612
	.quad L$set$73
	.byte	0
	.byte	0x4
	.set L$set$74,LCFI57-LFB4612
	.long L$set$74
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$75,LCFI58-LCFI57
	.long L$set$75
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$76,LCFI59-LCFI58
	.long L$set$76
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$77,LCFI60-LCFI59
	.long L$set$77
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$78,LCFI61-LCFI60
	.long L$set$78
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$79,LCFI62-LCFI61
	.long L$set$79
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$80,LEFDE17-LASFDE17
	.long L$set$80
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4613-.
	.set L$set$81,LFE4613-LFB4613
	.quad L$set$81
	.byte	0
	.byte	0x4
	.set L$set$82,LCFI63-LFB4613
	.long L$set$82
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$83,LCFI64-LCFI63
	.long L$set$83
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$84,LCFI65-LCFI64
	.long L$set$84
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$85,LCFI66-LCFI65
	.long L$set$85
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$86,LCFI67-LCFI66
	.long L$set$86
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$87,LCFI68-LCFI67
	.long L$set$87
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$88,LCFI69-LCFI68
	.long L$set$88
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$89,LCFI70-LCFI69
	.long L$set$89
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$90,LCFI71-LCFI70
	.long L$set$90
	.byte	0xc3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$91,LCFI72-LCFI71
	.long L$set$91
	.byte	0xc6
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$92,LCFI73-LCFI72
	.long L$set$92
	.byte	0xcc
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$93,LCFI74-LCFI73
	.long L$set$93
	.byte	0xcd
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$94,LCFI75-LCFI74
	.long L$set$94
	.byte	0xce
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$95,LCFI76-LCFI75
	.long L$set$95
	.byte	0xcf
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$96,LCFI77-LCFI76
	.long L$set$96
	.byte	0xb
	.byte	0x4
	.set L$set$97,LCFI78-LCFI77
	.long L$set$97
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$98,LEFDE19-LASFDE19
	.long L$set$98
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB4614-.
	.set L$set$99,LFE4614-LFB4614
	.quad L$set$99
	.byte	0
	.byte	0x4
	.set L$set$100,LCFI79-LFB4614
	.long L$set$100
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$101,LCFI80-LCFI79
	.long L$set$101
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$102,LCFI81-LCFI80
	.long L$set$102
	.byte	0xb
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$103,LEFDE21-LASFDE21
	.long L$set$103
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB4615-.
	.set L$set$104,LFE4615-LFB4615
	.quad L$set$104
	.byte	0
	.byte	0x4
	.set L$set$105,LCFI82-LFB4615
	.long L$set$105
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$106,LCFI83-LCFI82
	.long L$set$106
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$107,LCFI84-LCFI83
	.long L$set$107
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$108,LCFI85-LCFI84
	.long L$set$108
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$109,LCFI86-LCFI85
	.long L$set$109
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$110,LCFI87-LCFI86
	.long L$set$110
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$111,LCFI88-LCFI87
	.long L$set$111
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$112,LCFI89-LCFI88
	.long L$set$112
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$113,LCFI90-LCFI89
	.long L$set$113
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$114,LCFI91-LCFI90
	.long L$set$114
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$115,LEFDE23-LASFDE23
	.long L$set$115
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB4616-.
	.set L$set$116,LFE4616-LFB4616
	.quad L$set$116
	.byte	0
	.byte	0x4
	.set L$set$117,LCFI92-LFB4616
	.long L$set$117
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$118,LCFI93-LCFI92
	.long L$set$118
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$119,LCFI94-LCFI93
	.long L$set$119
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$120,LCFI95-LCFI94
	.long L$set$120
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$121,LCFI96-LCFI95
	.long L$set$121
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$122,LCFI97-LCFI96
	.long L$set$122
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$123,LCFI98-LCFI97
	.long L$set$123
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$124,LCFI99-LCFI98
	.long L$set$124
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$125,LCFI100-LCFI99
	.long L$set$125
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$126,LCFI101-LCFI100
	.long L$set$126
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$127,LCFI102-LCFI101
	.long L$set$127
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$128,LCFI103-LCFI102
	.long L$set$128
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$129,LCFI104-LCFI103
	.long L$set$129
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$130,LCFI105-LCFI104
	.long L$set$130
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$131,LCFI106-LCFI105
	.long L$set$131
	.byte	0xb
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$132,LEFDE25-LASFDE25
	.long L$set$132
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4617-.
	.set L$set$133,LFE4617-LFB4617
	.quad L$set$133
	.byte	0
	.byte	0x4
	.set L$set$134,LCFI107-LFB4617
	.long L$set$134
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$135,LCFI108-LCFI107
	.long L$set$135
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$136,LCFI109-LCFI108
	.long L$set$136
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$137,LCFI110-LCFI109
	.long L$set$137
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$138,LCFI111-LCFI110
	.long L$set$138
	.byte	0xa
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$139,LCFI112-LCFI111
	.long L$set$139
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$140,LCFI113-LCFI112
	.long L$set$140
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$141,LCFI114-LCFI113
	.long L$set$141
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$142,LCFI115-LCFI114
	.long L$set$142
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$143,LEFDE27-LASFDE27
	.long L$set$143
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB4618-.
	.set L$set$144,LFE4618-LFB4618
	.quad L$set$144
	.byte	0
	.byte	0x4
	.set L$set$145,LCFI116-LFB4618
	.long L$set$145
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$146,LCFI117-LCFI116
	.long L$set$146
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$147,LEFDE29-LASFDE29
	.long L$set$147
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB4619-.
	.set L$set$148,LFE4619-LFB4619
	.quad L$set$148
	.byte	0
	.byte	0x4
	.set L$set$149,LCFI118-LFB4619
	.long L$set$149
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$150,LCFI119-LCFI118
	.long L$set$150
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$151,LCFI120-LCFI119
	.long L$set$151
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$152,LCFI121-LCFI120
	.long L$set$152
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$153,LCFI122-LCFI121
	.long L$set$153
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$154,LCFI123-LCFI122
	.long L$set$154
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$155,LCFI124-LCFI123
	.long L$set$155
	.byte	0xb
	.align 3
LEFDE29:
	.subsections_via_symbols
