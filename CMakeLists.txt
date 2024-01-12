cmake_minimum_required(VERSION 3.10)
project(MatrixMult)

set(CMAKE_CXX_STANDARD 17)

execute_process(
    COMMAND getconf LEVEL1_DCACHE_LINESIZE
    OUTPUT_VARIABLE CACHE_LINE_SIZE
    OUTPUT_STRIP_TRAILING_WHITESPACE
) 

# Set common compilation flags
set(COMMON_FLAGS -O3 -march=native -DCLS=${CACHE_LINE_SIZE})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall --std=c++11 -O3 -fPIC")

# Dummy executable targets (replace with your actual targets)
add_executable(withLoops diffCode.cpp)
add_executable(withoutLoops diffCode.cpp)
add_executable(benchmarkWithLoops multBenchmark.cpp)
add_executable(benchmarkWithoutLoops multBenchmark.cpp)

find_package(benchmark REQUIRED)

# Set compiler flags for withLoops target
target_compile_options(withLoops PRIVATE -g ${COMMON_FLAGS} -DloopImpl=1)

# Set compiler flags for withoutLoops target
target_compile_options(withoutLoops PRIVATE -g ${COMMON_FLAGS} -DloopImpl=0)

# Set compiler flags for multBenchmark target

target_compile_options(benchmarkWithLoops PRIVATE ${COMMON_FLAGS} -DloopImpl=1)

target_compile_options(benchmarkWithoutLoops PRIVATE ${COMMON_FLAGS} -DloopImpl=0)

target_link_libraries(benchmarkWithLoops PRIVATE benchmark::benchmark)
target_link_libraries(benchmarkWithoutLoops PRIVATE benchmark::benchmark)


# Add custom target to display compilation completion message
add_custom_target(compilation_complete
    COMMAND ${CMAKE_COMMAND} -E echo "Compilation completed"
    COMMAND ${CMAKE_COMMAND} -E echo "Running additional compilation steps..."
    COMMAND g++ --version
    COMMAND g++ -g ${COMMON_FLAGS} -S -DloopImpl=1 ${CMAKE_CURRENT_SOURCE_DIR}/diffCode.cpp -o ${CMAKE_BINARY_DIR}/withLoops.s
    COMMAND g++ -g ${COMMON_FLAGS} -S -DloopImpl=0 ${CMAKE_CURRENT_SOURCE_DIR}/diffCode.cpp -o ${CMAKE_BINARY_DIR}/withoutLoops.s
    COMMAND ${CMAKE_COMMAND} -E echo "Additional compilation steps completed"
    DEPENDS withLoops withoutLoops multBenchmark
    COMMENT "Compiling with and without loops, and multBenchmark"
)

# Dummy target for convenience during development
add_custom_target(run_all
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target compilation_complete
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Build and run all targets"
)
