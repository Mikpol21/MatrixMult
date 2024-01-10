#pragma once

#include "util.h"
#include <algorithm>

namespace cacheBlocks
{

    template <typename T>
    constexpr int subMatrixSize()
    {
        return std::max(static_cast<long unsigned int>(1), CLS / sizeof(T));
    }

    template <typename T>
    void multiplySubmatrix(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C, const int i, const int j, const int k)
    {
        // multiplying submatrices A[i..i+subMatrixSize][k..k+subMatrixSize] and B[k..k+subMatrixSize][j..j+subMatrixSize]
        for (int ii = i; ii < i + subMatrixSize<T>(); ii++)
            for (int jj = j; jj < j + subMatrixSize<T>(); jj++)
                for (int kk = k; kk < k + subMatrixSize<T>(); kk++)
                    C(ii, jj) += A(ii, kk) * B(kk, jj);
    }

    template <typename T>
    void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        constexpr int stride = subMatrixSize<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    multiplySubmatrix<T>(A, B, C, i, j, k);
    }

    template <typename T>
    void multiply2(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        constexpr int stride = std::max(static_cast<long unsigned int>(1), CLS / sizeof(T));
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    for (int ii = i; ii < i + stride; ii++)
                        for (int jj = j; jj < j + stride; jj++)
                            for (int kk = k; kk < k + stride; kk++)
                                C(ii, jj) += A(ii, kk) * B(kk, jj);
    }
}