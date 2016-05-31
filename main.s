# GNU C11 (GCC) version 5.3.0 (x86_64-apple-darwin15.0.0)
#	compiled by GNU C version 5.3.0, GMP version 6.0.0, MPFR version 3.1.2-p10, MPC version 1.0.2
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# skickade flaggor:  -D__DYNAMIC__ main.c -fPIC
# -mmacosx-version-min=10.11.5 -mtune=core2 -Wextra -Wall -fverbose-asm
# aktiverade flaggor:  -Wnonportable-cfstrings -fPIC
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
	subq	-24(%rbp), %rax	# s, D.22194
	testq	%rax, %rax	# D.22194
	js	L2	#,
	pxor	%xmm0, %xmm0	# D.22195
	cvtsi2sdq	%rax, %xmm0	# D.22194, D.22195
	jmp	L3	#
L2:
	movq	%rax, %rdx	# D.22194, tmp93
	shrq	%rdx	# tmp93
	andl	$1, %eax	#, tmp94
	orq	%rax, %rdx	# tmp94, tmp93
	pxor	%xmm0, %xmm0	# tmp92
	cvtsi2sdq	%rdx, %xmm0	# tmp93, tmp92
	addsd	%xmm0, %xmm0	# tmp92, D.22195
L3:
	movsd	LC0(%rip), %xmm1	#, tmp96
	divsd	%xmm1, %xmm0	# tmp96, tmp95
	movsd	%xmm0, -8(%rbp)	# tmp95, a
	movq	-8(%rbp), %rax	# a, tmp97
	movq	%rax, %xmm0	# tmp97,
	leaq	LC1(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	_printf	#
	movsd	-8(%rbp), %xmm0	# a, D.22195
	movq	%xmm0, %rax	# D.22195, <retval>
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
	subq	$168, %rsp	#,
LCFI5:
	movl	%edi, -164(%rbp)	# argc, argc
	movq	%rsi, -176(%rbp)	# argv, argv
	movl	$0, %edi	#,
	call	_time	#
	movl	%eax, %edi	# D.22199,
	call	_srand	#
	movl	$40, %edi	#,
	call	_malloc	#
	movq	%rax, -40(%rbp)	# tmp123, timings
	cmpl	$2, -164(%rbp)	#, argc
	jle	L6	#,
	leaq	LC2(%rip), %rdi	#,
	call	_puts	#
	movl	$0, %eax	#, D.22197
	jmp	L14	#
L6:
	cmpl	$2, -164(%rbp)	#, argc
	jne	L8	#,
	movq	-176(%rbp), %rax	# argv, tmp124
	addq	$8, %rax	#, D.22200
	movq	(%rax), %rax	# *_21, D.22201
	movq	%rax, %rdi	# D.22201,
	call	_atoi	#
	movl	%eax, -20(%rbp)	# tmp125, N
	movl	-20(%rbp), %eax	# N, tmp126
	movslq	%eax, %rdx	# tmp126, D.22202
	movq	%rdx, %rax	# D.22202, tmp127
	salq	$3, %rax	#, tmp127
	addq	%rdx, %rax	# D.22202, tmp127
	salq	$2, %rax	#, tmp128
	movq	%rax, %rdi	# D.22202,
	call	_malloc	#
	movq	%rax, -32(%rbp)	# tmp129, stars
	leaq	LC3(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp130, start
	movl	-20(%rbp), %edx	# N, tmp131
	movq	-32(%rbp), %rax	# stars, tmp132
	movl	%edx, %esi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	_create_random_array	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp133, end
	movq	-56(%rbp), %rdx	# end, tmp134
	movq	-48(%rbp), %rax	# start, tmp135
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	_printtime	#
	movq	%xmm0, %rdx	#, D.22203
	movq	-40(%rbp), %rax	# timings, tmp136
	movq	%rdx, (%rax)	# D.22203, *timings_16
	jmp	L9	#
L8:
	movl	$7, -20(%rbp)	#, N
	movl	-20(%rbp), %eax	# N, tmp137
	movslq	%eax, %rdx	# tmp137, D.22202
	movq	%rdx, %rax	# D.22202, tmp138
	salq	$3, %rax	#, tmp138
	addq	%rdx, %rax	# D.22202, tmp138
	salq	$2, %rax	#, tmp139
	movq	%rax, %rdi	# D.22202,
	call	_malloc	#
	movq	%rax, -32(%rbp)	# tmp140, stars
	movl	-20(%rbp), %edx	# N, tmp141
	movq	-32(%rbp), %rax	# stars, tmp142
	movl	%edx, %esi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	_create_ref_star_array	#
L9:
	leaq	LC4(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp143, start
	movl	-20(%rbp), %edx	# N, tmp144
	movq	-32(%rbp), %rax	# stars, tmp145
	movl	%edx, %esi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	_merge_sort	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp146, end
	movq	-40(%rbp), %rax	# timings, tmp147
	leaq	8(%rax), %rbx	#, D.22204
	movq	-56(%rbp), %rdx	# end, tmp148
	movq	-48(%rbp), %rax	# start, tmp149
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22203
	movq	%rax, (%rbx)	# D.22203, *_50
	leaq	LC5(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp150, start
	movl	-20(%rbp), %eax	# N, tmp151
	cltq
	salq	$3, %rax	#, D.22202
	movq	%rax, %rdi	# D.22202,
	call	_malloc	#
	movq	%rax, -64(%rbp)	# tmp152, matrix
	movl	$0, -24(%rbp)	#, i
	jmp	L10	#
L11:
	movl	-24(%rbp), %eax	# i, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22202
	movq	-64(%rbp), %rax	# matrix, tmp154
	leaq	(%rdx,%rax), %rbx	#, D.22205
	movl	-20(%rbp), %eax	# N, tmp155
	cltq
	salq	$2, %rax	#, D.22202
	movq	%rax, %rdi	# D.22202,
	call	_malloc	#
	movq	%rax, (%rbx)	# D.22206, *_64
	addl	$1, -24(%rbp)	#, i
L10:
	movl	-24(%rbp), %eax	# i, tmp157
	cmpl	-20(%rbp), %eax	# N, tmp157
	jl	L11	#,
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp158, end
	movq	-40(%rbp), %rax	# timings, tmp159
	leaq	16(%rax), %rbx	#, D.22204
	movq	-56(%rbp), %rdx	# end, tmp160
	movq	-48(%rbp), %rax	# start, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22203
	movq	%rax, (%rbx)	# D.22203, *_73
	leaq	LC6(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp162, start
	movl	-20(%rbp), %edx	# N, tmp163
	movq	-64(%rbp), %rcx	# matrix, tmp164
	movq	-32(%rbp), %rax	# stars, tmp165
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	_fill_matrix	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp166, end
	movq	-40(%rbp), %rax	# timings, tmp167
	leaq	24(%rax), %rbx	#, D.22204
	movq	-56(%rbp), %rdx	# end, tmp168
	movq	-48(%rbp), %rax	# start, tmp169
	movq	%rdx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22203
	movq	%rax, (%rbx)	# D.22203, *_83
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp170, start
	movl	-20(%rbp), %edx	# N, tmp171
	movq	-32(%rbp), %rax	# stars, tmp172
	movl	%edx, %esi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	_getXvec	#
	movq	%rax, -72(%rbp)	# tmp173, xv
	movl	-20(%rbp), %edx	# N, tmp174
	movq	-32(%rbp), %rax	# stars, tmp175
	movl	%edx, %esi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	_getYvec	#
	movq	%rax, -80(%rbp)	# tmp176, yv
	movl	-20(%rbp), %edx	# N, tmp177
	movq	-32(%rbp), %rax	# stars, tmp178
	movl	%edx, %esi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	_getZvec	#
	movq	%rax, -88(%rbp)	# tmp179, zv
	movl	-20(%rbp), %edx	# N, tmp180
	movq	-32(%rbp), %rax	# stars, tmp181
	movl	%edx, %esi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	_getSFvec	#
	movq	%rax, -96(%rbp)	# tmp182, sf
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp183, end
	movq	-56(%rbp), %rdx	# end, tmp184
	movq	-48(%rbp), %rax	# start, tmp185
	movq	%rdx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	_printtime	#
	movl	-20(%rbp), %eax	# N, tmp186
	imull	-20(%rbp), %eax	# N, D.22197
	cltq
	salq	$2, %rax	#, D.22202
	movq	%rax, %rdi	# D.22202,
	call	_malloc	#
	movq	%rax, -104(%rbp)	# tmp187, matrix2
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp188, start
	movq	-96(%rbp), %r8	# sf, tmp189
	movq	-88(%rbp), %rdi	# zv, tmp190
	movq	-80(%rbp), %rcx	# yv, tmp191
	movq	-72(%rbp), %rdx	# xv, tmp192
	movl	-20(%rbp), %esi	# N, tmp193
	movq	-104(%rbp), %rax	# matrix2, tmp194
	movq	%r8, %r9	# tmp189,
	movq	%rdi, %r8	# tmp190,
	movq	%rax, %rdi	# tmp194,
	call	_fill_mat_avx	#
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp195, end
	movq	-40(%rbp), %rax	# timings, tmp196
	leaq	24(%rax), %rbx	#, D.22204
	movq	-56(%rbp), %rdx	# end, tmp197
	movq	-48(%rbp), %rax	# start, tmp198
	movq	%rdx, %rsi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22203
	movq	%rax, (%rbx)	# D.22203, *_110
	leaq	LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_printf	#
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp199, start
	movl	$4, %esi	#,
	movl	$10, %edi	#,
	call	_calloc	#
	movq	%rax, -112(%rbp)	# tmp200, histogram
	movl	-20(%rbp), %edx	# N, tmp201
	movq	-112(%rbp), %rsi	# histogram, tmp202
	movq	-64(%rbp), %rax	# matrix, tmp203
	movl	$10, %ecx	#,
	movq	%rax, %rdi	# tmp203,
	call	_generate_histogram	#
	movq	%rax, %rdx	#, tmp204
	movq	%xmm0, %rax	#, tmp205
	movq	%rdx, -144(%rbp)	# tmp204, histparams
	movq	%rax, -136(%rbp)	# tmp205, histparams
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp206, end
	movq	-40(%rbp), %rax	# timings, tmp207
	leaq	32(%rax), %rbx	#, D.22204
	movq	-56(%rbp), %rdx	# end, tmp208
	movq	-48(%rbp), %rax	# start, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	_printtime	#
	movq	%xmm0, %rax	#, D.22203
	movq	%rax, (%rbx)	# D.22203, *_122
	call	_clock	#
	movq	%rax, -48(%rbp)	# tmp210, start
	movl	$4, %esi	#,
	movl	$10, %edi	#,
	call	_calloc	#
	movq	%rax, -120(%rbp)	# tmp211, hist
	movl	-20(%rbp), %edx	# N, tmp212
	movq	-120(%rbp), %rsi	# hist, tmp213
	movq	-104(%rbp), %rax	# matrix2, tmp214
	movl	$10, %ecx	#,
	movq	%rax, %rdi	# tmp214,
	call	_gen_hist_opt	#
	movq	%rax, %rdx	#, tmp215
	movq	%xmm0, %rax	#, tmp216
	movq	%rdx, -160(%rbp)	# tmp215, para
	movq	%rax, -152(%rbp)	# tmp216, para
	call	_clock	#
	movq	%rax, -56(%rbp)	# tmp217, end
	movq	-56(%rbp), %rdx	# end, tmp218
	movq	-48(%rbp), %rax	# start, tmp219
	movq	%rdx, %rsi	# tmp218,
	movq	%rax, %rdi	# tmp219,
	call	_printtime	#
	movq	-144(%rbp), %rcx	# histparams, tmp220
	movq	-136(%rbp), %rdx	# histparams, tmp221
	movq	-112(%rbp), %rax	# histogram, tmp222
	movq	%rcx, %rsi	# tmp220,
	movq	%rdx, %xmm0	# tmp221,
	movq	%rax, %rdi	# tmp222,
	call	_display_histogram	#
	movq	-40(%rbp), %rdx	# timings, tmp223
	movl	-20(%rbp), %eax	# N, tmp224
	movq	%rdx, %rsi	# tmp223,
	movl	%eax, %edi	# tmp224,
	call	_saveToFile	#
	movq	-32(%rbp), %rax	# stars, tmp225
	movq	%rax, %rdi	# tmp225,
	call	_free	#
	movl	$0, -24(%rbp)	#, i
	jmp	L12	#
L13:
	movl	-24(%rbp), %eax	# i, tmp226
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22202
	movq	-64(%rbp), %rax	# matrix, tmp227
	addq	%rdx, %rax	# D.22202, D.22205
	movq	(%rax), %rax	# *_140, D.22207
	movq	%rax, %rdi	# D.22207,
	call	_free	#
	addl	$1, -24(%rbp)	#, i
L12:
	movl	-24(%rbp), %eax	# i, tmp228
	cmpl	-20(%rbp), %eax	# N, tmp228
	jl	L13	#,
	movq	-64(%rbp), %rax	# matrix, tmp229
	movq	%rax, %rdi	# tmp229,
	call	_free	#
	movq	-104(%rbp), %rax	# matrix2, tmp230
	movq	%rax, %rdi	# tmp230,
	call	_free	#
	movq	-40(%rbp), %rax	# timings, tmp231
	movq	%rax, %rdi	# tmp231,
	call	_free	#
	movl	$0, %eax	#, D.22197
L14:
	addq	$168, %rsp	#,
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
