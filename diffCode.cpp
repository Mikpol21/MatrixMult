
#include <iostream>

#include "util.h"
#include "defaultImpl.h"
#include "cacheBlocks.h"
#include "withTranspose.h"
#include "vectorized.h"

#ifndef IMPLEMENTATION
#define IMPLEMENTATION cacheBlocks
#endif

int main()
{
    Matrix<int> A(1024, 1024);
    Matrix<int> B(1024, 1024);
    Matrix<int> C(1024, 1024);
    randomFill(A);
    randomFill(B);
    IMPLEMENTATION::multiply(A, B, C);

    int randI = rand() % 1024;
    int randJ = rand() % 1024;
    std::cout << C(randI, randJ) << std::endl;
    return 0;
}