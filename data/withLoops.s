	.file	"assemblyDiffCode.cpp"
	.text
	.p2align 4
	.globl	_Z10randomFillR6MatrixIiE
	.type	_Z10randomFillR6MatrixIiE, @function
_Z10randomFillR6MatrixIiE:
.LFB1664:
	.cfi_startproc
	endbr64
	movl	(%rdi), %edx
	testl	%edx, %edx
	jle	.L9
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	4(%rdi), %eax
	.p2align 4,,10
	.p2align 3
.L6:
	testl	%eax, %eax
	jle	.L3
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L4:
	imull	%ebp, %eax
	movq	8(%r12), %rdx
	addl	%ebx, %eax
	addl	$1, %ebx
	cltq
	leaq	(%rdx,%rax,4), %r13
	call	rand@PLT
	movl	%eax, 0(%r13)
	movl	4(%r12), %eax
	cmpl	%ebx, %eax
	jg	.L4
	movl	(%r12), %edx
.L3:
	addl	$1, %ebp
	cmpl	%edx, %ebp
	jl	.L6
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret
	.cfi_endproc
.LFE1664:
	.size	_Z10randomFillR6MatrixIiE, .-_Z10randomFillR6MatrixIiE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"loopImpl\n"
.LC1:
	.string	"C(0, 0) = "
.LC2:
	.string	"\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2110:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2110
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1048576, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$2199023256064, %rbx
	subq	$392, %rsp
	.cfi_def_cfa_offset 448
	movq	%fs:40, %rax
	movq	%rax, 376(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 336(%rsp)
.LEHB0:
	call	_Znam@PLT
.LEHE0:
	movl	$1048576, %edi
	movq	%rbx, 352(%rsp)
	movq	%rax, 344(%rsp)
.LEHB1:
	call	_Znam@PLT
.LEHE1:
	movl	$1048576, %edi
	movq	%rax, 360(%rsp)
.LEHB2:
	call	_Znam@PLT
.LEHE2:
	leaq	336(%rsp), %rdi
	movq	%rax, %r12
	call	_Z10randomFillR6MatrixIiE
	leaq	352(%rsp), %rdi
	call	_Z10randomFillR6MatrixIiE
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	336(%rsp), %eax
	movl	340(%rsp), %r15d
	movl	356(%rsp), %r14d
	movl	%eax, 28(%rsp)
	testl	%eax, %eax
	jle	.L16
	movq	344(%rsp), %rax
	movq	360(%rsp), %r13
	movq	%rax, 160(%rsp)
	testl	%r14d, %r14d
	jle	.L16
	testl	%r15d, %r15d
	jle	.L16
	movl	%r15d, %eax
	movl	%r14d, %ecx
	movq	%r12, 16(%rsp)
	sall	$4, %eax
	sall	$4, %ecx
	movq	$0, 8(%rsp)
	cltq
	movslq	%ecx, %rcx
	movq	$0, (%rsp)
	movq	%rax, 304(%rsp)
	leaq	0(,%rcx,4), %rax
	addq	%r13, %rcx
	movq	%rax, 176(%rsp)
	movslq	%r15d, %rax
	salq	$2, %rax
	movq	%rcx, 208(%rsp)
	movq	%rax, 168(%rsp)
	movslq	%r14d, %rax
	leaq	0(,%rax,4), %rdi
	leaq	0(,%rax,8), %r8
	movq	%rax, %r9
	movl	$0, 24(%rsp)
	leaq	0(%r13,%rdi), %rdx
	leaq	0(%r13,%r8), %rbx
	addq	%rax, %rdi
	salq	$5, %r9
	movq	%rdx, 184(%rsp)
	leaq	(%rax,%rax,2), %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	0(%r13,%rdx,8), %rcx
	salq	$4, %rdx
	movq	%rbx, 192(%rsp)
	addq	%r13, %rdx
	leaq	0(%r13,%rsi), %rbx
	movq	%rcx, 224(%rsp)
	addq	%rax, %rsi
	movq	%r8, %rcx
	movq	%rbx, 200(%rsp)
	leaq	0(%r13,%rdi,4), %rbx
	addq	%rax, %r8
	subq	%rax, %rcx
	movq	%rdx, 272(%rsp)
	leaq	0(%r13,%rsi,4), %rdx
	movq	%rbx, 216(%rsp)
	leaq	0(%r13,%rcx,4), %rbx
	movq	%rdx, 280(%rsp)
	leaq	0(%r13,%rcx,8), %rdx
	movq	%rbx, 232(%rsp)
	leaq	0(%r13,%r9), %rbx
	movq	%rdx, 288(%rsp)
	movq	%rax, %rdx
	movq	%rbx, 240(%rsp)
	salq	$4, %rdx
	leaq	0(%r13,%r8,4), %rbx
	movq	%rbx, 248(%rsp)
	subq	%rax, %rdx
	leaq	0(%r13,%rdi,8), %rbx
	leaq	(%rax,%rdi,2), %rdi
	movq	%rbx, 256(%rsp)
	leaq	0(%r13,%rdx,4), %rax
	leaq	0(%r13,%rdi,4), %rbx
	movq	%rbx, 264(%rsp)
	movq	%rax, 296(%rsp)
	movq	%r12, 328(%rsp)
	movl	%r15d, 312(%rsp)
	movl	%r14d, 316(%rsp)
	movq	%r13, 320(%rsp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	8(%rsp), %rbx
	movq	160(%rsp), %rax
	movq	16(%rsp), %rbp
	leaq	(%rax,%rbx,4), %rax
	xorl	%ebx, %ebx
	movq	%rax, 136(%rsp)
	movq	%rbx, %r10
	movq	%rbp, %r11
	.p2align 4,,10
	.p2align 3
.L17:
	movq	136(%rsp), %rbp
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L19:
	movq	184(%rsp), %rax
	movl	(%rsp), %edi
	movq	%rbp, %rdx
	movq	%r11, %r8
	addq	%rbx, %rax
	movq	%rax, 32(%rsp)
	movq	192(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 40(%rsp)
	movq	200(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 48(%rsp)
	movq	208(%rsp), %rax
	leaq	(%rbx,%rax), %r14
	movq	216(%rsp), %rax
	leaq	(%rbx,%rax), %r13
	movq	224(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 56(%rsp)
	movq	232(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 64(%rsp)
	movq	240(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 72(%rsp)
	movq	248(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 80(%rsp)
	movq	256(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 88(%rsp)
	movq	264(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 96(%rsp)
	movq	272(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 104(%rsp)
	movq	280(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 112(%rsp)
	movq	288(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 120(%rsp)
	movq	296(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 128(%rsp)
	movq	320(%rsp), %rax
	leaq	(%rax,%rbx), %r12
	leal	8192(%rdi), %eax
	movl	%eax, 152(%rsp)
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	64(%r8), %rsi
	movl	%edi, 156(%rsp)
	movq	%r8, %rax
	movq	%r10, %rcx
	movq	%rsi, 144(%rsp)
	.p2align 4,,10
	.p2align 3
.L21:
	movq	32(%rsp), %rsi
	movl	(%r12,%rcx,4), %r15d
	imull	(%rdx), %r15d
	addl	(%rax), %r15d
	movl	%r15d, (%rax)
	movl	(%rsi,%rcx,4), %esi
	imull	4(%rdx), %esi
	movq	56(%rsp), %rdi
	addl	%esi, %r15d
	movq	40(%rsp), %rsi
	movl	%r15d, (%rax)
	movl	(%rsi,%rcx,4), %esi
	imull	8(%rdx), %esi
	addl	%r15d, %esi
	movq	48(%rsp), %r15
	movl	%esi, (%rax)
	movl	(%r15,%rcx,4), %r15d
	imull	12(%rdx), %r15d
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	(%r14,%rcx,4), %r15d
	imull	16(%rdx), %r15d
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	0(%r13,%rcx,4), %esi
	imull	20(%rdx), %esi
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	24(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movq	64(%rsp), %rdi
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	28(%rdx), %r15d
	imull	(%rdi,%rcx,4), %r15d
	movq	72(%rsp), %rdi
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	32(%rdx), %r15d
	imull	(%rdi,%rcx,4), %r15d
	movq	80(%rsp), %rdi
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	36(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movq	88(%rsp), %rdi
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	40(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movq	96(%rsp), %rdi
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	44(%rdx), %r15d
	imull	(%rdi,%rcx,4), %r15d
	movq	104(%rsp), %rdi
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	48(%rdx), %r15d
	imull	(%rdi,%rcx,4), %r15d
	movq	112(%rsp), %rdi
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	52(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movq	120(%rsp), %rdi
	addl	%esi, %r15d
	movl	%r15d, (%rax)
	movl	56(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movq	128(%rsp), %rdi
	addl	%r15d, %esi
	movl	%esi, (%rax)
	movl	60(%rdx), %r15d
	imull	(%rdi,%rcx,4), %r15d
	addl	%r15d, %esi
	addq	$1, %rcx
	addq	$4, %rax
	movl	%esi, -4(%rax)
	cmpq	144(%rsp), %rax
	jne	.L21
	movl	156(%rsp), %edi
	addq	$2048, %r8
	addq	168(%rsp), %rdx
	addl	$512, %edi
	cmpl	152(%rsp), %edi
	jne	.L22
	addl	$16, %r9d
	addq	$64, %rbp
	addq	176(%rsp), %rbx
	cmpl	%r9d, 312(%rsp)
	jg	.L19
	addq	$16, %r10
	addq	$64, %r11
	cmpl	%r10d, 316(%rsp)
	jg	.L17
	addl	$16, 24(%rsp)
	movl	24(%rsp), %eax
	movq	304(%rsp), %rdx
	addq	%rdx, 8(%rsp)
	addq	$8192, (%rsp)
	addq	$32768, 16(%rsp)
	cmpl	%eax, 28(%rsp)
	jg	.L18
	movq	328(%rsp), %r12
.L16:
	movl	$10, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	(%r12), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC2(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE3:
	movq	%r12, %rdi
	call	_ZdaPv@PLT
	movq	360(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L24
	call	_ZdaPv@PLT
.L24:
	movq	344(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L25
	call	_ZdaPv@PLT
.L25:
	movq	376(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L52
	addq	$392, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L52:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	endbr64
	movq	%rax, %rbp
	jmp	.L26
.L33:
	endbr64
	movq	%rax, %rbp
	jmp	.L27
.L32:
	endbr64
	movq	%rax, %rbp
	jmp	.L29
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2110-.LLSDACSB2110
.LLSDACSB2110:
	.uleb128 .LEHB0-.LFB2110
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2110
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L32-.LFB2110
	.uleb128 0
	.uleb128 .LEHB2-.LFB2110
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L33-.LFB2110
	.uleb128 0
	.uleb128 .LEHB3-.LFB2110
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L34-.LFB2110
	.uleb128 0
.LLSDACSE2110:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2110
	.type	main.cold, @function
main.cold:
.LFSB2110:
.L26:
	.cfi_def_cfa_offset 448
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	_ZdaPv@PLT
.L27:
	movq	360(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L29
	call	_ZdaPv@PLT
.L29:
	movq	344(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L30
	call	_ZdaPv@PLT
.L30:
	movq	%rbp, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2110:
	.section	.gcc_except_table
.LLSDAC2110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2110-.LLSDACSBC2110
.LLSDACSBC2110:
	.uleb128 .LEHB4-.LCOLDB3
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2110:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.p2align 4
	.type	_GLOBAL__sub_I__Z10randomFillR6MatrixIiE, @function
_GLOBAL__sub_I__Z10randomFillR6MatrixIiE:
.LFB2604:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2604:
	.size	_GLOBAL__sub_I__Z10randomFillR6MatrixIiE, .-_GLOBAL__sub_I__Z10randomFillR6MatrixIiE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10randomFillR6MatrixIiE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
