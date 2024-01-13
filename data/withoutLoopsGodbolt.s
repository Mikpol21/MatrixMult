foo():
        endbr64
        push    rbp
        mov     edi, 1048576
        mov     rbp, rsp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        and     rsp, -32
        sub     rsp, 96
        call    operator new[](unsigned long)
        mov     edi, 1048576
        mov     QWORD PTR [rsp+16], rax
        mov     rbx, rax
        call    operator new[](unsigned long)
        mov     edi, 1048576
        mov     QWORD PTR [rsp+24], rax
        call    operator new[](unsigned long)
        mov     r15, rax
        xor     esi, esi
        lea     rax, [rbx+32768]
        mov     rdi, r15
.L11:
        add     esi, 16
        mov     r11, rax
        xor     ecx, ecx
        mov     r10d, 1
.L13:
        mov     rdx, QWORD PTR [rsp+24]
        mov     QWORD PTR [rsp+8], r15
        xor     r9d, r9d
        lea     r14, [r11-32768]
        lea     r13, [rdx+rcx*4]
        mov     rdx, rdi
.L10:
        mov     QWORD PTR [rsp], rdi
        mov     r8, r14
        mov     r12, rdx
.L8:
        vpbroadcastd    ymm0, DWORD PTR [r8+56]
        vpbroadcastd    ymm14, DWORD PTR [r8]
        mov     rdi, r13
        mov     rbx, r12
        vpbroadcastd    ymm13, DWORD PTR [r8+4]
        vpbroadcastd    ymm12, DWORD PTR [r8+8]
        lea     r15, [r12+64]
        vmovdqa YMMWORD PTR [rsp+32], ymm0
        vpbroadcastd    ymm0, DWORD PTR [r8+60]
        vpbroadcastd    ymm11, DWORD PTR [r8+12]
        vpbroadcastd    ymm10, DWORD PTR [r8+16]
        vpbroadcastd    ymm9, DWORD PTR [r8+20]
        vpbroadcastd    ymm8, DWORD PTR [r8+24]
        vpbroadcastd    ymm7, DWORD PTR [r8+28]
        vmovdqa YMMWORD PTR [rsp+64], ymm0
        vpbroadcastd    ymm6, DWORD PTR [r8+32]
        vpbroadcastd    ymm5, DWORD PTR [r8+36]
        vpbroadcastd    ymm4, DWORD PTR [r8+40]
        vpbroadcastd    ymm3, DWORD PTR [r8+44]
        vpbroadcastd    ymm2, DWORD PTR [r8+48]
        vpbroadcastd    ymm1, DWORD PTR [r8+52]
.L5:
        vpmulld ymm0, ymm14, YMMWORD PTR [rdi]
        vpaddd  ymm0, ymm0, YMMWORD PTR [rbx]
        vpmulld ymm15, ymm13, YMMWORD PTR [rdi+2048]
        add     rbx, 32
        add     rdi, 32
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm12, YMMWORD PTR [rdi+4064]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm11, YMMWORD PTR [rdi+6112]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm10, YMMWORD PTR [rdi+8160]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm9, YMMWORD PTR [rdi+10208]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm8, YMMWORD PTR [rdi+12256]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm7, YMMWORD PTR [rdi+14304]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm6, YMMWORD PTR [rdi+16352]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm5, YMMWORD PTR [rdi+18400]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm4, YMMWORD PTR [rdi+20448]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm3, YMMWORD PTR [rdi+22496]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm2, YMMWORD PTR [rdi+24544]
        vpaddd  ymm0, ymm15, ymm0
        vpmulld ymm15, ymm1, YMMWORD PTR [rdi+26592]
        vpaddd  ymm0, ymm15, ymm0
        vmovdqa ymm15, YMMWORD PTR [rsp+32]
        vpmulld ymm15, ymm15, YMMWORD PTR [rdi+28640]
        vpaddd  ymm0, ymm15, ymm0
        vmovdqa ymm15, YMMWORD PTR [rsp+64]
        vpmulld ymm15, ymm15, YMMWORD PTR [rdi+30688]
        vpaddd  ymm15, ymm15, ymm0
        vmovdqu YMMWORD PTR [rbx-32], ymm15
        cmp     r15, rbx
        jne     .L5
        add     r8, 2048
        add     r12, 2048
        cmp     r11, r8
        jne     .L8
        add     r9, 16
        mov     rdi, QWORD PTR [rsp]
        add     r13, 64
        add     rdx, 64
        cmp     r9, 512
        jne     .L10
        add     r10d, 16
        mov     r15, QWORD PTR [rsp+8]
        add     r11, 64
        add     rcx, 8192
        cmp     r10d, 513
        jne     .L13
        add     rdi, 32768
        add     rax, 32768
        cmp     esi, 512
        jne     .L11
        lea     rax, [r15+1050624]
        lea     r14, [r15+2048]
        mov     QWORD PTR [rsp+64], rax
        vzeroupper
.L12:
        lea     r13, [r14-2048]
        jmp     .L17
.L34:
        movsx   esi, BYTE PTR [r12+67]
.L16:
        mov     rdi, rbx
        call    std::basic_ostream<char, std::char_traits<char> >::put(char)
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::flush()
        add     r13, 4
        cmp     r14, r13
        je      .L32
.L17:
        mov     esi, DWORD PTR [r13+0]
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     rbx, rax
        mov     rax, QWORD PTR [rax]
        mov     rax, QWORD PTR [rax-24]
        mov     r12, QWORD PTR [rbx+240+rax]
        test    r12, r12
        je      .L33
        cmp     BYTE PTR [r12+56], 0
        jne     .L34
        mov     rdi, r12
        call    std::ctype<char>::_M_widen_init() const
        mov     rax, QWORD PTR [r12]
        mov     esi, 10
        mov     rax, QWORD PTR [rax+48]
        cmp     rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
        je      .L16
        mov     rdi, r12
        call    rax
        movsx   esi, al
        jmp     .L16
.L32:
        add     r14, 2048
        cmp     QWORD PTR [rsp+64], r14
        jne     .L12
        mov     rdi, r15
        call    operator delete[](void*)
        mov     rdi, QWORD PTR [rsp+24]
        call    operator delete[](void*)
        mov     rdi, QWORD PTR [rsp+16]
        call    operator delete[](void*)
        lea     rsp, [rbp-40]
        xor     eax, eax
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.L33:
        call    std::__throw_bad_cast()
        endbr64
        mov     rbx, rax
        jmp     .L19
        endbr64
        mov     rbx, rax
        vzeroupper
        jmp     .L20
        endbr64
        mov     rbx, rax
        vzeroupper
        jmp     .L21
foo() [clone .cold]:
.L19:
        mov     rdi, r15
        vzeroupper
        call    operator delete[](void*)
.L20:
        mov     rdi, QWORD PTR [rsp+24]
        call    operator delete[](void*)
.L21:
        mov     rdi, QWORD PTR [rsp+16]
        call    operator delete[](void*)
        mov     rdi, rbx
        call    _Unwind_Resume
_GLOBAL__sub_I_foo():
        endbr64
        jmp     benchmark::internal::InitializeStreams()