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
	.section	.text._ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_,"axG",@progbits,_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_,comdat
	.p2align 4
	.weak	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
	.type	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_, @function
_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_:
.LFB2354:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	4(%r13), %edx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	4(%rdi), %esi
	movl	(%rdi), %eax
	movl	%esi, -12(%rsp)
	testl	%eax, %eax
	jle	.L13
	testl	%edx, %edx
	jle	.L13
	testl	%esi, %esi
	jle	.L13
	subl	$1, %eax
	movq	8(%rdi), %rbp
	movq	8(%r13), %r15
	movq	%rdi, %r12
	andl	$-16, %eax
	movl	$16, -20(%rsp)
	movq	8(%r14), %r10
	addl	$32, %eax
	movl	%eax, -4(%rsp)
	leal	-1(%rdx), %eax
	andl	$-16, %eax
	addl	$32, %eax
	movl	%eax, -8(%rsp)
	.p2align 4,,10
	.p2align 3
.L17:
	movl	-20(%rsp), %eax
	movl	$16, %ebx
	subl	$16, %eax
	movl	%eax, -16(%rsp)
	.p2align 4,,10
	.p2align 3
.L16:
	leal	-16(%rbx), %eax
	xorl	%r9d, %r9d
	movl	%eax, -24(%rsp)
	.p2align 4,,10
	.p2align 3
.L18:
	movl	-16(%rsp), %r8d
	leal	16(%r9), %r11d
	.p2align 4,,10
	.p2align 3
.L22:
	movl	-24(%rsp), %ecx
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%r9d, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	movl	4(%r14), %eax
	movl	4(%r12), %edi
	movl	4(%r13), %esi
	imull	%r8d, %eax
	imull	%edx, %esi
	imull	%r8d, %edi
	addl	%ecx, %eax
	addl	%ecx, %esi
	cltq
	addl	%edx, %edi
	movslq	%esi, %rsi
	addl	$1, %edx
	movslq	%edi, %rdi
	movl	0(%rbp,%rdi,4), %edi
	imull	(%r15,%rsi,4), %edi
	addl	%edi, (%r10,%rax,4)
	cmpl	%r11d, %edx
	jne	.L20
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	.L21
	addl	$1, %r8d
	cmpl	-20(%rsp), %r8d
	jne	.L22
	movl	%edx, %r9d
	cmpl	%edx, -12(%rsp)
	jg	.L18
	leal	16(%rcx), %ebx
	cmpl	%ebx, -8(%rsp)
	jne	.L16
	addl	$16, -20(%rsp)
	movl	-20(%rsp), %eax
	cmpl	%eax, -4(%rsp)
	jne	.L17
.L13:
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
	.cfi_endproc
.LFE2354:
	.size	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_, .-_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"withoutLoops\n"
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$1048576, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movabsq	$2199023256064, %rbp
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rbp, (%rsp)
.LEHB0:
	call	_Znam@PLT
.LEHE0:
	movl	$1048576, %edi
	movq	%rbp, 16(%rsp)
	movq	%rax, 8(%rsp)
.LEHB1:
	call	_Znam@PLT
.LEHE1:
	movl	$1048576, %edi
	movq	%rax, 24(%rsp)
	movq	%rbp, 32(%rsp)
.LEHB2:
	call	_Znam@PLT
.LEHE2:
	movq	%rsp, %rbp
	leaq	16(%rsp), %r12
	movq	%rax, 40(%rsp)
	movq	%rbp, %rdi
	call	_Z10randomFillR6MatrixIiE
	movq	%r12, %rdi
	call	_Z10randomFillR6MatrixIiE
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	32(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
	movl	$10, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	40(%rsp), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movl	(%rax), %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.LC2(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE3:
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L29
	call	_ZdaPv@PLT
.L29:
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L30
	call	_ZdaPv@PLT
.L30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L31
	call	_ZdaPv@PLT
.L31:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L62
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L41:
	endbr64
	movq	%rax, %rbp
	jmp	.L32
.L40:
	endbr64
	movq	%rax, %rbp
	jmp	.L34
.L39:
	endbr64
	movq	%rax, %rbp
	jmp	.L36
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
	.uleb128 .L39-.LFB2110
	.uleb128 0
	.uleb128 .LEHB2-.LFB2110
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L40-.LFB2110
	.uleb128 0
	.uleb128 .LEHB3-.LFB2110
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L41-.LFB2110
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
.L32:
	.cfi_def_cfa_offset 96
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L34
	call	_ZdaPv@PLT
.L34:
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L36
	call	_ZdaPv@PLT
.L36:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L37
	call	_ZdaPv@PLT
.L37:
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
.LFB2606:
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
.LFE2606:
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
