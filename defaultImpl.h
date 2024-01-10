#pragma once

#include "util.h"

namespace defaultImpl
{
    template <typename T>
    void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        for (int i = 0; i < N; i++)
            for (int j = 0; j < M; j++)
                for (int k = 0; k < K; k++)
                    C(i, j) += A(i, k) * B(k, j);
    }
}