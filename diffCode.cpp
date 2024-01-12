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
    cacheBlocks::multiply2(A, B, C);
#else
    cacheBlocks::multiply(A, B, C);
#endif

    int randI = rand() % 512;
    int randJ = rand() % 512;
    std::cout << C(randI, randJ) << std::endl;
    return 0;
}