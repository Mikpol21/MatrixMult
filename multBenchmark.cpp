#include "benchmark/benchmark.h"
#include "util.h"
#include "defaultImpl.h"
#include "cacheBlocks.h"
#include "withTranspose.h"
#include "vectorized.h"
#include "drepper.h"

constexpr int N = 512;
constexpr int K = 512;
constexpr int M = 512;

template <typename T>
using multiplySignature = void (*)(const Matrix<T> &, const Matrix<T> &, Matrix<T> &);

template <const int N, const int K, const int M, typename T>
static void multiplyMatricesBenchmark(benchmark::State &state, multiplySignature<T> multiply)
{
    Matrix<T> A(N, K);
    Matrix<T> B(K, M);
    Matrix<T> C(N, M);

    for (auto _ : state)
    {
        multiply(A, B, C);
    }
}

static void BM_DefaultImpl(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, int>(state, defaultImpl::multiply<int>);
}
BENCHMARK(BM_DefaultImpl);

static void BM_CacheBlocks(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, int>(state, cacheBlocks::multiply<int>);
}
BENCHMARK(BM_CacheBlocks);

static void BM_WithTranspose(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, int>(state, withTranspose::multiply<int>);
}
BENCHMARK(BM_WithTranspose);

static void BM_withInPlaceTranspose(benchmark::State &state)
{
    Matrix<int> A(N, K);
    Matrix<int> B(K, M);
    Matrix<int> C(N, M);

    for (auto _ : state)
    {
        withTranspose::multiplyWithTransposeOpt(A, B, C);
    }
}
BENCHMARK(BM_withInPlaceTranspose);

static void BM_drepper(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, float>(state, drepper::multiply);
}
BENCHMARK(BM_drepper);

static void BM_Vectorized(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, int>(state, vectorized::multiply<int>);
}
BENCHMARK(BM_Vectorized);

BENCHMARK_MAIN();