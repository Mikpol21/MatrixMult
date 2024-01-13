#include "util.h"
#include <immintrin.h>

namespace drepper
{

    inline void multiplySubmatrix(const Matrix<float> &A, const Matrix<float> &B, Matrix<float> &C, const int i, const int j, const int k)
    {
        static constexpr int stride = elemsInCLS<float>();
        constexpr int simdSize = 256 / sizeof(float);
        // multiplying square submatrices of width 64 bytes
        for (int ii = i; ii < i + stride; ii++)
            for (int kk = k; kk < k + stride; kk++)
            {
                __m256 a = _mm256_broadcast_ss(&A(ii, kk));
                for (int jj = j; jj < j + stride; jj += simdSize)
                {
                    __m256 b = _mm256_load_ps(&B(kk, jj));
                    __m256 c = _mm256_load_ps(&C(ii, jj));
                    c = _mm256_fmadd_ps(a, b, c);
                    _mm256_store_ps(&C(ii, jj), c);
                }
            }
    }

    inline void multiply(const Matrix<float> &A, const Matrix<float> &B, Matrix<float> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        static constexpr int stride = elemsInCLS<float>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    multiplySubmatrix(A, B, C, i, j, k);
    }

}