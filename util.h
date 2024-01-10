#pragma once
#include <array>
#include <iostream>

template <typename T>
struct Matrix
{
    const int N;
    const int M;

private:
    T *data;

public:
    Matrix(const int N, const int M) : data(new T[N * M]), N(N), M(M) {}

    ~Matrix()
    {
        delete[] data;
    }

    Matrix(const Matrix<T> &other) = delete;
    Matrix<T> &operator=(const Matrix<T> &other) = delete;

    Matrix(Matrix<T> &&other) : data(other.data), N(other.N), M(other.M)
    {
        other.data = nullptr;
    }

    Matrix<T> &operator=(Matrix<T> &&other)
    {
        data = other.data;
        N = other.N;
        M = other.M;
        other.data = nullptr;
        return *this;
    }

    inline const T &operator()(const int i, const int j) const
    {
        return data[i * M + j];
    }

    inline T &operator()(const int i, const int j)
    {
        return data[i * M + j];
    }
};

void randomFill(Matrix<int> &A)
{
    for (int i = 0; i < A.N; i++)
        for (int j = 0; j < A.M; j++)
            A(i, j) = rand();
}

template <typename T>
void printMatrix(Matrix<T> &A)
{
    for (int i = 0; i < A.N; i++)
    {
        for (int j = 0; j < A.M; j++)
            std::cout << A(i, j) << "\t";
        std::cout << "\n";
    }
}