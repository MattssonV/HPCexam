# GNU C11 (GCC) version 5.3.0 (x86_64-apple-darwin15.0.0)
#	compiled by GNU C version 5.3.0, GMP version 6.0.0, MPFR version 3.1.2-p10, MPC version 1.0.2
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D__DYNAMIC__ main.c -fPIC -mmacosx-version-min=10.11.5
# -mtune=core2 -Wextra -Wall -fverbose-asm
# options enabled:  -Wnonportable-cfstrings -fPIC
# -faggressive-loop-optimizations -fasynchronous-unwind-tables
# -fauto-inc-dec -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
# -fdelete-null-pointer-checks -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-unique
# -fident -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fnext-runtime -fobjc-abi-version= -fpeephole
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -gstrict-dwarf -m128bit-long-double -m64 -m80387 -malign-stringops
# -matt-stubs -mconstant-cfstrings -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
# -msse2 -msse3 -mvzeroupper

	.cstring
LC1:
	.ascii "time: %f\12\0"
	.text
	.globl _printtime
_printtime:
LFB3469:
	pushq	%rbp	#
LCFI0:
	movq	%rsp, %rbp	#,
LCFI1:
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# e, e
	movq	-32(%rbp), %rax	# e, tmp91
	subq	-24(%rbp), %rax	# s, D.22176
	testq	%rax, %rax	# D.22176
	js	L2	#,
	pxor	%xmm0, %xmm0	# D.22177
	cvtsi2sdq	%rax, %xmm0	# D.22176, D.22177
	jmp	L3	#
L2:
	movq	%rax, %rdx	# D.22176, tmp93
	shrq	%rdx	# tmp93
	andl	$1, %eax	#, tmp94
	orq	%rax, %rdx	# tmp94, tmp93
	pxor	%xmm0, %xmm0	# tmp92
	cvtsi2sdq	%rdx, %xmm0	# tmp93, tmp92
	addsd	%xmm0, %xmm0	# tmp92, D.22177
L3:
	movsd	LC0(%rip), %xmm1	#, tmp96
	divsd	%xmm1, %xmm0	# tmp96, tmp95
	movsd	%xmm0, -8(%rbp)	# tmp95, a
	movq	-8(%rbp), %rax	# a, tmp97
	movq	%rax, %xmm0	# tmp97,
	leaq	LC1(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	_printf	#
	movsd	-8(%rbp), %xmm0	# a, D.22177
	movq	%xmm0, %rax	# D.22177, <retval>
	movq	%rax, %xmm0	# <retval>,
	leave
LCFI2:
	ret
LFE3469:
	.cstring
LC2:
	.ascii "usage: ./a.out N\0"
LC3:
	.ascii "creating random stars: \11\0"
LC4:
	.ascii "sorting stars:    \11\0"
LC5:
	.ascii "allocating matrix: \11\0"
LC6:
	.ascii "filling matrix: \11\0"
LC7:
	.ascii "generating histogram: \11\0"
	.text
	.globl _main
_main:
LFB3470:
	pushq	%rbp	#
LCFI3:
	movq	%rsp, %rbp	#,
LCFI4:
	pushq	%rbx	#
	subq	$120, %rsp	#,
LCFI5:
	movl	%edi, -116(%rbp)	# argc, argc
	movq	%rsi, -128(%rbp)	# argv, argv
	movl	$0, %edi	#,
	call	_time	#
	movl	%eax, %edi	# D.22181,
	call	_srand	#
	movl	$40, %edi	#,
	call	_malloc	#
	movq	%rax, -40(%rbp)	# tmp120, timings
	cmpl	$2, -116(%rbp)	#, argc
	jle	L6	#,
	leaq	LC2(%rip), %rdi	#,
	call	_puts	#
	movl	$0, %eax	#, D.22179
	jmp	L14	#
L6:
	cmpl	$2, -116(%rbp)	#, argc
	jne	L8	#,
	movq	-128(%rbp), %rax	# argv, tmp121
	addq	$8, %rax	#, D.22182
	movq	(%rax), %rax	# *_21, D.22183
	movq	%rax, %rdi	# D.22183,
	call	_atoi	#
	movl	%eax, -20(%rbp)	# tmp122, N
	movl	-20(%rbp), %eax	# N, tmp123
	movslq	%eax, %rdx	# tmp123, D.22184
	movq	%rdx, %rax	# D.22184, tmp124
	salq	$3, %rax	#, tmp124
	addq	%rdx, %rax	# D.22184, tmp124
	salq	$2, %rax	#, tmp125
	movq	%rax, %rdi	# D.22184,
	call	_malloc	#
	movq	%rax, -32(%rbp)	# tmp126, stars
	leaq	LC3(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp127, start
	movl	-20(%rbp), %edx	# N, tmp128
	movq	-32(%rbp), %rax	# stars, tmp129
	movl	%edx, %esi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	_create_random_array	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp130, end
	movq	-56(%rbp), %rdx	# end, tmp131
	movq	-48(%rbp), %rax	# start, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	_printtime	#
	movq	%xmm0, %rdx	#, D.22185
	movq	-40(%rbp), %rax	# timings, tmp133
	movq	%rdx, (%rax)	# D.22185, *timings_16
	jmp	L9	#
L8:
	movl	$7, -20(%rbp)	#, N
	movl	-20(%rbp), %eax	# N, tmp134
	movslq	%eax, %rdx	# tmp134, D.22184
	movq	%rdx, %rax	# D.22184, tmp135
	salq	$3, %rax	#, tmp135
	addq	%rdx, %rax	# D.22184, tmp135
	salq	$2, %rax	#, tmp136
	movq	%rax, %rdi	# D.22184,
	call	_malloc	#
	movq	%rax, -32(%rbp)	# tmp137, stars
	movl	-20(%rbp), %edx	# N, tmp138
	movq	-32(%rbp), %rax	# stars, tmp139
	movl	%edx, %esi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	_create_ref_star_array	#
L9:
	leaq	LC4(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp140, start
	movl	-20(%rbp), %edx	# N, tmp141
	movq	-32(%rbp), %rax	# stars, tmp142
	movl	%edx, %esi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	_merge_sort	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp143, end
	movq	-40(%rbp), %rax	# timings, tmp144
	leaq	8(%rax), %rbx	#, D.22186
	movq	-56(%rbp), %rdx	# end, tmp145
	movq	-48(%rbp), %rax	# start, tmp146
	movq	%rdx, %rsi	# tmp145,
	movq	%rax, %rdi	# tmp146,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22185
	movq	%rax, (%rbx)	# D.22185, *_50
	leaq	LC5(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp147, start
	movl	-20(%rbp), %eax	# N, tmp148
	cltq
	salq	$3, %rax	#, D.22184
	movq	%rax, %rdi	# D.22184,
	call	_malloc	#
	movq	%rax, -64(%rbp)	# tmp149, matrix
	movl	$0, -24(%rbp)	#, i
	jmp	L10	#
L11:
	movl	-24(%rbp), %eax	# i, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22184
	movq	-64(%rbp), %rax	# matrix, tmp151
	leaq	(%rdx,%rax), %rbx	#, D.22187
	movl	-20(%rbp), %eax	# N, tmp152
	cltq
	salq	$2, %rax	#, D.22184
	movq	%rax, %rdi	# D.22184,
	call	_malloc	#
	movq	%rax, (%rbx)	# D.22188, *_64
	addl	$1, -24(%rbp)	#, i
L10:
	movl	-24(%rbp), %eax	# i, tmp154
	cmpl	-20(%rbp), %eax	# N, tmp154
	jl	L11	#,
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp155, end
	movq	-40(%rbp), %rax	# timings, tmp156
	leaq	16(%rax), %rbx	#, D.22186
	movq	-56(%rbp), %rdx	# end, tmp157
	movq	-48(%rbp), %rax	# start, tmp158
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22185
	movq	%rax, (%rbx)	# D.22185, *_73
	leaq	LC6(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp159, start
	movl	-20(%rbp), %edx	# N, tmp160
	movq	-64(%rbp), %rcx	# matrix, tmp161
	movq	-32(%rbp), %rax	# stars, tmp162
	movq	%rcx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	_fill_matrix	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp163, end
	movq	-40(%rbp), %rax	# timings, tmp164
	leaq	24(%rax), %rbx	#, D.22186
	movq	-56(%rbp), %rdx	# end, tmp165
	movq	-48(%rbp), %rax	# start, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22185
	movq	%rax, (%rbx)	# D.22185, *_83
	movl	-20(%rbp), %edx	# N, tmp167
	movq	-64(%rbp), %rax	# matrix, tmp168
	movl	%edx, %esi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	_print_matrix	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp169, start
	movl	-20(%rbp), %edx	# N, tmp170
	movq	-32(%rbp), %rax	# stars, tmp171
	movl	%edx, %esi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	_getXvec	#
	movq	%rax, -72(%rbp)	# tmp172, xv
	movl	-20(%rbp), %edx	# N, tmp173
	movq	-32(%rbp), %rax	# stars, tmp174
	movl	%edx, %esi	# tmp173,
	movq	%rax, %rdi	# tmp174,
	call	_getYvec	#
	movq	%rax, -80(%rbp)	# tmp175, yv
	movl	-20(%rbp), %edx	# N, tmp176
	movq	-32(%rbp), %rax	# stars, tmp177
	movl	%edx, %esi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	_getZvec	#
	movq	%rax, -88(%rbp)	# tmp178, zv
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp179, end
	movq	-56(%rbp), %rdx	# end, tmp180
	movq	-48(%rbp), %rax	# start, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	_printtime	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp182, start
	movq	-88(%rbp), %r8	# zv, tmp183
	movq	-80(%rbp), %rdi	# yv, tmp184
	movq	-72(%rbp), %rcx	# xv, tmp185
	movl	-20(%rbp), %edx	# N, tmp186
	movq	-64(%rbp), %rsi	# matrix, tmp187
	movq	-32(%rbp), %rax	# stars, tmp188
	movq	%r8, %r9	# tmp183,
	movq	%rdi, %r8	# tmp184,
	movq	%rax, %rdi	# tmp188,
	call	_fill_mat_avx	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp189, end
	movl	-20(%rbp), %edx	# N, tmp190
	movq	-64(%rbp), %rax	# matrix, tmp191
	movl	%edx, %esi	# tmp190,
	movq	%rax, %rdi	# tmp191,
	call	_print_matrix	#
	movq	-40(%rbp), %rax	# timings, tmp192
	leaq	24(%rax), %rbx	#, D.22186
	movq	-56(%rbp), %rdx	# end, tmp193
	movq	-48(%rbp), %rax	# start, tmp194
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22185
	movq	%rax, (%rbx)	# D.22185, *_105
	leaq	LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp195, start
	movl	$4, %esi	#,
	movl	$10, %edi	#,
	call	_calloc	#
	movq	%rax, -96(%rbp)	# tmp196, histogram
	movl	-20(%rbp), %edx	# N, tmp197
	movq	-96(%rbp), %rsi	# histogram, tmp198
	movq	-64(%rbp), %rax	# matrix, tmp199
	movl	$10, %ecx	#,
	movq	%rax, %rdi	# tmp199,
	call	_generate_histogram	#
	movq	%rax, %rdx	#, tmp200
	movq	%xmm0, %rax	#, tmp201
	movq	%rdx, -112(%rbp)	# tmp200, histparams
	movq	%rax, -104(%rbp)	# tmp201, histparams
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp202, end
	movq	-40(%rbp), %rax	# timings, tmp203
	leaq	32(%rax), %rbx	#, D.22186
	movq	-56(%rbp), %rdx	# end, tmp204
	movq	-48(%rbp), %rax	# start, tmp205
	movq	%rdx, %rsi	# tmp204,
	movq	%rax, %rdi	# tmp205,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22185
	movq	%rax, (%rbx)	# D.22185, *_117
	movq	-112(%rbp), %rcx	# histparams, tmp206
	movq	-104(%rbp), %rdx	# histparams, tmp207
	movq	-96(%rbp), %rax	# histogram, tmp208
	movq	%rcx, %rsi	# tmp206,
	movq	%rdx, %xmm0	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	_display_histogram	#
	movq	-40(%rbp), %rdx	# timings, tmp209
	movl	-20(%rbp), %eax	# N, tmp210
	movq	%rdx, %rsi	# tmp209,
	movl	%eax, %edi	# tmp210,
	call	_saveToFile	#
	movq	-32(%rbp), %rax	# stars, tmp211
	movq	%rax, %rdi	# tmp211,
	call	_free	#
	movl	$0, -24(%rbp)	#, i
	jmp	L12	#
L13:
	movl	-24(%rbp), %eax	# i, tmp212
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22184
	movq	-64(%rbp), %rax	# matrix, tmp213
	addq	%rdx, %rax	# D.22184, D.22187
	movq	(%rax), %rax	# *_127, D.22189
	movq	%rax, %rdi	# D.22189,
	call	_free	#
	addl	$1, -24(%rbp)	#, i
L12:
	movl	-24(%rbp), %eax	# i, tmp214
	cmpl	-20(%rbp), %eax	# N, tmp214
	jl	L13	#,
	movq	-64(%rbp), %rax	# matrix, tmp215
	movq	%rax, %rdi	# tmp215,
	call	_free	#
	movq	-40(%rbp), %rax	# timings, tmp216
	movq	%rax, %rdi	# tmp216,
	call	_free	#
	movl	$0, %eax	#, D.22179
L14:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
LCFI6:
	ret
LFE3470:
	.literal8
	.align 3
LC0:
	.long	0
	.long	1093567616
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
	.quad	LFB3469-.
	.set L$set$2,LFE3469-LFB3469
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB3469
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3470-.
	.set L$set$7,LFE3470-LFB3470
	.quad L$set$7
	.byte	0
	.byte	0x4
	.set L$set$8,LCFI3-LFB3470
	.long L$set$8
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE3:
	.subsections_via_symbols
