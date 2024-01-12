.LC0:
        .string "withoutLoops\n"
foo():
        push    r15
        mov     edi, 1048576
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 152
        call    operator new[](unsigned long)
        mov     edi, 1048576
        mov     r12, rax
        call    operator new[](unsigned long)
        mov     edi, 1048576
        mov     r13, rax
        call    operator new[](unsigned long)
        mov     edx, 13
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:_ZSt4cout
        mov     rbx, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
        mov     rbp, rbx
        lea     rax, [r12+32768]
        xor     esi, esi
.L2:
        add     esi, 16
        mov     rdi, r13
        mov     r14, rax
        mov     r15d, 1
.L10:
        mov     rcx, rbp
        mov     r10, rdi
        xor     r8d, r8d
        mov     r9, rbx
        lea     r11, [r14-32768]
.L8:
        mov     QWORD PTR [rsp+128], r12
        mov     rdx, r11
        mov     rbx, rcx
        mov     QWORD PTR [rsp+136], r13
.L6:
        movd    xmm4, DWORD PTR [rdx+4]
        movd    xmm3, DWORD PTR [rdx]
        mov     QWORD PTR [rsp], r10
        mov     r13, rbx
        mov     r12d, DWORD PTR [rdx+56]
        movd    xmm15, DWORD PTR [rdx+20]
        pshufd  xmm4, xmm4, 0
        pshufd  xmm5, xmm3, 0
        movd    xmm3, DWORD PTR [rdx+8]
        movd    xmm13, DWORD PTR [rdx+24]
        movdqa  xmm2, xmm4
        movdqa  xmm1, xmm5
        mov     DWORD PTR [rsp+120], r12d
        mov     r12d, DWORD PTR [rdx+60]
        psrlq   xmm2, 32
        psrlq   xmm1, 32
        pshufd  xmm3, xmm3, 0
        movd    xmm12, DWORD PTR [rdx+28]
        movaps  XMMWORD PTR [rsp+32], xmm2
        movd    xmm2, DWORD PTR [rdx+12]
        movd    xmm11, DWORD PTR [rdx+32]
        movaps  XMMWORD PTR [rsp+16], xmm1
        movdqa  xmm1, xmm3
        movd    xmm10, DWORD PTR [rdx+36]
        movd    xmm9, DWORD PTR [rdx+40]
        psrlq   xmm1, 32
        pshufd  xmm2, xmm2, 0
        mov     DWORD PTR [rsp+124], r12d
        movd    xmm8, DWORD PTR [rdx+44]
        movaps  XMMWORD PTR [rsp+48], xmm1
        movdqa  xmm1, xmm2
        lea     r12, [rbx+64]
        movd    xmm7, DWORD PTR [rdx+48]
        psrlq   xmm1, 32
        movd    xmm6, DWORD PTR [rdx+52]
        mov     QWORD PTR [rsp+112], r12
        mov     r12, r10
        movaps  XMMWORD PTR [rsp+64], xmm1
        movd    xmm1, DWORD PTR [rdx+16]
        pshufd  xmm1, xmm1, 0
        movdqa  xmm0, xmm1
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+80], xmm0
.L3:
        movdqu  xmm0, XMMWORD PTR [r12]
        movdqu  xmm14, XMMWORD PTR [r12]
        add     r13, 16
        add     r12, 16
        pmuludq xmm0, xmm5
        psrlq   xmm14, 32
        pmuludq xmm14, XMMWORD PTR [rsp+16]
        pshufd  xmm14, xmm14, 8
        pshufd  xmm0, xmm0, 8
        punpckldq       xmm0, xmm14
        movdqu  xmm14, XMMWORD PTR [r13-16]
        paddd   xmm0, xmm14
        movdqu  xmm14, XMMWORD PTR [r12+2032]
        movaps  XMMWORD PTR [rsp], xmm0
        movdqu  xmm0, XMMWORD PTR [r12+2032]
        psrlq   xmm14, 32
        pmuludq xmm14, XMMWORD PTR [rsp+32]
        pshufd  xmm14, xmm14, 8
        pmuludq xmm0, xmm4
        pshufd  xmm0, xmm0, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        movdqu  xmm0, XMMWORD PTR [r12+4080]
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+4080]
        pmuludq xmm0, xmm3
        psrlq   xmm14, 32
        pmuludq xmm14, XMMWORD PTR [rsp+48]
        pshufd  xmm14, xmm14, 8
        pshufd  xmm0, xmm0, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+6128]
        movaps  XMMWORD PTR [rsp], xmm0
        psrlq   xmm14, 32
        movdqu  xmm0, XMMWORD PTR [r12+6128]
        pmuludq xmm14, XMMWORD PTR [rsp+64]
        pshufd  xmm14, xmm14, 8
        pmuludq xmm0, xmm2
        pshufd  xmm0, xmm0, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        movdqu  xmm0, XMMWORD PTR [r12+8176]
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+8176]
        pmuludq xmm0, xmm1
        psrlq   xmm14, 32
        pmuludq xmm14, XMMWORD PTR [rsp+80]
        pshufd  xmm14, xmm14, 8
        pshufd  xmm0, xmm0, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+10224]
        movaps  XMMWORD PTR [rsp], xmm0
        pshufd  xmm0, xmm15, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+10224]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        pshufd  xmm0, xmm13, 0
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+12272]
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+12272]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+14320]
        movaps  XMMWORD PTR [rsp], xmm0
        pshufd  xmm0, xmm12, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+14320]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        pshufd  xmm0, xmm11, 0
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+16368]
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+16368]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+18416]
        movaps  XMMWORD PTR [rsp], xmm0
        pshufd  xmm0, xmm10, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+18416]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        pshufd  xmm0, xmm9, 0
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+20464]
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+20464]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+22512]
        movaps  XMMWORD PTR [rsp], xmm0
        pshufd  xmm0, xmm8, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+22512]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        pshufd  xmm0, xmm7, 0
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+24560]
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+24560]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+26608]
        movaps  XMMWORD PTR [rsp], xmm0
        pshufd  xmm0, xmm6, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+26608]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        movdqa  xmm14, XMMWORD PTR [rsp]
        paddd   xmm14, xmm0
        movd    xmm0, DWORD PTR [rsp+120]
        movaps  XMMWORD PTR [rsp], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+28656]
        pshufd  xmm0, xmm0, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+28656]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movdqu  xmm14, XMMWORD PTR [r12+30704]
        movaps  XMMWORD PTR [rsp], xmm0
        movd    xmm0, DWORD PTR [rsp+124]
        pshufd  xmm0, xmm0, 0
        pmuludq xmm14, xmm0
        psrlq   xmm0, 32
        movaps  XMMWORD PTR [rsp+96], xmm14
        movdqu  xmm14, XMMWORD PTR [r12+30704]
        psrlq   xmm14, 32
        pmuludq xmm14, xmm0
        pshufd  xmm0, XMMWORD PTR [rsp+96], 8
        pshufd  xmm14, xmm14, 8
        punpckldq       xmm0, xmm14
        paddd   xmm0, XMMWORD PTR [rsp]
        movups  XMMWORD PTR [r13-16], xmm0
        cmp     QWORD PTR [rsp+112], r13
        jne     .L3
        add     rdx, 2048
        add     rbx, 2048
        cmp     rdx, r14
        jne     .L6
        add     r8, 16
        mov     r12, QWORD PTR [rsp+128]
        add     r10, 64
        add     rcx, 64
        mov     r13, QWORD PTR [rsp+136]
        cmp     r8, 512
        jne     .L8
        add     r15d, 16
        mov     rbx, r9
        lea     r14, [rdx+64]
        add     rdi, 32768
        cmp     r15d, 513
        jne     .L10
        add     rbp, 32768
        add     rax, 32768
        cmp     esi, 512
        jne     .L2
        mov     rdi, r9
        mov     ebp, DWORD PTR [r9]
        call    operator delete[](void*)
        mov     rdi, r13
        call    operator delete[](void*)
        mov     rdi, r12
        call    operator delete[](void*)
        add     rsp, 152
        mov     eax, ebp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
        mov     rbx, rax
        jmp     .L13
        mov     rbp, rax
        jmp     .L11
        mov     rbx, rax
        jmp     .L12
foo() [clone .cold]:
.L11:
        mov     rdi, rbx
        mov     rbx, rbp
        call    operator delete[](void*)
.L12:
        mov     rdi, r13
        call    operator delete[](void*)
.L13:
        mov     rdi, r12
        call    operator delete[](void*)
        mov     rdi, rbx
        call    _Unwind_Resume