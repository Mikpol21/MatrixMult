#pragma once
#include "util.h"
#include <algorithm>
#ifndef loopImpl
#define loopImpl 0
#endif

/*
    ------------------------------------------------------------------------
    Cache-friendly matrix multiplication by dividing the matrix into blocks
    of size CLS (cache line size) and multiplying the blocks. Assummes that
    the matrix shape is a multiple of elemsInCLS<T>().
    ------------------------------------------------------------------------
*/

namespace cacheBlocks
{

#if loopImpl == 0
    template <typename T>
    static inline void multiplySubmatrix(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C, const int i, const int j, const int k)
    {
        static constexpr int stride = elemsInCLS<T>();
        // multiplying square submatrices of width 64 bytes
        for (int ii = i; ii < i + stride; ii++)
            for (int jj = j; jj < j + stride; jj++)
                for (int kk = k; kk < k + stride; kk++)
                    C(ii, jj) += A(ii, kk) * B(kk, jj);
    }


    template <typename T>
    static inline void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        static constexpr int stride = elemsInCLS<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    multiplySubmatrix<T>(A, B, C, i, j, k);
    }
#else
    template <typename T>
    static void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        static constexpr int stride = elemsInCLS<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    for (int ii = i; ii < i + stride; ii++)
                        for (int jj = j; jj < j + stride; jj++)
                            for (int kk = k; kk < k + stride; kk++)
                                C(ii, jj) += A(ii, kk) * B(kk, jj);
    }
#endif
}