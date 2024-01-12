#include <benchmark/benchmark.h>
#include "util.h"
#include "defaultImpl.h"
#include "cacheBlocks.h"

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

static void BM_CacheBlocksSimpleLoops(benchmark::State &state)
{
    multiplyMatricesBenchmark<N, K, M, int>(state, cacheBlocks::multiply2<int>);
}
BENCHMARK(BM_CacheBlocksSimpleLoops);

BENCHMARK_MAIN();