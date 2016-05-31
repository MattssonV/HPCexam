	.cstring
	.align 3
LC0:
	.ascii "ERROR! create_ref_star_array() only works for size=7 case.\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB29:
	.text
LHOTB29:
	.align 4,0x90
	.globl _create_ref_star_array
_create_ref_star_array:
LFB24:
	subq	$392, %rsp
LCFI0:
	cmpl	$7, %esi
	jne	L5
	movl	$9, %eax
	movl	$5, %edx
	movl	$0, 288(%rsp)
	movl	$3, %ecx
	movb	$75, 292(%rsp)
	movl	$1, %esi
	movl	$3, %r8d
	movl	$9, %r9d
	movw	%ax, 294(%rsp)
	movq	288(%rsp), %rax
	movl	$6, %r10d
	movl	$0xc0376630, 296(%rsp)
	movl	$808335691, 300(%rsp)
	movb	$0, 304(%rsp)
	movq	%rax, (%rdi)
	movq	296(%rsp), %rax
	movl	$0xc6511065, 312(%rsp)
	movl	$0xc6a97512, 316(%rsp)
	movl	$1, 240(%rsp)
	movq	%rax, 8(%rdi)
	movq	304(%rsp), %rax
	movb	$70, 244(%rsp)
	movw	%dx, 246(%rsp)
	movl	$0x40c8aa36, 248(%rsp)
	movq	%rax, 16(%rdi)
	movq	312(%rsp), %rax
	movl	$825111878, 252(%rsp)
	movb	$0, 256(%rsp)
	movl	$0x45807e61, 264(%rsp)
	movq	%rax, 24(%rdi)
	movq	240(%rsp), %rax
	movl	$0x47128287, 268(%rsp)
	movl	$-986221693, 32(%rdi)
	movq	%rax, 36(%rdi)
	movq	248(%rsp), %rax
	movq	%rax, 44(%rdi)
	movq	256(%rsp), %rax
	movq	%rax, 52(%rdi)
	movq	264(%rsp), %rax
	movq	%rax, 60(%rdi)
	movl	$2, 192(%rsp)
	movb	$76, 196(%rsp)
	movw	%cx, 198(%rsp)
	movq	192(%rsp), %rax
	movl	$0xc1002391, 200(%rsp)
	movl	$841888588, 204(%rsp)
	movb	$0, 208(%rsp)
	movq	%rax, 72(%rdi)
	movq	200(%rsp), %rax
	movl	$0xc7987f90, 216(%rsp)
	movl	$0x47890bb9, 220(%rsp)
	movl	$3, 144(%rsp)
	movq	%rax, 80(%rdi)
	movq	208(%rsp), %rax
	movb	$77, 148(%rsp)
	movw	%si, 150(%rsp)
	movl	$0xc084a200, 152(%rsp)
	movq	%rax, 88(%rdi)
	movq	216(%rsp), %rax
	movl	$858665293, 156(%rsp)
	movb	$0, 160(%rsp)
	movl	$0xc729196f, 168(%rsp)
	movq	%rax, 96(%rdi)
	movq	144(%rsp), %rax
	movl	$0x47446a76, 172(%rsp)
	movl	$1130423726, 68(%rdi)
	movl	$-999019523, 104(%rdi)
	movq	%rax, 108(%rdi)
	movq	152(%rsp), %rax
	movq	%rax, 116(%rdi)
	movq	160(%rsp), %rax
	movq	%rax, 124(%rdi)
	movq	168(%rsp), %rax
	movl	$4, 96(%rsp)
	movb	$75, 100(%rsp)
	movw	%r8w, 102(%rsp)
	movq	%rax, 132(%rdi)
	movq	96(%rsp), %rax
	movl	$0xc0f112c4, 104(%rsp)
	movl	$875443019, 108(%rsp)
	movb	$0, 112(%rsp)
	movq	%rax, 144(%rdi)
	movq	104(%rsp), %rax
	movl	$0xc73b54fc, 120(%rsp)
	movl	$0xc70e37d8, 124(%rsp)
	movl	$5, 48(%rsp)
	movq	%rax, 152(%rdi)
	movq	112(%rsp), %rax
	movb	$79, 52(%rsp)
	movw	%r9w, 54(%rsp)
	movl	$0x416a6c25, 56(%rsp)
	movq	%rax, 160(%rdi)
	movq	120(%rsp), %rax
	movl	$892221775, 60(%rsp)
	movb	$0, 64(%rsp)
	movl	$0xc7987fbf, 72(%rsp)
	movq	%rax, 168(%rdi)
	movq	48(%rsp), %rax
	movl	$0xc7b45695, 76(%rsp)
	movl	$-990336268, 140(%rdi)
	movl	$-1018793263, 176(%rdi)
	movq	%rax, 180(%rdi)
	movq	56(%rsp), %rax
	movq	%rax, 188(%rdi)
	movq	64(%rsp), %rax
	movl	$6, (%rsp)
	movb	$77, 4(%rsp)
	movw	%r10w, 6(%rsp)
	movq	%rax, 196(%rdi)
	movq	72(%rsp), %rax
	movl	$0xc0007840, 8(%rsp)
	movl	$908998221, 12(%rsp)
	movb	$0, 16(%rsp)
	movq	%rax, 204(%rdi)
	movq	(%rsp), %rax
	movl	$0x46fe4f69, 24(%rsp)
	movl	$0x478b03d2, 28(%rsp)
	movl	$-992539152, 212(%rdi)
	movq	%rax, 216(%rdi)
	movq	8(%rsp), %rax
	movl	$1160395686, 248(%rdi)
	movq	%rax, 224(%rdi)
	movq	16(%rsp), %rax
	movq	%rax, 232(%rdi)
	movq	24(%rsp), %rax
	movq	%rax, 240(%rdi)
	addq	$392, %rsp
LCFI1:
	ret
L5:
LCFI2:
	leaq	LC0(%rip), %rdi
	call	_puts
	orl	$-1, %edi
	call	_exit
LFE24:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE29:
	.text
LHOTE29:
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
	.quad	LFB24-.
	.set L$set$2,LFE24-LFB24
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB24
	.long L$set$3
	.byte	0xe
	.byte	0x90,0x3
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
	.align 3
LEFDE1:
	.subsections_via_symbols
