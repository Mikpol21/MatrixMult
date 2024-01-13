#include "util.h"
#include <cassert>

namespace withTranspose
{

    template <typename T>
    static inline void transpose(const Matrix<T> &in, Matrix<T> &out)
    {
        const int N = in.N;
        const int M = in.M;
        static constexpr int stride = elemsInCLS<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int ii = i; ii < i + stride; ii++)
                    for (int jj = j; jj < j + stride; jj++)
                        out(jj, ii) = in(ii, jj);
    }

    template <typename T>
    static inline void transposeInPlace(Matrix<T> &A)
    {
        assert(A.N == A.M);
        const int N = A.N;
        static constexpr int stride = elemsInCLS<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < N; j += stride)
                for (int ii = i; ii < i + stride; ii++)
                    for (int jj = j; jj < j + stride; jj++)
                        A(jj, ii) = A(ii, jj);
    }

    template <typename T>
    static inline void multiplySubmatrix(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C, const int i, const int j, const int k)
    {
        static constexpr int stride = elemsInCLS<T>();
        // multiplying square submatrices of width 64 bytes
        for (int ii = i; ii < i + stride; ii++)
            for (int jj = j; jj < j + stride; jj++)
                for (int kk = k; kk < k + stride; kk++)
                    C(ii, jj) += A(ii, kk) * B(jj, kk);
    }

    template <typename T>
    static inline void multiply(const Matrix<T> &A, const Matrix<T> &B, Matrix<T> &C)
    {
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        static constexpr int stride = elemsInCLS<T>();
        Matrix<T> Bt(K, M);
        transpose(B, Bt);
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    multiplySubmatrix<T>(A, Bt, C, i, j, k);
    }

    template <typename T>
    static inline void multiplyWithTransposeOpt(const Matrix<T> &A, Matrix<T> &B, Matrix<T> &C)
    {
        assert(B.N == B.M);
        const int N = A.N;
        const int K = A.M;
        const int M = B.M;
        transposeInPlace(B);
        static constexpr int stride = elemsInCLS<T>();
        for (int i = 0; i < N; i += stride)
            for (int j = 0; j < M; j += stride)
                for (int k = 0; k < K; k += stride)
                    multiplySubmatrix<T>(A, B, C, i, j, k);
    }
} // namespace withTranspose