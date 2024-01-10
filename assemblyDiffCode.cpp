#include "cacheBlocks.h"
#include <iostream>

int main()
{
    Matrix<int> A(512, 512);
    Matrix<int> B(512, 512);
    Matrix<int> C(512, 512);
    randomFill(A);
    randomFill(B);
#if loopImpl == 1
    std::cout << "loopImpl\n";
    cacheBlocks::multiply2(A, B, C);
#else
    std::cout << "withoutLoops\n";
    cacheBlocks::multiply(A, B, C);
#endif
    std::cout << "C(0, 0) = " << C(0, 0) << "\n";

    return 0;
}