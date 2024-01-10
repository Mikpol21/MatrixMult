74a75,205
> 	.section	.text._ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_,"axG",@progbits,_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_,comdat
> 	.p2align 4
> 	.weak	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
> 	.type	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_, @function
> _ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_:
> .LFB2354:
> 	.cfi_startproc
> 	endbr64
> 	pushq	%r15
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 15, -16
> 	pushq	%r14
> 	.cfi_def_cfa_offset 24
> 	.cfi_offset 14, -24
> 	movq	%rdx, %r14
> 	pushq	%r13
> 	.cfi_def_cfa_offset 32
> 	.cfi_offset 13, -32
> 	movq	%rsi, %r13
> 	pushq	%r12
> 	.cfi_def_cfa_offset 40
> 	.cfi_offset 12, -40
> 	movl	4(%r13), %edx
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 48
> 	.cfi_offset 6, -48
> 	pushq	%rbx
> 	.cfi_def_cfa_offset 56
> 	.cfi_offset 3, -56
> 	movl	4(%rdi), %esi
> 	movl	(%rdi), %eax
> 	movl	%esi, -12(%rsp)
> 	testl	%eax, %eax
> 	jle	.L13
> 	testl	%edx, %edx
> 	jle	.L13
> 	testl	%esi, %esi
> 	jle	.L13
> 	subl	$1, %eax
> 	movq	8(%rdi), %rbp
> 	movq	8(%r13), %r15
> 	movq	%rdi, %r12
> 	andl	$-16, %eax
> 	movl	$16, -20(%rsp)
> 	movq	8(%r14), %r10
> 	addl	$32, %eax
> 	movl	%eax, -4(%rsp)
> 	leal	-1(%rdx), %eax
> 	andl	$-16, %eax
> 	addl	$32, %eax
> 	movl	%eax, -8(%rsp)
> 	.p2align 4,,10
> 	.p2align 3
> .L17:
> 	movl	-20(%rsp), %eax
> 	movl	$16, %ebx
> 	subl	$16, %eax
> 	movl	%eax, -16(%rsp)
> 	.p2align 4,,10
> 	.p2align 3
> .L16:
> 	leal	-16(%rbx), %eax
> 	xorl	%r9d, %r9d
> 	movl	%eax, -24(%rsp)
> 	.p2align 4,,10
> 	.p2align 3
> .L18:
> 	movl	-16(%rsp), %r8d
> 	leal	16(%r9), %r11d
> 	.p2align 4,,10
> 	.p2align 3
> .L22:
> 	movl	-24(%rsp), %ecx
> 	.p2align 4,,10
> 	.p2align 3
> .L21:
> 	movl	%r9d, %edx
> 	.p2align 4,,10
> 	.p2align 3
> .L20:
> 	movl	4(%r14), %eax
> 	movl	4(%r12), %edi
> 	movl	4(%r13), %esi
> 	imull	%r8d, %eax
> 	imull	%edx, %esi
> 	imull	%r8d, %edi
> 	addl	%ecx, %eax
> 	addl	%ecx, %esi
> 	cltq
> 	addl	%edx, %edi
> 	movslq	%esi, %rsi
> 	addl	$1, %edx
> 	movslq	%edi, %rdi
> 	movl	0(%rbp,%rdi,4), %edi
> 	imull	(%r15,%rsi,4), %edi
> 	addl	%edi, (%r10,%rax,4)
> 	cmpl	%r11d, %edx
> 	jne	.L20
> 	addl	$1, %ecx
> 	cmpl	%ebx, %ecx
> 	jne	.L21
> 	addl	$1, %r8d
> 	cmpl	-20(%rsp), %r8d
> 	jne	.L22
> 	movl	%edx, %r9d
> 	cmpl	%edx, -12(%rsp)
> 	jg	.L18
> 	leal	16(%rcx), %ebx
> 	cmpl	%ebx, -8(%rsp)
> 	jne	.L16
> 	addl	$16, -20(%rsp)
> 	movl	-20(%rsp), %eax
> 	cmpl	%eax, -4(%rsp)
> 	jne	.L17
> .L13:
> 	popq	%rbx
> 	.cfi_def_cfa_offset 48
> 	popq	%rbp
> 	.cfi_def_cfa_offset 40
> 	popq	%r12
> 	.cfi_def_cfa_offset 32
> 	popq	%r13
> 	.cfi_def_cfa_offset 24
> 	popq	%r14
> 	.cfi_def_cfa_offset 16
> 	popq	%r15
> 	.cfi_def_cfa_offset 8
> 	ret
> 	.cfi_endproc
> .LFE2354:
> 	.size	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_, .-_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
77c208
< 	.string	"loopImpl\n"
---
> 	.string	"withoutLoops\n"
95c226
< 	pushq	%r15
---
> 	pushq	%r12
97c228
< 	.cfi_offset 15, -16
---
> 	.cfi_offset 12, -16
99,107d229
< 	pushq	%r14
< 	.cfi_def_cfa_offset 24
< 	.cfi_offset 14, -24
< 	pushq	%r13
< 	.cfi_def_cfa_offset 32
< 	.cfi_offset 13, -32
< 	pushq	%r12
< 	.cfi_def_cfa_offset 40
< 	.cfi_offset 12, -40
109,116c231,235
< 	.cfi_def_cfa_offset 48
< 	.cfi_offset 6, -48
< 	pushq	%rbx
< 	.cfi_def_cfa_offset 56
< 	.cfi_offset 3, -56
< 	movabsq	$2199023256064, %rbx
< 	subq	$392, %rsp
< 	.cfi_def_cfa_offset 448
---
> 	.cfi_def_cfa_offset 24
> 	.cfi_offset 6, -24
> 	movabsq	$2199023256064, %rbp
> 	subq	$72, %rsp
> 	.cfi_def_cfa_offset 96
118c237
< 	movq	%rax, 376(%rsp)
---
> 	movq	%rax, 56(%rsp)
120c239
< 	movq	%rbx, 336(%rsp)
---
> 	movq	%rbp, (%rsp)
125,126c244,245
< 	movq	%rbx, 352(%rsp)
< 	movq	%rax, 344(%rsp)
---
> 	movq	%rbp, 16(%rsp)
> 	movq	%rax, 8(%rsp)
131c250,251
< 	movq	%rax, 360(%rsp)
---
> 	movq	%rax, 24(%rsp)
> 	movq	%rbp, 32(%rsp)
135,136c255,258
< 	leaq	336(%rsp), %rdi
< 	movq	%rax, %r12
---
> 	movq	%rsp, %rbp
> 	leaq	16(%rsp), %r12
> 	movq	%rax, 40(%rsp)
> 	movq	%rbp, %rdi
138c260
< 	leaq	352(%rsp), %rdi
---
> 	movq	%r12, %rdi
144,410c266,269
< 	movl	336(%rsp), %eax
< 	movl	340(%rsp), %r15d
< 	movl	356(%rsp), %r14d
< 	movl	%eax, 28(%rsp)
< 	testl	%eax, %eax
< 	jle	.L16
< 	movq	344(%rsp), %rax
< 	movq	360(%rsp), %r13
< 	movq	%rax, 160(%rsp)
< 	testl	%r14d, %r14d
< 	jle	.L16
< 	testl	%r15d, %r15d
< 	jle	.L16
< 	movl	%r15d, %eax
< 	movl	%r14d, %ecx
< 	movq	%r12, 16(%rsp)
< 	sall	$4, %eax
< 	sall	$4, %ecx
< 	movq	$0, 8(%rsp)
< 	cltq
< 	movslq	%ecx, %rcx
< 	movq	$0, (%rsp)
< 	movq	%rax, 304(%rsp)
< 	leaq	0(,%rcx,4), %rax
< 	addq	%r13, %rcx
< 	movq	%rax, 176(%rsp)
< 	movslq	%r15d, %rax
< 	salq	$2, %rax
< 	movq	%rcx, 208(%rsp)
< 	movq	%rax, 168(%rsp)
< 	movslq	%r14d, %rax
< 	leaq	0(,%rax,4), %rdi
< 	leaq	0(,%rax,8), %r8
< 	movq	%rax, %r9
< 	movl	$0, 24(%rsp)
< 	leaq	0(%r13,%rdi), %rdx
< 	leaq	0(%r13,%r8), %rbx
< 	addq	%rax, %rdi
< 	salq	$5, %r9
< 	movq	%rdx, 184(%rsp)
< 	leaq	(%rax,%rax,2), %rdx
< 	leaq	0(,%rdx,4), %rsi
< 	leaq	0(%r13,%rdx,8), %rcx
< 	salq	$4, %rdx
< 	movq	%rbx, 192(%rsp)
< 	addq	%r13, %rdx
< 	leaq	0(%r13,%rsi), %rbx
< 	movq	%rcx, 224(%rsp)
< 	addq	%rax, %rsi
< 	movq	%r8, %rcx
< 	movq	%rbx, 200(%rsp)
< 	leaq	0(%r13,%rdi,4), %rbx
< 	addq	%rax, %r8
< 	subq	%rax, %rcx
< 	movq	%rdx, 272(%rsp)
< 	leaq	0(%r13,%rsi,4), %rdx
< 	movq	%rbx, 216(%rsp)
< 	leaq	0(%r13,%rcx,4), %rbx
< 	movq	%rdx, 280(%rsp)
< 	leaq	0(%r13,%rcx,8), %rdx
< 	movq	%rbx, 232(%rsp)
< 	leaq	0(%r13,%r9), %rbx
< 	movq	%rdx, 288(%rsp)
< 	movq	%rax, %rdx
< 	movq	%rbx, 240(%rsp)
< 	salq	$4, %rdx
< 	leaq	0(%r13,%r8,4), %rbx
< 	movq	%rbx, 248(%rsp)
< 	subq	%rax, %rdx
< 	leaq	0(%r13,%rdi,8), %rbx
< 	leaq	(%rax,%rdi,2), %rdi
< 	movq	%rbx, 256(%rsp)
< 	leaq	0(%r13,%rdx,4), %rax
< 	leaq	0(%r13,%rdi,4), %rbx
< 	movq	%rbx, 264(%rsp)
< 	movq	%rax, 296(%rsp)
< 	movq	%r12, 328(%rsp)
< 	movl	%r15d, 312(%rsp)
< 	movl	%r14d, 316(%rsp)
< 	movq	%r13, 320(%rsp)
< 	.p2align 4,,10
< 	.p2align 3
< .L18:
< 	movq	8(%rsp), %rbx
< 	movq	160(%rsp), %rax
< 	movq	16(%rsp), %rbp
< 	leaq	(%rax,%rbx,4), %rax
< 	xorl	%ebx, %ebx
< 	movq	%rax, 136(%rsp)
< 	movq	%rbx, %r10
< 	movq	%rbp, %r11
< 	.p2align 4,,10
< 	.p2align 3
< .L17:
< 	movq	136(%rsp), %rbp
< 	xorl	%ebx, %ebx
< 	xorl	%r9d, %r9d
< 	.p2align 4,,10
< 	.p2align 3
< .L19:
< 	movq	184(%rsp), %rax
< 	movl	(%rsp), %edi
< 	movq	%rbp, %rdx
< 	movq	%r11, %r8
< 	addq	%rbx, %rax
< 	movq	%rax, 32(%rsp)
< 	movq	192(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 40(%rsp)
< 	movq	200(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 48(%rsp)
< 	movq	208(%rsp), %rax
< 	leaq	(%rbx,%rax), %r14
< 	movq	216(%rsp), %rax
< 	leaq	(%rbx,%rax), %r13
< 	movq	224(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 56(%rsp)
< 	movq	232(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 64(%rsp)
< 	movq	240(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 72(%rsp)
< 	movq	248(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 80(%rsp)
< 	movq	256(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 88(%rsp)
< 	movq	264(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 96(%rsp)
< 	movq	272(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 104(%rsp)
< 	movq	280(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 112(%rsp)
< 	movq	288(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 120(%rsp)
< 	movq	296(%rsp), %rax
< 	addq	%rbx, %rax
< 	movq	%rax, 128(%rsp)
< 	movq	320(%rsp), %rax
< 	leaq	(%rax,%rbx), %r12
< 	leal	8192(%rdi), %eax
< 	movl	%eax, 152(%rsp)
< 	.p2align 4,,10
< 	.p2align 3
< .L22:
< 	leaq	64(%r8), %rsi
< 	movl	%edi, 156(%rsp)
< 	movq	%r8, %rax
< 	movq	%r10, %rcx
< 	movq	%rsi, 144(%rsp)
< 	.p2align 4,,10
< 	.p2align 3
< .L21:
< 	movq	32(%rsp), %rsi
< 	movl	(%r12,%rcx,4), %r15d
< 	imull	(%rdx), %r15d
< 	addl	(%rax), %r15d
< 	movl	%r15d, (%rax)
< 	movl	(%rsi,%rcx,4), %esi
< 	imull	4(%rdx), %esi
< 	movq	56(%rsp), %rdi
< 	addl	%esi, %r15d
< 	movq	40(%rsp), %rsi
< 	movl	%r15d, (%rax)
< 	movl	(%rsi,%rcx,4), %esi
< 	imull	8(%rdx), %esi
< 	addl	%r15d, %esi
< 	movq	48(%rsp), %r15
< 	movl	%esi, (%rax)
< 	movl	(%r15,%rcx,4), %r15d
< 	imull	12(%rdx), %r15d
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	(%r14,%rcx,4), %r15d
< 	imull	16(%rdx), %r15d
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	0(%r13,%rcx,4), %esi
< 	imull	20(%rdx), %esi
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	24(%rdx), %esi
< 	imull	(%rdi,%rcx,4), %esi
< 	movq	64(%rsp), %rdi
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	28(%rdx), %r15d
< 	imull	(%rdi,%rcx,4), %r15d
< 	movq	72(%rsp), %rdi
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	32(%rdx), %r15d
< 	imull	(%rdi,%rcx,4), %r15d
< 	movq	80(%rsp), %rdi
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	36(%rdx), %esi
< 	imull	(%rdi,%rcx,4), %esi
< 	movq	88(%rsp), %rdi
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	40(%rdx), %esi
< 	imull	(%rdi,%rcx,4), %esi
< 	movq	96(%rsp), %rdi
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	44(%rdx), %r15d
< 	imull	(%rdi,%rcx,4), %r15d
< 	movq	104(%rsp), %rdi
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	48(%rdx), %r15d
< 	imull	(%rdi,%rcx,4), %r15d
< 	movq	112(%rsp), %rdi
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	52(%rdx), %esi
< 	imull	(%rdi,%rcx,4), %esi
< 	movq	120(%rsp), %rdi
< 	addl	%esi, %r15d
< 	movl	%r15d, (%rax)
< 	movl	56(%rdx), %esi
< 	imull	(%rdi,%rcx,4), %esi
< 	movq	128(%rsp), %rdi
< 	addl	%r15d, %esi
< 	movl	%esi, (%rax)
< 	movl	60(%rdx), %r15d
< 	imull	(%rdi,%rcx,4), %r15d
< 	addl	%r15d, %esi
< 	addq	$1, %rcx
< 	addq	$4, %rax
< 	movl	%esi, -4(%rax)
< 	cmpq	144(%rsp), %rax
< 	jne	.L21
< 	movl	156(%rsp), %edi
< 	addq	$2048, %r8
< 	addq	168(%rsp), %rdx
< 	addl	$512, %edi
< 	cmpl	152(%rsp), %edi
< 	jne	.L22
< 	addl	$16, %r9d
< 	addq	$64, %rbp
< 	addq	176(%rsp), %rbx
< 	cmpl	%r9d, 312(%rsp)
< 	jg	.L19
< 	addq	$16, %r10
< 	addq	$64, %r11
< 	cmpl	%r10d, 316(%rsp)
< 	jg	.L17
< 	addl	$16, 24(%rsp)
< 	movl	24(%rsp), %eax
< 	movq	304(%rsp), %rdx
< 	addq	%rdx, 8(%rsp)
< 	addq	$8192, (%rsp)
< 	addq	$32768, 16(%rsp)
< 	cmpl	%eax, 28(%rsp)
< 	jg	.L18
< 	movq	328(%rsp), %r12
< .L16:
---
> 	leaq	32(%rsp), %rdx
> 	movq	%r12, %rsi
> 	movq	%rbp, %rdi
> 	call	_ZN11cacheBlocks8multiplyIiEEvRK6MatrixIT_ES5_RS3_
415c274
< 	movl	(%r12), %esi
---
> 	movq	40(%rsp), %rax
416a276
> 	movl	(%rax), %esi
422c282,284
< 	movq	%r12, %rdi
---
> 	movq	40(%rsp), %rdi
> 	testq	%rdi, %rdi
> 	je	.L29
424c286,287
< 	movq	360(%rsp), %rdi
---
> .L29:
> 	movq	24(%rsp), %rdi
426c289
< 	je	.L24
---
> 	je	.L30
428,429c291,292
< .L24:
< 	movq	344(%rsp), %rdi
---
> .L30:
> 	movq	8(%rsp), %rdi
431c294
< 	je	.L25
---
> 	je	.L31
433,434c296,297
< .L25:
< 	movq	376(%rsp), %rax
---
> .L31:
> 	movq	56(%rsp), %rax
436,437c299,300
< 	jne	.L52
< 	addq	$392, %rsp
---
> 	jne	.L62
> 	addq	$72, %rsp
439c302
< 	.cfi_def_cfa_offset 56
---
> 	.cfi_def_cfa_offset 24
441,442d303
< 	popq	%rbx
< 	.cfi_def_cfa_offset 48
444,449d304
< 	.cfi_def_cfa_offset 40
< 	popq	%r12
< 	.cfi_def_cfa_offset 32
< 	popq	%r13
< 	.cfi_def_cfa_offset 24
< 	popq	%r14
451c306
< 	popq	%r15
---
> 	popq	%r12
454c309
< .L52:
---
> .L62:
457c312
< .L34:
---
> .L41:
460,461c315,316
< 	jmp	.L26
< .L33:
---
> 	jmp	.L32
> .L40:
464,465c319,320
< 	jmp	.L27
< .L32:
---
> 	jmp	.L34
> .L39:
468c323
< 	jmp	.L29
---
> 	jmp	.L36
483c338
< 	.uleb128 .L32-.LFB2110
---
> 	.uleb128 .L39-.LFB2110
487c342
< 	.uleb128 .L33-.LFB2110
---
> 	.uleb128 .L40-.LFB2110
491c346
< 	.uleb128 .L34-.LFB2110
---
> 	.uleb128 .L41-.LFB2110
503,511c358,364
< .L26:
< 	.cfi_def_cfa_offset 448
< 	.cfi_offset 3, -56
< 	.cfi_offset 6, -48
< 	.cfi_offset 12, -40
< 	.cfi_offset 13, -32
< 	.cfi_offset 14, -24
< 	.cfi_offset 15, -16
< 	movq	%r12, %rdi
---
> .L32:
> 	.cfi_def_cfa_offset 96
> 	.cfi_offset 6, -24
> 	.cfi_offset 12, -16
> 	movq	40(%rsp), %rdi
> 	testq	%rdi, %rdi
> 	je	.L34
513,514c366,367
< .L27:
< 	movq	360(%rsp), %rdi
---
> .L34:
> 	movq	24(%rsp), %rdi
516c369
< 	je	.L29
---
> 	je	.L36
518,519c371,372
< .L29:
< 	movq	344(%rsp), %rdi
---
> .L36:
> 	movq	8(%rsp), %rdi
521c374
< 	je	.L30
---
> 	je	.L37
523c376
< .L30:
---
> .L37:
553c406
< .LFB2604:
---
> .LFB2606:
567c420
< .LFE2604:
---
> .LFE2606:
