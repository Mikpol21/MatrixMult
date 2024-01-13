#pragma once
#include "util.h"
#include <algorithm>
#include <experimental/simd>

namespace vectorized
{
    namespace stdx = std::experimental;

    template <typename T>
    static constexpr int elemsInSIMD()
    {
        return stdx::native_simd<int>::size() / sizeof(T);
    }

    template <typename T>
    static inline std::array<std::array<T, elemsInCLS<T>()>, elemsInCLS<T>()> transpose(const Matrix<T> &A, const int i, const int j)
    {
        alignas(CLS) std::array<std::array<T, elemsInCLS<T>()>, elemsInCLS<T>()> At;
        static constexpr int size = elemsInCLS<T>();
        for (int jj = j; jj < j + size; jj++)
            for (int ii = i; ii < i + size; ii++)
                At[ii - i][jj - j] = A(jj, ii);
        return At;
    }

    template <typename T>
    static inline void multWithTransposedSubmatrix(const Matrix<T> &A, const std::array<std::array<T, elemsInCLS<T>()>, elemsInCLS<T>()> &BsubT, Matrix<T> &C, const int i, const int j, const int k)
    {
        static constexpr int stride = elemsInCLS<T>();
        static constexpr int size = elemsInSIMD<T>();
        for (int ii = i; ii < i + stride; ii++)
            for (int jj = 0; jj < stride; jj++)
                for (int kk = 0; kk < stride; kk += size)
                {
                    stdx::native_simd<T> a;
                    a.copy_from(A.getData() + A.N * ii + k + kk, stdx::element_aligned);
                    stdx::native_simd<T> b;
                    b.copy_from(&BsubT[jj][kk], stdx::vector_aligned);
                    C(ii, jj + j) += stdx::reduce(a * b);
                }
    }

    template <typename T>
    static inline void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        static constexpr int stride = elemsInCLS<T>();
        for (int j = 0; j < M; j += stride)
            for (int k = 0; k < K; k += stride)
            {
                auto BsubT = transpose<int>(B, k, j);
                for (int i = 0; i < N; i += stride)
                    multWithTransposedSubmatrix(A, BsubT, C, i, j, k);
            }
    }
}